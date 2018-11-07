package pr19.fbo.app.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "booking")
public class BookingController {

  @RequestMapping(value = "displaySearch")
  public String displaySearchBooking() {
    return "homepage/home";
  }
}
