package services;

import model.Customer;
import dao.customerDAO;
import java.util.List;



public class customerServices {
    private customerDAO customerDao = new customerDAO();

    public customerServices() {
    }

    public Customer findCustomer(int id) {
        return customerDao.findById(id);
    }

    public void saveCustomer(Customer customer) {
        customerDao.save(customer);
    }

    public void deleteCustomer( Customer customer) {
        customerDao.delete(customer);
    }

    public void updateCustomer(Customer customer) {
        customerDao.update(customer);
    }

    public List<Customer> findAllCustomer() { return customerDao.findAll(); }

}
