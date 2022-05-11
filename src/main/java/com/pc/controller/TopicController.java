package com.pc.controller;

import com.alibaba.fastjson.JSON;
import com.pc.beans.*;
import com.pc.service.NewService;
import com.pc.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * 添加Controller
 */
@Controller
@RequestMapping("/Topic")
public class TopicController {
    @Autowired
    private TopicService topicService;
    @Autowired
    private NewService newService;
    /*管理页面*/
    @RequestMapping("/admin")
    public String admin(Model model,HttpSession session){
        int h=10;//一页多少行
        List<News> news = topicService.SelectNewsfy(1, h);
        Page page=new Page();
        page.setPagey(1);
        page.setCount(topicService.getcount());
        page.setTotalCount(page.getCount()%h==0 ? page.getCount()/h:(page.getCount()/h)+1);
        Json json=new Json();
        json.setNews(news);
        json.setPage(page);
        session.setAttribute("json",json);
        return "admin";
    }
    /*删除新闻*/
    @PostMapping("/scxw/{id}")
    @ResponseBody
    public String admin(@PathVariable int id){
        topicService.delComm(id);
        int i = topicService.delNew(id);
        String a="false";
        if (i>0){
            a="true";
        }
        return a;
    }
    /*分页查询*/
    @GetMapping("/fycx/{y}")
    @ResponseBody
    public String fycx(@PathVariable int y, Model model){
        int h=10;//一页多少行
        Page page=new Page();
        page.setCount(topicService.getcount());
        page.setTotalCount(page.getCount()%h==0 ? page.getCount()/h:(page.getCount()/h)+1);
        if (y<1){
            y=1;
        }
        if (y> page.getTotalCount()){
            y= page.getTotalCount();
        }
        page.setPagey(y);
        List<News> news = topicService.SelectNewsfy(y, h);
        Json json=new Json();
        json.setNews(news);
        json.setPage(page);
        String s = JSON.toJSONString(json);
        return s;
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
        news.setNcreateDate(new Date());
        news.setNmodifyDate(new Date());
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
    @RequestMapping("/news_update/{nid}")
    public String news_update(@PathVariable int nid,Model model){
        News news = newService.selectNew(nid);
        List<Topic> topics = newService.selectTopic();
        model.addAttribute("topics",topics);
        model.addAttribute("news",news);
        return "news_update";
    }
    /*修改新闻*/
    @PostMapping("/news_updateg")
    @ResponseBody
    public String news_update(News news){
        topicService.updateNewg(news);
        return "true";
    }

    /*主题编辑*/
    @RequestMapping("/topicList")
    public String topicList(HttpSession session){
        session.setAttribute("topics",newService.selectTopic());
        return "topicList";
    }
    /*主题删除*/
    @GetMapping("/topicdelete/{id}")
    @ResponseBody
    public String topicdel(@PathVariable int id){
        int i = topicService.delTopic(id);
        return "true";
    }
    /*主题修改页面*/
    @RequestMapping("/topicupdate/{tid}")
    public String topicupdate(@PathVariable int tid,Model model){
        Topic topic = topicService.selectTopicid(tid);
        model.addAttribute("topic",topic);
        return "topic_update";
    }
    /*主题修改*/
    @PostMapping("/topicupdateg")
    @ResponseBody
    public String topicupd(Topic topic){
        int i = topicService.updateTopic(topic);
        return "true";
    }

    /*查找新闻*/
    @RequestMapping("/cahzaoxw")
    public String cahzaoxw(){
        return "cahzaoxw";
    }
    /*模糊查找新闻*/
    @PostMapping("/mhcx/{xw}")
    @ResponseBody
    public String mhcx(@PathVariable String xw){
        List<News> news = topicService.selectNewscz(xw);
        String s = JSON.toJSONString(news);
        return s;
    }

    /*注册用户页面*/
    @RequestMapping("/register2")
    public String register2(){
        return "register2";
    }
    /*注册用户名字查询*/
    @PostMapping("/yhmcx/{uname}")
    @ResponseBody
    public String yhmcx(@PathVariable String uname){
        String a="fals";
        System.out.println(uname);
        Users selectdgyh = topicService.selectdgyh(uname);
        System.out.println(selectdgyh);
        if (selectdgyh==null){
            a="tru";
        }
        return a;
    }
    /*用户注册*/
    @PostMapping("/yhzc")
    @ResponseBody
    public String yhzc(Users users){
        System.out.println("----------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "22222222222222222222222222222222222222222222222222222222"+users);
        String a="false";
        int i = topicService.insertUser(users);
        if (i>0){
            a="true";
        }
        return a;
    }
}
