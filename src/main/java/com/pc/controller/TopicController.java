package com.pc.controller;

import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.service.TopicService;
import com.pc.service.impl.TopicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 添加Controller
 */
@Controller
@RequestMapping("/Topic")
public class TopicController {
    @Autowired
    private TopicService topicService;
    /*管理页面*/
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    /*新闻添加页面*/
    @RequestMapping("/news_add")
    public String news_add(){
        return "news_add";
    }
    /*新闻添加*/
    @PostMapping("/news_adds")
    @ResponseBody
    public String news_adds(News news){
        topicService.InsertNew(news);
        return "a";
    }
    /*主题添加页面*/
    @RequestMapping("/topic_add")
    public String topic_add(){
        return "topic_add";
    }
    /*主题添加*/
    @PostMapping("/topic_adds")
    @ResponseBody
    public String topic_adds(Topic topic){
        topicService.InsertTopic(topic);
        return "a";
    }
    /*新闻编辑*/
    @RequestMapping("/news_update")
    public String news_update(){
        return "news_update";
    }
    /*注册用户*/
    @RequestMapping("/register2")
    public String register2(){
        return "register2";
    }

    /*主题编辑*/
    @RequestMapping("/topicList")
    public String topicList(){
        return "topicList";
    }

    /*查找新闻*/
    @RequestMapping("/cahzaoxw")
    public String cahzaoxw(){
        return "cahzaoxw";
    }


}
