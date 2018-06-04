package org.sitmun.app.admin.app;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.sitmun.app.admin.Application;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
public class ApplicationTests {

    @Test
    public void contextLoads() {
        String[] args = new String[] {};
        Application.main(args);
    }
}