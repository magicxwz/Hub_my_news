package com.pc.test;

import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import com.pc.service.NewService;
import com.pc.service.impl.NewServiceImpl;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {

    @Test
    public void t1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        List<News> news = newServiceImpl.selectNews();
        for (News news1 : news) {
            System.out.println(news1);
        }
    }
    @Test
    public void t2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        News news = newServiceImpl.selectNew(108);
        System.out.println(news);
    }
    @Test
    public void t3(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        Users users = newServiceImpl.selectUsersdl("1", "1");
        System.out.println(users);
    }
}
