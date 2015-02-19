package fr.vasyenbus.service;

import fr.vasyenbus.dao.BookDao;
import fr.vasyenbus.dataobject.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDao bookDao;

    @Override
    public List<Book> findBooks() {
        return bookDao.findAll();
    }

    @Override
    public void saveBook(Book book) {
        bookDao.save(book);
    }

    @Override
    public void deleteBook(Integer id) {
        bookDao.delete(id);
    }
}
