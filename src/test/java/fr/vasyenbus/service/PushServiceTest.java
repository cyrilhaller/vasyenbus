package fr.vasyenbus.service;

import fr.vasyenbus.dao.PushDao;
import fr.vasyenbus.dataobject.PushObj;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import static org.mockito.Mockito.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by olivier on 27/02/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:**/TestContext.xml", "classpath:**/business-config.xml"})
public class PushServiceTest {

    @InjectMocks
    @Autowired
    private PushService pushService;

    @Mock
    private PushDao pushDao;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }
/*
    @Test
    public void testWithMongoCall() {
        List<PushObj> pushList = pushService.pushCarouselPrincipal();
        assertNotNull(pushList);
        assertEquals(3, pushList.size());
    }
*/
    @Test
    public void testWithMocking() {
        List<PushObj> result = new ArrayList<PushObj>();
        result.add(new PushObj("Paris", "Toulon", 70.5F));
        result.add(new PushObj("Toulon", "Marseil", 80.5F));

        when(pushDao.findAll()).thenReturn(result);

        List<PushObj> listTest = pushService.pushCarouselPrincipal();
        assertEquals(result, listTest);
    }

}