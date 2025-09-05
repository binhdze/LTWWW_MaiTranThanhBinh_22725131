package iuh.fit.bai2;

import iuh.fit.bai2.User;
import iuh.fit.bai2.UserStorage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")
public class UserController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String email = request.getParameter("email");

        User user = new User(fname, lname, email);
        UserStorage.addUser(user);

        request.setAttribute("users", UserStorage.getAllUsers());
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}