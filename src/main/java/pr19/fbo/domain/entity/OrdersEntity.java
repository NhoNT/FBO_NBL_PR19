package pr19.fbo.domain.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders")
public class OrdersEntity implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int orderId;

  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private LocalDate orderDate;

  private double totalPrice;

  @ManyToOne
  @JoinColumn(name = "customerId")
  private CustomerEntity customer;

  @OneToMany(mappedBy = "order", fetch = FetchType.EAGER)
  private List<TicketEntity> ticketList;

  public int getOrderId() {
    return orderId;
  }

  public void setOrderId(int orderId) {
    this.orderId = orderId;
  }

  public LocalDate getOrderDate() {
    return orderDate;
  }

  public void setOrderDate(LocalDate orderDate) {
    this.orderDate = orderDate;
  }

  public double getTotalPrice() {
    return totalPrice;
  }

  public CustomerEntity getCustomer() {
    return customer;
  }

  public void setCustomer(CustomerEntity customer) {
    this.customer = customer;
  }

  public void setTotalPrice(double totalPrice) {
    this.totalPrice = totalPrice;
  }

  public List<TicketEntity> getTicketList() {
    return ticketList;
  }

  public void setTicketList(List<TicketEntity> ticketList) {
    this.ticketList = ticketList;
  }

}
