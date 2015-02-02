package fr.vasyenbus.service;

import fr.vasyenbus.dao.BookDao;
import fr.vasyenbus.dataobject.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * Created by CHALLER on 02/01/2015.
 */
@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;

    @Override
    public Collection<Book> findBooks() {
        return bookDao.findBooks();
    }

    @Override
    public void saveBook(Book book) {
        bookDao.saveBook(book);
    }

    @Override
    public void deleteBook(Integer id) {
        bookDao.deleteBook(id);
    }
}
