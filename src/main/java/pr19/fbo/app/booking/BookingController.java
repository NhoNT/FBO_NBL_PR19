package pr19.fbo.app.booking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pr19.fbo.domain.service.booking.BookingService;

@Controller
@RequestMapping(value = "booking")
public class BookingController {

  @Autowired
  private BookingService bookingService;

  @RequestMapping(value = "displaySearch")
  public String displaySearchBooking(Model model) {
    model.addAttribute("airports", bookingService.getAllAirports());
    return "homepage/home";
  }

  @RequestMapping(value = "displaySearch1")
  public String displaySearchBooking1(Model model, BookingInputForm bookingInputForm) {
    model.addAttribute("airports", bookingService.getAllAirports());
    bookingInputForm.setAdultNumber("2");
    model.addAttribute("bookingInputForm", bookingInputForm);
    return "booking/displaySearch";
  }

  @RequestMapping(value = "processSearch")
  public String processSearchBooking(Model model, BookingInputForm bookingInputForm) {
    System.out.println(bookingInputForm.getDepartureAirportCode());
    System.out.println(bookingInputForm.getArriveAirportCode());
    System.out.println(bookingInputForm.getDepartureDate());
    // For test "DN01", "HN01", "2018-11-22"
    model.addAttribute("airports", bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate()));
    return "booking/select-filght";
  }
}
