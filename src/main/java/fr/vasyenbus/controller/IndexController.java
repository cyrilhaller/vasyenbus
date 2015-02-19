package fr.vasyenbus.controller;

import fr.vasyenbus.service.PushService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by olivier on 19/02/15.
 */
@Controller
public class IndexController {

    private static final String VIEW_INDEX = "index";
    private final static Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private PushService pushService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap model) {

        return VIEW_INDEX;
    }
}
