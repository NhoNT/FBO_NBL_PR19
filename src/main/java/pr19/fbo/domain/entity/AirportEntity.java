package pr19.fbo.domain.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "airport")
public class AirportEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int airportId;
  private String airportCode;
  private String location;

  public AirportEntity() {
  }

  public int getAirportId() {
    return airportId;
  }

  public void setAirportId(int airportId) {
    this.airportId = airportId;
  }

  public String getAirportCode() {
    return airportCode;
  }

  public void setAirportCode(String airportCode) {
    this.airportCode = airportCode;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

}
