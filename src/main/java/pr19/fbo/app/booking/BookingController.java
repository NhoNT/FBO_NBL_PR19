package pr19.fbo.app.booking;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import pr19.fbo.domain.entity.FlightEntity;
import pr19.fbo.domain.entity.OrdersEntity;
import pr19.fbo.domain.entity.TicketEntity;
import pr19.fbo.domain.service.booking.BookingService;

@Controller
@SessionAttributes(value = {"bookingInputForm"})
@RequestMapping(value = "booking")
public class BookingController {

  @Autowired
  private BookingService bookingService;

  @RequestMapping(value = "test")
  public String bookingTest(Model model, BookingInputForm bookingInputForm) {
    return "booking/passenger-info1";
  }

  @RequestMapping(value = "displayPassengerForm")
  public String displayPassengerForm(Model model, BookingInputForm bookingInputForm, HttpServletRequest req) {
    List<TicketEntity> ticketList = new ArrayList<>();
    TicketEntity ticket;

    for (int i = 0; i < Integer.parseInt(bookingInputForm.getAdultNumber()); i++) {
      ticket = new TicketEntity();
      ticket.setFlight(bookingService.getFlightById(Integer.parseInt(req.getParameter("flightId"))));
      ticket.setChairId(Integer.parseInt(bookingInputForm.getClassOfChair()));
      ticket.setPersonId(1);
      ticketList.add(ticket);
    }
    for (int i = 0; i < Integer.parseInt(bookingInputForm.getChildrenNumber()); i++) {
      ticket = new TicketEntity();
      ticket.setFlight(bookingService.getFlightById(Integer.parseInt(req.getParameter("flightId"))));
      ticket.setChairId(Integer.parseInt(bookingInputForm.getClassOfChair()));
      ticket.setPersonId(2);
      ticketList.add(ticket);
    }

    bookingInputForm.setTicketList(ticketList);
    model.addAttribute("bookingInputForm", bookingInputForm);
    return "booking/passenger-info";
  }

  @RequestMapping(value = "processPassengerForm", method = RequestMethod.GET)
  public String processPassengerForm(Model model, BookingInputForm bookingInputForm, SessionStatus sessionStatus) {
    List<TicketEntity> ticketList = new ArrayList<>();

    ticketList = bookingInputForm.getTicketList();

    OrdersEntity order = new OrdersEntity();
    order.setOrderDate(LocalDate.now());
    order.setTotalPrice(123.34);
    order.setCustomer(bookingService.getCustomerById(1)); //dummy
    order = bookingService.saveOrders(order);

    for (TicketEntity ticket : ticketList) {
      System.out.println(ticket.getFirstName());
      ticket.setTicketCode("dummy");
      ticket.setLuggageId(1); //dummy
      ticket.setOrder(order);
    }

    bookingService.saveTicketList(ticketList);

    sessionStatus.setComplete();
    return "homepage/home";
  }

  @RequestMapping(value = "test1")
  public String bookingTest1(Model model) {
    return "nhap1/index";
  }

  @RequestMapping(value = "displaySearch")
  public String displaySearchBooking(Model model, BookingInputForm bookingInputForm) {
    model.addAttribute("airports", bookingService.getAllAirports());
    bookingInputForm.setAdultNumber("1");
    bookingInputForm.setChildrenNumber("0");

    LocalDate today = LocalDate.now();
    bookingInputForm.setDepartureDate(today);
    bookingInputForm.setReturnDate(today);
    model.addAttribute("bookingInputForm", bookingInputForm);
    return "homepage/home";
  }

  @RequestMapping(value = "processSearch", method = RequestMethod.GET)
  public String processSearchBooking(Model model, BookingInputForm bookingInputForm) {
    // For test "DN01", "HN01", "2018-11-22"
    return "booking/select-flight";
  }

  @RequestMapping(value = "processSearch1")
  public String processSearchBooking1(Model model, BookingInputForm bookingInputForm, SessionStatus sessionStatus) {
    SelectFlightOutputForm selectFlightOutputForm = new SelectFlightOutputForm();

    List<FlightSuggested> flightSuggesteds = new ArrayList<>();

    List<FlightEntity> flightEntitys = new ArrayList<>();

    if (Integer.parseInt(bookingInputForm.getClassOfChair()) == 2) {  // Economy
      flightEntitys = bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate().toString(), Integer.parseInt(bookingInputForm.getAdultNumber()) + Integer.parseInt(bookingInputForm.getChildrenNumber()), 0);
    } else { // Business
      flightEntitys = bookingService.getFlightsForBooking(bookingInputForm.getDepartureAirportCode(), bookingInputForm.getArriveAirportCode(), bookingInputForm.getDepartureDate().toString(), 0, Integer.parseInt(bookingInputForm.getAdultNumber()) + Integer.parseInt(bookingInputForm.getChildrenNumber()));
    }

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM HH:mm");
    for (FlightEntity flightEntity : flightEntitys) {
      FlightSuggested flightSuggested = new FlightSuggested();
      flightSuggested.setFlightId(flightEntity.getFlightId());
      flightSuggested.setDepart(flightEntity.getDepartureTime().format(formatter));
      flightSuggested.setArrive(flightEntity.getArriveTime().format(formatter));
      flightSuggested.setBusinessPrice("from " + flightEntity.getPrice() * 1.2 + " VND");
      flightSuggested.setEconomyPrice("from " + flightEntity.getPrice() + " VND");
      flightSuggested.setAircraft(flightEntity.getAircraft().getAircraftCode());
      flightSuggesteds.add(flightSuggested);
    }

    selectFlightOutputForm.setDepartAirport(bookingService.getAirportByCode(bookingInputForm.getDepartureAirportCode()).getLocation());
    selectFlightOutputForm.setArriveAirport(bookingService.getAirportByCode(bookingInputForm.getArriveAirportCode()).getLocation());
    selectFlightOutputForm.setFlightSuggesteds(flightSuggesteds);

    model.addAttribute("selectFlightOutputForm", selectFlightOutputForm);
    return "booking/select-flight1";
  }
}
