package pr19.fbo.domain.repository;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import pr19.fbo.domain.entity.FlightEntity;

public interface FlightRepository extends CrudRepository<FlightEntity, Integer> {

  @Query(value = "SELECT * FROM flight", nativeQuery = true)
  List<FlightEntity> findAllFlightsJPQLNative();

  @Query(value = "SELECT *\n"
          + "FROM flight\n"
          + "INNER JOIN aircraft ON flight.aircraftId = aircraft.aircraftId\n"
          + "INNER JOIN route ON flight.routeId = route.routeId\n"
          + "WHERE (((flight.routeId IN\n"
          + "           (SELECT routeId\n"
          + "            FROM route\n"
          + "            JOIN Airport AS departureAirport ON route.departureAirportId = departureAirport.airportId\n"
          + "            JOIN Airport AS arriveAirport ON route.arriveAirportId = arriveAirport.airportId\n"
          + "            WHERE ((departureAirport.airportCode = ?1)\n"
          + "                   AND (arriveAirport.airportCode = ?2))))\n"
          + "        AND (date(flight.departureTime)=?3))\n"
          + "       AND (\n"
          + "              (SELECT quantityEconomy\n"
          + "               FROM aircraft\n"
          + "               WHERE (aircraft.aircraftId = flight.aircraftId))-\n"
          + "              (SELECT COUNT(*)\n"
          + "               FROM ticket\n"
          + "               WHERE (chairId = 2)\n"
          + "                 AND (ticket.flightId = flight.flightId)) >= ?4)\n"
          + "       AND (\n"
          + "              (SELECT quantityBusiness\n"
          + "               FROM aircraft\n"
          + "               WHERE (aircraft.aircraftId = flight.aircraftId))-\n"
          + "              (SELECT COUNT(*)\n"
          + "               FROM ticket\n"
          + "               WHERE (chairId = 1)\n"
          + "                 AND (ticket.flightId = flight.flightId)) >= ?5))\n"
          + "", nativeQuery = true)
  List<FlightEntity> findFlights(String departureAirportCode, String arriveAirportCode, String departureDate, int quantityEconomy, int quantityBusiness);

  @Query(value = "SELECT *\n"
          + "FROM flight\n"
          + "INNER JOIN aircraft ON flight.aircraftId = aircraft.aircraftId\n"
          + "INNER JOIN route ON flight.routeId = route.routeId\n"
          + "WHERE (flight.routeId IN\n"
          + "         (SELECT routeId\n"
          + "          FROM route\n"
          + "          WHERE (departureAirportId IN\n"
          + "                   (SELECT airportId\n"
          + "                    FROM airport\n"
          + "                    WHERE (airportCode = ?1)))\n"
          + "            AND (arriveAirportId IN\n"
          + "                   (SELECT airportId\n"
          + "                    FROM airport\n"
          + "                    WHERE (airportCode = ?2)))))\n"
          + "  AND (DATE(flight.departureTime) = ?3)", nativeQuery = true)
  List<FlightEntity> findFlights1(String departureAirportCode, String arriveAirportCode, String departureDate);
}
