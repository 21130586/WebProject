package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Lesson;

public class LessonsDAO {
    private Connection connection;

    public LessonsDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Lesson> getAllLessons() {
        List<Lesson> lessons = new ArrayList<>();
        String sql = "SELECT * FROM Lessons";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson(
                        rs.getInt("Id"),
                        rs.getString("Title"),
                        rs.getString("Description"),
                        rs.getString("ImagePath")
                );
                lessons.add(lesson);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lessons;
    }
}

