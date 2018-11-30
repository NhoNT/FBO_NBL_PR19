package pr19.fbo.domain.service.booking;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pr19.fbo.domain.entity.AirportEntity;
import pr19.fbo.domain.entity.CustomerEntity;
import pr19.fbo.domain.entity.FlightEntity;
import pr19.fbo.domain.entity.OrdersEntity;
import pr19.fbo.domain.entity.TicketEntity;
import pr19.fbo.domain.repository.AirportRepository;
import pr19.fbo.domain.repository.CustomerRepository;
import pr19.fbo.domain.repository.FlightRepository;
import pr19.fbo.domain.repository.OrdersRepository;
import pr19.fbo.domain.repository.TicketRepository;

@Service
public class BookingServiceImpl implements BookingService {
  
  @Autowired
  AirportRepository airportRepository;
  
  @Autowired
  FlightRepository flightRepository;
  
  @Autowired
  TicketRepository ticketRepository;
  
  @Autowired
  OrdersRepository ordersRepository;
  
  @Autowired
  CustomerRepository customerRepository;
  
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
  
  @Override
  public boolean saveTicketList(List<TicketEntity> ticketList) {
    for (TicketEntity ticket : ticketList) {
      if (ticketRepository.save(ticket) == null) {
        return false;
      }
    }
    return true;
  }
  
  @Override
  public FlightEntity getFlightById(int flightId) {
    return flightRepository.findOne(flightId);
  }
  
  @Override
  public OrdersEntity saveOrders(OrdersEntity orders) {
    return ordersRepository.save(orders);
  }
  
  @Override
  public CustomerEntity getCustomerById(int customerId) {
    return customerRepository.findOne(customerId);
  }
}
