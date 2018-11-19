package pr19.fbo.domain.service.booking;

import java.util.List;
import pr19.fbo.domain.entity.AirportEntity;
import pr19.fbo.domain.entity.FlightEntity;

public interface BookingService {

  public List<AirportEntity> getAllAirports();

  public List<FlightEntity> getAllFlights();

  public List<FlightEntity> getFlightsByRoute();

  public List<FlightEntity> getFlightsForBooking(String departureAirportCode, String arriveAirportCode, String departureDate, int quantityEconomy, int quantityBusiness);

}
