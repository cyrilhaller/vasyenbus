package fr.vasyenbus.dao;

import fr.vasyenbus.dataobject.Book;

import java.util.Collection;

/**
 * Created by CHALLER on 02/01/2015.
 */
public interface BookDao {

    public Collection<Book> findBooks();

    public void saveBook(Book book);

    public void deleteBook(Integer id);

}
