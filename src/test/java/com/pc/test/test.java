package com.pc.test;

import com.pc.beans.News;
import com.pc.service.NewService;
import org.junit.Test;
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
        List<News> news = newServiceImpl.selectNews();
        for (News news1 : news) {
            System.out.println(news1);

        }
    }
    @Test
    public void t3(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        List<News> news = newServiceImpl.selectNews();
        for (News news1 : news) {
            System.out.println(news1);

        }
    }
    @Test
    public void t4(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        List<News> news = newServiceImpl.selectNews();
        for (News news1 : news) {
            System.out.println(news1);
            System.out.println("测试类4");
        }
    }
    @Test
    public void t5(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        NewService newServiceImpl = (NewService) context.getBean("newServiceImpl");
        List<News> news = newServiceImpl.selectNews();
        for (News news1 : news) {
            System.out.println(news1);
            System.out.println("测试类");

        }
    }

}
