package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/processLogin")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Kết nối tới cơ sở dữ liệu Access
    private Connection connectToDatabase() throws ClassNotFoundException, SQLException {
        String driver = "net.ucanaccess.jdbc.UcanaccessDriver";
        Class.forName(driver);
        String dbPath = "D:\\path_to_your_database\\database.accdb";
        String url = "jdbc:ucanaccess://" + dbPath;
        return DriverManager.getConnection(url);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = connectToDatabase()) {
            String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                // Nếu đăng nhập thành công
                response.sendRedirect("home.jsp");
            } else {
                // Nếu thất bại
                response.getWriter().println("<script>alert('Invalid username or password'); window.location.href='login.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<script>alert('Server error'); window.location.href='login.jsp';</script>");
        }
    }
}

