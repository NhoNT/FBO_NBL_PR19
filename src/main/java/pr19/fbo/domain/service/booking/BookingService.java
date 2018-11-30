package pr19.fbo.domain.service.booking;

import java.util.List;
import pr19.fbo.domain.entity.AirportEntity;
import pr19.fbo.domain.entity.CustomerEntity;
import pr19.fbo.domain.entity.FlightEntity;
import pr19.fbo.domain.entity.OrdersEntity;
import pr19.fbo.domain.entity.TicketEntity;

public interface BookingService {

  public List<AirportEntity> getAllAirports();

  public AirportEntity getAirportByCode(String airportCode);

  public List<FlightEntity> getAllFlights();

  public List<FlightEntity> getFlightsByRoute();

  public List<FlightEntity> getFlightsForBooking(String departureAirportCode, String arriveAirportCode, String departureDate, int quantityEconomy, int quantityBusiness);

  public FlightEntity getFlightById(int flightId);

  public boolean saveTicketList(List<TicketEntity> ticketList);

  public OrdersEntity saveOrders(OrdersEntity orders);

  public CustomerEntity getCustomerById(int customerId);
}
