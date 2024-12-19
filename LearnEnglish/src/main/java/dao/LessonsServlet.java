package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Lesson;


@WebServlet("/LessonsServlet")
public class LessonsServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:sqlserver://localhost:1433;databaseName=YourDatabaseName";
    private static final String JDBC_USER = "sa";
    private static final String JDBC_PASSWORD = "new_password";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Lesson> lessons = null;
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            LessonsDAO lessonsDAO = new LessonsDAO(connection);
            lessons = lessonsDAO.getAllLessons();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("lessons", lessons);
        request.getRequestDispatcher("free-materials.jsp").forward(request, response);
    }
}
