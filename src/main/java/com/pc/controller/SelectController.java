package com.pc.controller;

import com.alibaba.fastjson.JSON;
import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Users;
import com.pc.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/News")
public class SelectController {
    @Autowired
    private NewService newService;
    /*网页的主页面*/
    @GetMapping("/newselect")
    public String newselect(Model model, HttpServletRequest request){
        HttpSession session = request.getSession(true);
        session.setAttribute("news",newService.selectNews());
        session.setAttribute("topics",newService.selectTopic());
        session.setAttribute("gnxw",newService.selectNewsntid(1));
        session.setAttribute("gjxw",newService.selectNewsntid(2));
        session.setAttribute("wlxw",newService.selectNewsntid(5));
//        model.addAttribute("news",newService.selectNews());
//        model.addAttribute("topics",newService.selectTopic());
//        model.addAttribute("gnxw",newService.selectNewsntid(1));
//        model.addAttribute("gjxw",newService.selectNewsntid(2));
//        model.addAttribute("wlxw",newService.selectNewsntid(5));
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
        return "news_read";
    }
    /*登陆*/
    @PostMapping("/dlu")
    public String dlu(String username, String upwd,Model model,HttpSession session){
        Users users = newService.selectUsersdl(username,upwd);
        session.setAttribute("uname",users.getUname());
        return "index";
    }
    /*退出登陆*/
    @GetMapping("/tdlu")
    public String tdlu(Model model,HttpSession session){
        session.removeAttribute("uname");
        return "index";
    }
    /*评论异步处理*/
    @PostMapping("/plun")
    @ResponseBody
    public String plun(Comments comments){
        newService.insertComments(comments);
        return "a";
    }
}
