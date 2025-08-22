package iuh.fit.se._22721681_vohuynhduc_tuan01;

import java.io.*;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(
        name = "helloServlet",
        value = "/hello",
        initParams = {
                @WebInitParam(name="username", value="binhdzne"),
                @WebInitParam(name="email", value="binhdzne@gmail.com")
        }
)
public class HelloServlet extends HttpServlet {
    private String username;
    private String email;
    private String appName;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        username = config.getInitParameter("username");
        email = config.getInitParameter("email");
        appName = config.getServletContext().getInitParameter("appName");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1 style='color:red'>" + email + "</h1>");
        out.println("<h3 style='color:blue'>" + username + "</h3>");
        out.println("<h3 style='color:green'>" + (appName != null ? appName : "App Name not set") + "</h3>");
        out.println("</body></html>");
    }
}
