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


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        Users users = newServiceImpl.selectUsersdl("1","1");
        System.out.println(users);
    }
    @Test
    public void t4(){
        News news=new News();
        Date jdate=new Date();

        news.setNcreateDate(jdate);
        Date ncreateDate = news.getNcreateDate();

        Timestamp timeStamp = new Timestamp(jdate.getTime());

        System.out.println(timeStamp);
    }
}
