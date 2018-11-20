package pr19.fbo.app.booking;

import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;

public class BookingInputForm {

  private String departureAirportCode;
  private String arriveAirportCode;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate departureDate;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate returnDate;
  private String ClassOfChair;
  private String AdultNumber;
  private String ChildrenNumber;
  private String roundTrip;

  public BookingInputForm() {
  }

  public String getDepartureAirportCode() {
    return departureAirportCode;
  }

  public void setDepartureAirportCode(String departureAirportCode) {
    this.departureAirportCode = departureAirportCode;
  }

  public String getArriveAirportCode() {
    return arriveAirportCode;
  }

  public void setArriveAirportCode(String arriveAirportCode) {
    this.arriveAirportCode = arriveAirportCode;
  }

  public LocalDate getDepartureDate() {
    return departureDate;
  }

  public void setDepartureDate(LocalDate departureDate) {
    this.departureDate = departureDate;
  }

  public LocalDate getReturnDate() {
    return returnDate;
  }

  public void setReturnDate(LocalDate returnDate) {
    this.returnDate = returnDate;
  }

  public String getClassOfChair() {
    return ClassOfChair;
  }

  public void setClassOfChair(String ClassOfChair) {
    this.ClassOfChair = ClassOfChair;
  }

  public String getAdultNumber() {
    return AdultNumber;
  }

  public void setAdultNumber(String AdultNumber) {
    this.AdultNumber = AdultNumber;
  }

  public String getChildrenNumber() {
    return ChildrenNumber;
  }

  public void setChildrenNumber(String ChildrenNumber) {
    this.ChildrenNumber = ChildrenNumber;
  }

  public String getRoundTrip() {
    return roundTrip;
  }

  public void setRoundTrip(String roundTrip) {
    this.roundTrip = roundTrip;
  }

}
