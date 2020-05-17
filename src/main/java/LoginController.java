import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import utils.HibernateUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class LoginController extends HttpServlet {

    RequestDispatcher dispatcher = null;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        HttpSession session1 = request.getSession();

        String login=request.getParameter("login");
        String password=request.getParameter("password");
        Query query = session.createQuery("from Users u  where u.login=:login and u.password=:password");
        query.setParameter("login", login);
        query.setParameter("password", password);
        List listS = query.list();
        Iterator it = listS.iterator();
        if (it.hasNext()) {
            session1.setAttribute("login",login);
            session.close();
            response.sendRedirect("show");
        }
        else {

            dispatcher=request.getRequestDispatcher("/anlog.jsp");
            dispatcher.forward(request,response);}



    }

}
