package fr.vasyenbus.dataobject;

import org.joda.time.DateTime;
import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

public class Book {

    @Id
    private Integer id;
    private String title;
    private String author;

    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private DateTime writtenDate;

    public Book() {

    }

    public Book(final String title, final String author) {
        this.title = title;
        this.author = author;
    }

    public DateTime getWrittenDate() {
        return writtenDate;
    }

    public void setWrittenDate(DateTime writtenDate) {
        this.writtenDate = writtenDate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isNew() {
        return (this.id == null);
    }
}
