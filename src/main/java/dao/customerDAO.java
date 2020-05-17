package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import model.Customer;
import utils.HibernateUtil;
import java.util.List;

public class customerDAO {

    public Customer findById(int id) {
        return HibernateUtil.getSessionFactory().openSession().get(Customer.class, id);
    }

    public void save(Customer customer) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.save(customer);
        tx1.commit();
        session.close();
    }

    public void update(Customer customer) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.update(customer);
        tx1.commit();
        session.close();
    }

    public void delete(Customer customer) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.delete(customer);
        tx1.commit();
        session.close();
    }

      public List<Customer> findAll() {
        List<Customer> customer = (List<Customer>)  HibernateUtil.getSessionFactory().openSession().createQuery("from Customer ").list();
        return customer;
    }
}
