package pr19.fbo.domain.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
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
@Table(name = "route")
public class RouteEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int routeId;

  private String routeCode;

  @ManyToOne
  @JoinColumn(name = "departureAirportId")
  private AirportEntity departureAirport;

  @ManyToOne
  @JoinColumn(name = "arriveAirportId")
  private AirportEntity arriveAirport;

  @OneToMany(mappedBy = "aircraft", fetch = FetchType.EAGER)
  private List<FlightEntity> flightList;

  public RouteEntity() {
  }

  public int getRouteId() {
    return routeId;
  }

  public void setRouteId(int routeId) {
    this.routeId = routeId;
  }

  public String getRouteCode() {
    return routeCode;
  }

  public void setRouteCode(String routeCode) {
    this.routeCode = routeCode;
  }

  public AirportEntity getDepartureAirport() {
    return departureAirport;
  }

  public void setDepartureAirport(AirportEntity departureAirport) {
    this.departureAirport = departureAirport;
  }

  public AirportEntity getArriveAirport() {
    return arriveAirport;
  }

  public void setArriveAirport(AirportEntity arriveAirport) {
    this.arriveAirport = arriveAirport;
  }

  public List<FlightEntity> getFlightList() {
    return flightList;
  }

  public void setFlightList(List<FlightEntity> flightList) {
    this.flightList = flightList;
  }

}
