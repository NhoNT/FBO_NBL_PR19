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
    return "booking/search";
  }

  @RequestMapping(value = "processSearch")
  public String processSearchBooking(Model model) {
    return "booking/select-filght";
  }
}
