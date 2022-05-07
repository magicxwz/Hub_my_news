package com.pc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Topic")
public class TopicController {
    @RequestMapping("/news_add")
    public String news_add(){
        return "news_add";
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
    @RequestMapping("/register2")
    public String register2(){
        return "register2";
    }
    @RequestMapping("/topic_add")
    public String topic_add(){
        return "topic_add";
    }
    @RequestMapping("/topicList")
    public String topicList(){
        return "topicList";
    }
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }


}
