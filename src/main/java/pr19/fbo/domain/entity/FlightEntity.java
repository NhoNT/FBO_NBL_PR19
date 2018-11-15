package pr19.fbo.domain.entity;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "flight")
public class FlightEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int flightId;
  private String flightCode;
  private LocalDateTime departureTime;
  private LocalDateTime arriveTime;
  private double price;
  @ManyToOne
  @JoinColumn(name = "routeId")
  private RouteEntity route;
  @ManyToOne
  @JoinColumn(name = "aircraftId")
  private AircraftEntity aircraft;
  @OneToMany(mappedBy = "flight", fetch = FetchType.EAGER)
  private List<TicketEntity> ticketList;

  public FlightEntity() {
  }

  public int getFlightId() {
    return flightId;
  }

  public void setFlightId(int flightId) {
    this.flightId = flightId;
  }

  public String getFlightCode() {
    return flightCode;
  }

  public void setFlightCode(String flightCode) {
    this.flightCode = flightCode;
  }

  public LocalDateTime getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(LocalDateTime departureTime) {
    this.departureTime = departureTime;
  }

  public LocalDateTime getArriveTime() {
    return arriveTime;
  }

  public void setArriveTime(LocalDateTime arriveTime) {
    this.arriveTime = arriveTime;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public RouteEntity getRoute() {
    return route;
  }

  public void setRoute(RouteEntity route) {
    this.route = route;
  }

  public AircraftEntity getAircraft() {
    return aircraft;
  }

  public void setAircraft(AircraftEntity aircraft) {
    this.aircraft = aircraft;
  }

  public List<TicketEntity> getTicketList() {
    return ticketList;
  }

  public void setTicketList(List<TicketEntity> ticketList) {
    this.ticketList = ticketList;
  }

}
