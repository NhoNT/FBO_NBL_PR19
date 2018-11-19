package pr19.fbo.app.booking;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pr19.fbo.domain.entity.FlightEntity;
import pr19.fbo.domain.service.booking.BookingService;

@Controller
@RequestMapping(value = "booking")
public class BookingController {

  @Autowired
  private BookingService bookingService;

  @RequestMapping(value = "test")
  public String bookingTest(Model model) {
    return "booking/select-flight1";
  }

  @RequestMapping(value = "displaySearch")
  public String displaySearchBooking(Model model, BookingInputForm bookingInputForm) {
    model.addAttribute("airports", bookingService.getAllAirports());
    model.addAttribute("bookingInputForm", bookingInputForm);
    return "homepage/home";
  }

  @RequestMapping(value = "displaySearch1")
  public String displaySearchBooking1(Model model, BookingInputForm bookingInputForm) {
    model.addAttribute("airports", bookingService.getAllAirports());
    bookingInputForm.setAdultNumber("2");
    model.addAttribute("bookingInputForm", bookingInputForm);
    return "booking/displaySearch";
  }

  @RequestMapping(value = "processSearch", method = RequestMethod.GET)
  public String processSearchBooking(Model model, BookingInputForm bookingInputForm) {
    System.out.println("processSearchBooking");
    System.out.println(bookingInputForm.getDepartureAirportCode());
    System.out.println(bookingInputForm.getArriveAirportCode());
    System.out.println(bookingInputForm.getDepartureDate());
    System.out.println(bookingInputForm.getDepartureDate().toString());
    // For test "DN01", "HN01", "2018-11-22"
//    model.addAttribute("airports", bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate()));
    return "booking/select-flight";
  }

  @RequestMapping(value = "processSearch1")
  public String processSearchBooking1(Model model, BookingInputForm bookingInputForm) {
    SelectFlightOutputForm selectFlightOutputForm = new SelectFlightOutputForm();

//    FlightSuggested flightSuggested1 = new FlightSuggested();
//    flightSuggested1.setFlightId(1);
//    flightSuggested1.setDepart("25/11 06:30");
//    flightSuggested1.setArrive("25/11 07:55");
//    flightSuggested1.setBusinessPrice("from 545 VND");
//    flightSuggested1.setEconomyPrice("from 354 VND");
//    flightSuggested1.setFlightDetail("VJ154");
//
//    FlightSuggested flightSuggested2 = new FlightSuggested();
//    flightSuggested2.setFlightId(2);
//    flightSuggested2.setDepart("27/11 16:30");
//    flightSuggested2.setArrive("27/11 18:55");
//    flightSuggested2.setBusinessPrice("from 545 VND");
//    flightSuggested2.setEconomyPrice("from 354 VND");
//    flightSuggested2.setFlightDetail("VN65");
    List<FlightSuggested> flightSuggesteds = new ArrayList<>();
    //    flightSuggesteds.add(flightSuggested1);
    //    flightSuggesteds.add(flightSuggested2);

    List<FlightEntity> flightEntitys = new ArrayList<>();

    if (Integer.parseInt(bookingInputForm.getClassOfChair()) == 2) {  // Economy
      flightEntitys = bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate().toString(), Integer.parseInt(bookingInputForm.getAdultNumber() + bookingInputForm.getChildrenNumber()), 0);
    } else { // Business
      flightEntitys = bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate().toString(), 0, Integer.parseInt(bookingInputForm.getAdultNumber() + bookingInputForm.getChildrenNumber()));
    }

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM HH:mm");
    for (FlightEntity flightEntity : flightEntitys) {
      FlightSuggested flightSuggested = new FlightSuggested();
      flightSuggested.setFlightId(flightEntity.getFlightId());
      flightSuggested.setDepart(flightEntity.getDepartureTime().format(formatter));
      flightSuggested.setArrive(flightEntity.getArriveTime().format(formatter));
      flightSuggested.setBusinessPrice("from " + flightEntity.getPrice() * 1.2 + " VND");
      flightSuggested.setEconomyPrice("from " + flightEntity.getPrice() + " VND");
      flightSuggested.setFlightDetail(flightEntity.getAircraft().getAircraftCode());
      flightSuggesteds.add(flightSuggested);
    }

    selectFlightOutputForm.setFlightSuggesteds(flightSuggesteds);

    model.addAttribute("selectFlightOutputForm", selectFlightOutputForm);
    return "booking/select-flight1";
  }
}
