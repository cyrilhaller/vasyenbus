package fr.vasyenbus.dao;

import fr.vasyenbus.dataobject.Book;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.LinkedList;

/**
 * Created by CHALLER on 02/01/2015.
 */
@Service
public class BookDaoImpl implements BookDao {

    private Collection<Book> myLibrary;

    private BookDaoImpl() {

        myLibrary = new LinkedList<Book>();
        Book book = new Book();
        book.setId(1);
        book.setTitle("Scrum pour les nuls");
        myLibrary.add(book);
        book = new Book();
        book.setId(2);
        book.setTitle("SOS OBS");
        myLibrary.add(book);
        book = new Book();
        book.setId(3);
        book.setTitle("Java in a nutshell");
        myLibrary.add(book);
    }

    @Override
    public Collection<Book> findBooks() {
        return myLibrary;
    }

    @Override
    public void saveBook(Book book) {
        myLibrary.add(book);
    }

    @Override
    public void deleteBook(Integer id) {

        for (final Book book : myLibrary) {
            if (book.getId().equals(id)) {
                myLibrary.remove(book);
                break;
            }
        }
    }
}
