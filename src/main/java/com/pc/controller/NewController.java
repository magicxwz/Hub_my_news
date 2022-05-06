package com.pc.controller;

import com.alibaba.fastjson.JSON;
import com.pc.beans.News;
import com.pc.beans.Users;
import com.pc.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/News")
public class NewController {
    @Autowired
    private NewService newService;
    /*网页的主页面*/
    @GetMapping("/newselect")
    public String newselect(Model model){
        model.addAttribute("news",newService.selectNews());
        model.addAttribute("topics",newService.selectTopic());
        model.addAttribute("gnxw",newService.selectNewsntid(1));
        model.addAttribute("gjxw",newService.selectNewsntid(2));
        model.addAttribute("wlxw",newService.selectNewsntid(5));
        return "index";
    }
    /*异步处理*/
    @GetMapping("/newsn/{ntid}")
    @ResponseBody
    public String newsn(@PathVariable int ntid, Model model){
        //System.out.println(ntid);
        List<News> news = newService.selectNewsntid(ntid);
        String s = JSON.toJSONString(news);
        return s;
    }
    /*查看单个新闻模块*/
    @GetMapping("/new/{nid}")
    public String news_read(@PathVariable int nid,Model model){
        News news = newService.selectNew(nid);
        model.addAttribute("newdg",news);
        model.addAttribute("gnxw",newService.selectNewsntid(1));
        model.addAttribute("gjxw",newService.selectNewsntid(2));
        model.addAttribute("wlxw",newService.selectNewsntid(5));
        return "news_read";
    }
    /*登陆*/
    @PostMapping("/dlu")
    public String dlu(String username, String upwd,Model model){
        Users users = newService.selectUsersdl(username,upwd);
        model.addAttribute("uname",users.getUname());
        System.out.println(users.getUname());
        return "index";
    }

}
