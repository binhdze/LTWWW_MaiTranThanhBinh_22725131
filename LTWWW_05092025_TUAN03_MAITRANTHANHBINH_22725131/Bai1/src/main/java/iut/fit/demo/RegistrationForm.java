package iut.fit.demo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String fname = request.getParameter("txtFName");
        String lname = request.getParameter("txtLName");
        String email = request.getParameter("txtEmail");
        String gender = request.getParameter("gender");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");

        String birthdate = day + "/" + month + "/" + year;

        // Tạo đối tượng Student
        Student student = new Student(fname, lname, email, gender, birthdate);

        // Gửi dữ liệu đến JSP
        request.setAttribute("student", student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result-form.jsp");
        dispatcher.forward(request, response);
    }
}
