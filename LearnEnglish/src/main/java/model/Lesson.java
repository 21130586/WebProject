package model;

public class Lesson {
    private int id;
    private String title;
    private String description;
    private String imagePath;

    public Lesson(int id, String title, String description, String imagePath) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.imagePath = imagePath;
    }

    // Getters và setters
    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getDescription() { return description; }
    public String getImagePath() { return imagePath; }
}

