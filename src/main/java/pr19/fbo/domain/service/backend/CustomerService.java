/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pr19.fbo.domain.service.backend;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pr19.fbo.domain.entity.CustomerEntity;
import pr19.fbo.domain.repository.CustomerRepository;

/**
 *
 * @author MacBook Air
 */
@Service
public class CustomerService {
    
    @Autowired
    private CustomerRepository customerRepository;
      public List<CustomerEntity> getLstCustomer() {
        return (List<CustomerEntity>) customerRepository.findAll();
    }

    public CustomerEntity addCustomer(CustomerEntity use) {
        return customerRepository.save(use);
    }

    public void deleteCustomer(int id) {
        customerRepository.delete(id);
    }

    public CustomerEntity getCustomer(int id) {
        return customerRepository.findOne(id);
    }
}
