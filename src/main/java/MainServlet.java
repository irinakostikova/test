import model.Customer;
import services.customerServices;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class MainServlet extends HttpServlet {

   /* @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("name", "Teacher!");

        req.getRequestDispatcher("mypage.jsp").forward(req, resp);

    }*/
   private customerServices service = new customerServices();

    public void init(ServletConfig servletConfig) {
        try {
            super.init(servletConfig);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<Customer> customers = service.findAllCustomer();
        req.setAttribute("customers", customers);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/show.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        String F_name = req.getParameter("F_name");
        String S_name = req.getParameter("S_name");
        int age = Integer.parseInt(req.getParameter("age"));
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        Customer customer = new Customer(F_name, S_name, age,email,address);
        service.saveCustomer(customer);
        resp.sendRedirect("/customers");
    }

    @Override
    protected void  doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = service.findCustomer(id);
        customer.setF_name(req.getParameter("F_name"));
        customer.setS_name(req.getParameter("S_name"));
        customer.setAge(Integer.parseInt(req.getParameter("age")));
        customer.setEmail(req.getParameter("email"));
        customer.setAddress(req.getParameter("address"));
        service.updateCustomer(customer);
        resp.sendRedirect("/customers");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteCustomer(service.findCustomer(id));
        resp.sendRedirect("/customers");
    }

}