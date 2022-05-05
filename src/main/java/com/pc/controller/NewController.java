package com.pc.controller;

import com.pc.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/News")
public class NewController {
    @Autowired
    private NewService newService;
    @GetMapping("/newselect")
    public String selNews(Model model){
        model.addAttribute("news",newService.selectNews());
        model.addAttribute("topics",newService.selectTopic());
        model.addAttribute("gnxw",newService.selectNewsntid(1));
        model.addAttribute("gjxw",newService.selectNewsntid(2));
        model.addAttribute("wlxw",newService.selectNewsntid(5));
        return "index";
    }
}
