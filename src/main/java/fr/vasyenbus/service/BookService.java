package fr.vasyenbus.service;

import fr.vasyenbus.dataobject.Book;

import java.util.Collection;

/**
 * Created by CHALLER on 02/01/2015.
 */
public interface BookService {

    public Collection<Book> findBooks();

    public void saveBook(Book book);

    public void deleteBook(Integer id);
}
