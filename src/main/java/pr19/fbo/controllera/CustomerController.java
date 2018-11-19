package pr19.fbo.controllera;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import pr19.fbo.domain.entity.CustomerEntity;
import pr19.fbo.domain.service.backend.CustomerService;

/**
 *
 * @author MacBook Air
 */
@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = {"/customer/register"},  method = RequestMethod.GET)
    public String viewCustomerform(Model model) {
        CustomerEntity newCustomer = new CustomerEntity();
        model.addAttribute("customer", newCustomer);
        return "account/customerform";
    }

    @RequestMapping(value = {"/customer/register"}, method = POST)
    public String AddCusstomer(Model model, CustomerEntity customer) {
        customerService.addCustomer(customer);
        return "account/successfull";
    }
    
     @RequestMapping(value = {"/customer/{id}"}, method = GET)
    public String Cusstomer(Model model, @PathVariable int id ) {
        CustomerEntity customer = customerService.getCustomer(id);
        model.addAttribute("customer", customer);
        return "account/customer";
    }
    
     @RequestMapping(value = {"/customer/edit/{id}"}, method = GET)
    public String editCusstomer(Model model, @PathVariable int id ) {
        CustomerEntity customer = customerService.getCustomer(id);
        model.addAttribute("customer", customer);
        return "account/customerform";
    }

}
