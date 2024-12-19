package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/learn")
public class LearnServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LearnServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        if (name != null && email != null) {
            request.setAttribute("message", "Welcome, " + name + "! We've sent a confirmation email to " + email + ".");
        } else {
            request.setAttribute("message", "Please fill out all fields.");
        }

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}
