package fr.vasyenbus.dao;

import fr.vasyenbus.dataobject.PushObj;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by olivier on 26/02/15.
 */
@Repository
public interface PushDao extends MongoRepository<PushObj, Integer> {
}
