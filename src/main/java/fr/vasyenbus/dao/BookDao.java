package fr.vasyenbus.dao;

import fr.vasyenbus.dataobject.Book;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookDao extends MongoRepository<Book, Integer> {
}
