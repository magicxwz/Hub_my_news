package com.pc.controller;

import com.alibaba.fastjson.JSON;
import com.pc.beans.News;
import com.pc.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/News")
public class NewController {
    @Autowired
    private NewService newService;
    @GetMapping("/newselect")
    public String newselect(Model model){
        model.addAttribute("news",newService.selectNews());
        model.addAttribute("topics",newService.selectTopic());
        model.addAttribute("gnxw",newService.selectNewsntid(1));
        model.addAttribute("gjxw",newService.selectNewsntid(2));
        model.addAttribute("wlxw",newService.selectNewsntid(5));
        return "index";
    }
    @GetMapping("/newsn/{ntid}")
    @ResponseBody
    public String newsn(@PathVariable int ntid, Model model){
        System.out.println(ntid);
        List<News> news = newService.selectNewsntid(ntid);
        String s = JSON.toJSONString(news);
        return s;
    }
}
