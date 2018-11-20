package pr19.fbo.app.booking;

import java.util.List;
import java.util.ArrayList;

public class SelectFlightOutputForm {

  private List<FlightSuggested> flightSuggesteds = new ArrayList<>();
  private Long totalCount;
  private String departAirport;
  private String arriveAirport;

  public SelectFlightOutputForm() {
  }

  public List<FlightSuggested> getFlightSuggesteds() {
    return flightSuggesteds;
  }

  public void setFlightSuggesteds(List<FlightSuggested> flightSuggesteds) {
    this.flightSuggesteds = flightSuggesteds;
  }

  public Long getTotalCount() {
    return totalCount;
  }

  public void setTotalCount(Long totalCount) {
    this.totalCount = totalCount;
  }

  public String getDepartAirport() {
    return departAirport;
  }

  public void setDepartAirport(String departAirport) {
    this.departAirport = departAirport;
  }

  public String getArriveAirport() {
    return arriveAirport;
  }

  public void setArriveAirport(String arriveAirport) {
    this.arriveAirport = arriveAirport;
  }

}
