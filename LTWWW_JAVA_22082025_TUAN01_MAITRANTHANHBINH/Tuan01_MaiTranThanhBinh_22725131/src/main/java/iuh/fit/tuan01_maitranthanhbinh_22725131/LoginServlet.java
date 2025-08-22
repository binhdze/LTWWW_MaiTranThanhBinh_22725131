package iuh.fit.tuan01_maitranthanhbinh_22725131;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        String firstName = req.getParameter("firstname");
        String lastName = req.getParameter("lastname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String facebook = req.getParameter("facebook");
        String bio = req.getParameter("bio");

        out.println("<html><head><title>Result Page</title></head><body>");
        out.println("<h2>Thông tin đã điền:</h2>");
        out.println("<p><strong>Full Name:</strong> " + firstName + " " + lastName + "</p>");
        out.println("<p><strong>Username:</strong> " + username + "</p>");
        out.println("<p><strong>Email:</strong> " + email + "</p>");
        out.println("<p><strong>Facebook:</strong> " + facebook + "</p>");
        out.println("<p><strong>Bio:</strong> " + bio + "</p>");
        out.println("</body></html>");

        out.close();
    }
}
