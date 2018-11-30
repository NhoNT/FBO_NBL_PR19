package pr19.fbo.app.booking;

public class FlightSuggested {

  private int flightId;
  private String depart;
  private String arrive;
  private String aircraft;
  private String economyPrice;
  private String businessPrice;

  public FlightSuggested() {
  }

  public String getDepart() {
    return depart;
  }

  public void setDepart(String depart) {
    this.depart = depart;
  }

  public String getArrive() {
    return arrive;
  }

  public void setArrive(String arrive) {
    this.arrive = arrive;
  }

  public String getAircraft() {
    return aircraft;
  }

  public void setAircraft(String aircraft) {
    this.aircraft = aircraft;
  }

  public String getEconomyPrice() {
    return economyPrice;
  }

  public void setEconomyPrice(String economyPrice) {
    this.economyPrice = economyPrice;
  }

  public String getBusinessPrice() {
    return businessPrice;
  }

  public void setBusinessPrice(String businessPrice) {
    this.businessPrice = businessPrice;
  }

  public int getFlightId() {
    return flightId;
  }

  public void setFlightId(int flightId) {
    this.flightId = flightId;
  }

}
