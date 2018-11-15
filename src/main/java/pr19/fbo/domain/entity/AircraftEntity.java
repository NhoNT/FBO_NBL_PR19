package pr19.fbo.domain.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "aircraft")
public class AircraftEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int aircraftId;
  private String aircraftCode;
  private String manufacturer;
  private int quantityEconomy;
  private int quantityBusiness;

  @OneToMany(mappedBy = "aircraft", fetch = FetchType.EAGER)
  private List<FlightEntity> flightList;

  public AircraftEntity() {
  }

  public int getAircraftId() {
    return aircraftId;
  }

  public void setAircraftId(int aircraftId) {
    this.aircraftId = aircraftId;
  }

  public String getAircraftCode() {
    return aircraftCode;
  }

  public void setAircraftCode(String aircraftCode) {
    this.aircraftCode = aircraftCode;
  }

  public String getManufacturer() {
    return manufacturer;
  }

  public void setManufacturer(String manufacturer) {
    this.manufacturer = manufacturer;
  }

  public int getQuantityEconomy() {
    return quantityEconomy;
  }

  public void setQuantityEconomy(int quantityEconomy) {
    this.quantityEconomy = quantityEconomy;
  }

  public int getQuantityBusiness() {
    return quantityBusiness;
  }

  public void setQuantityBusiness(int quantityBusiness) {
    this.quantityBusiness = quantityBusiness;
  }

  public List<FlightEntity> getFlightList() {
    return flightList;
  }

  public void setFlightList(List<FlightEntity> flightList) {
    this.flightList = flightList;
  }

}
