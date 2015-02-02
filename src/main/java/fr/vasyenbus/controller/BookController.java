package fr.vasyenbus.controller;

import fr.vasyenbus.dataobject.Book;
import fr.vasyenbus.service.BookService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

/**
 * Created by CHALLER on 03/01/2015.
 */
@Controller
public class BookController {

    private final static String FIND_BOOKS = "findbooks";
    private final static String CREATE_BOOK = "createbook";

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BookController.class);

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String findBooks(ModelMap model) {
        model.addAttribute("books", bookService.findBooks());
        return FIND_BOOKS;
    }

    @RequestMapping(value = "/delete/{bookId}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable("bookId") int bookId, ModelMap model) {
        bookService.deleteBook(bookId);
        return FIND_BOOKS;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String initCreationBookForm(Model model) {
        Book book = new Book();
        model.addAttribute("book", book);
        return CREATE_BOOK;
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String processCreationBookForm(@ModelAttribute("book") Book book, BindingResult result, SessionStatus status, ModelMap model) {
        new BookValidator().validate(book, result);
        if (result.hasErrors()) {
            return CREATE_BOOK;
        } else {
            bookService.saveBook(book);
            status.setComplete();
            return "redirect:/";
        }
    }

}
