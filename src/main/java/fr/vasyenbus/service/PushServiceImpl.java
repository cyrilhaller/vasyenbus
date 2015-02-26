package fr.vasyenbus.service;

import fr.vasyenbus.dao.PushDao;
import fr.vasyenbus.dataobject.PushObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by olivier on 19/02/15.
 */
@Service
public class PushServiceImpl implements PushService {

    @Autowired
    private PushDao dao;

    @Override
    public List<PushObj> pushCarouselPrincipal() {

        List<PushObj> result = new ArrayList<PushObj>();
        result.add(new PushObj("Paris", "Toulon", 70.5F));
        result.add(new PushObj("Toulon", "Marseil", 80.5F));
        result.add(new PushObj("Marseil", "Paris", 90.5F));
        dao.deleteAll();
        dao.save(result);
        return dao.findAll();
    }
}
