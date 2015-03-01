package fr.vasyenbus.service;

import fr.vasyenbus.dataobject.PushObj;

import java.util.List;

/**
 * Created by olivier on 11/02/15.
 */
public interface PushService {

    List<PushObj> pushCarouselPrincipal();

    List<PushObj> pushCarouselSecondaire();
}
