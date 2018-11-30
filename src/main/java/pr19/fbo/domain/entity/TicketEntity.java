package pr19.fbo.domain.entity;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "ticket")
public class TicketEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int ticketId;
  private String ticketCode;
  private String firstName;
  private String lastName;
  private int sex;
  private String email;
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate birthday;
  @ManyToOne
  @JoinColumn(name = "orderId")
  private OrdersEntity order;
  @ManyToOne
  @JoinColumn(name = "flightId")
  private FlightEntity flight;
  private int personId;
  private int luggageId;
  private int chairId;

  public TicketEntity() {
  }

  public int getTicketId() {
    return ticketId;
  }

  public void setTicketId(int ticketId) {
    this.ticketId = ticketId;
  }

  public String getTicketCode() {
    return ticketCode;
  }

  public void setTicketCode(String ticketCode) {
    this.ticketCode = ticketCode;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public int getSex() {
    return sex;
  }

  public void setSex(int sex) {
    this.sex = sex;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public LocalDate getBirthday() {
    return birthday;
  }

  public void setBirthday(LocalDate birthday) {
    this.birthday = birthday;
  }

  public OrdersEntity getOrder() {
    return order;
  }

  public void setOrder(OrdersEntity order) {
    this.order = order;
  }

  public FlightEntity getFlight() {
    return flight;
  }

  public void setFlight(FlightEntity flight) {
    this.flight = flight;
  }

  public int getPersonId() {
    return personId;
  }

  public void setPersonId(int personId) {
    this.personId = personId;
  }

  public int getLuggageId() {
    return luggageId;
  }

  public void setLuggageId(int luggageId) {
    this.luggageId = luggageId;
  }

  public int getChairId() {
    return chairId;
  }

  public void setChairId(int chairId) {
    this.chairId = chairId;
  }

}
