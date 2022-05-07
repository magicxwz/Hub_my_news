package com.pc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Topic")
public class UpdateController {

    /*新闻添加*/
    @RequestMapping("/news_add")
    public String news_add(){
        return "news_add";
    }
    /*注册用户*/
    @RequestMapping("/register2")
    public String register2(){
        return "register2";
    }
    /*主题添加*/
    @RequestMapping("/topic_add")
    public String topic_add(){
        return "topic_add";
    }
    /*主题编辑*/
    @RequestMapping("/topicList")
    public String topicList(){
        return "topicList";
    }
    /*管理页面*/
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    /*查找新闻*/
    @RequestMapping("/cahzaoxw")
    public String cahzaoxw(){
        return "cahzaoxw";
    }

}
