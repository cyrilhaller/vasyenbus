package fr.vasyenbus.controller;

import fr.vasyenbus.dataobject.Book;
import org.joda.time.DateTime;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

/**
 * Created by CHALLER on 04/01/2015.
 */
public class BookValidator {

    public void validate(Book book, Errors errors) {
        final String title = book.getTitle();
        if (!StringUtils.hasLength(title)) {
            errors.rejectValue("title", "required", "required");
        }

        final String author = book.getAuthor();
        if (!StringUtils.hasLength(author)) {
            errors.rejectValue("author", "required", "required");
        }

        final DateTime writtenDate = book.getWrittenDate();
        if (writtenDate == null) {
            errors.rejectValue("writtenDate", "required", "required");
        }
    }
}
