package controller;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    // Thông tin kết nối
    private final String servername = "localhost"; // Tên máy chủ (hoặc IP)
    private final String portNumber = "1433"; // Cổng mặc định của SQL Server
    private final String instance = ""; // Instance name, để trống nếu không sử dụng
    private final String databaseName = "tailieumienphi"; // Tên cơ sở dữ liệu
    private final String userID = "sa"; // Tên đăng nhập
    private final String password = "new_password"; // Mật khẩu

    public Connection getConnection() throws Exception {
        // Xây dựng URL kết nối
        String url;
        if (instance == null || instance.trim().isEmpty()) {
            // Nếu không có instance
            url = "jdbc:sqlserver://" + servername + ":" + portNumber + ";databaseName=" + databaseName;
        } else {
            // Nếu có instance
            url = "jdbc:sqlserver://" + servername + ":" + portNumber + "\\" + instance + ";databaseName=" + databaseName;
        }
        // Tạo kết nối
        return DriverManager.getConnection(url, userID, password);
    }
    public class Main {
        public static void main(String[] args) {
            DBContext dbContext = new DBContext();
            try (Connection conn = dbContext.getConnection()) {
                System.out.println("Kết nối thành công!");
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Kết nối thất bại!");
            }
        }
    }

}

