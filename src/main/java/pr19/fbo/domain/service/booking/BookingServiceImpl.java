package pr19.fbo.domain.service.booking;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pr19.fbo.domain.entity.AirportEntity;
import pr19.fbo.domain.entity.FlightEntity;
import pr19.fbo.domain.repository.AirportRepository;
import pr19.fbo.domain.repository.FlightRepository;

@Service
public class BookingServiceImpl implements BookingService {

  @Autowired
  AirportRepository airportRepository;

  @Autowired
  FlightRepository flightRepository;

  @Override
  public List<AirportEntity> getAllAirports() {
    List<AirportEntity> airportEntitys = (List<AirportEntity>) airportRepository.findAll();
    for (AirportEntity airportEntity : airportEntitys) {
      System.out.println(airportEntity.getLocation());
    }
    return airportEntitys;
  }

  @Override
  public List<FlightEntity> getAllFlights() {
    List<FlightEntity> flightList = (List<FlightEntity>) flightRepository.findAll();
    for (FlightEntity flightEntity : flightList) {
      System.out.println(flightEntity.getRoute().getDepartureAirport().getLocation() + " - " + flightEntity.getRoute().getArriveAirport().getLocation());
    }
    return flightList;
  }

  @Override
  public List<FlightEntity> getFlightsByRoute() {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
  }

  @Override
  public List<FlightEntity> getFlightsForBooking(String departureAirportCode, String arriveAirportCode, String departureDate, int quantityEconomy, int quantityBusiness) {
    List<FlightEntity> flightList = (List<FlightEntity>) flightRepository.findFlights(departureAirportCode, arriveAirportCode, departureDate, quantityEconomy, quantityBusiness);
    for (FlightEntity flightEntity : flightList) {
      System.out.println(flightEntity.getRoute().getDepartureAirport().getLocation() + " - " + flightEntity.getRoute().getArriveAirport().getLocation());
      System.out.println("Business: " + flightEntity.getAircraft().getQuantityBusiness() + " - " + "Economy: " + flightEntity.getAircraft().getQuantityEconomy());
      System.out.println("Number of ticket booked: " + flightEntity.getTicketList().size());
    }
    return flightList;
  }

  @Override
  public AirportEntity getAirportByCode(String airportCode) {
    return airportRepository.findByAirportCode(airportCode);
  }
}
