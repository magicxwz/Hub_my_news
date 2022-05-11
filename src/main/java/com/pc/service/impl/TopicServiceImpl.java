package com.pc.service.impl;

import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import com.pc.dao.NewMapper;
import com.pc.dao.TopicMapper;
import com.pc.service.NewService;
import com.pc.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 添加的业务层
 */
@Service
public class TopicServiceImpl implements TopicService {
    @Autowired
    private TopicMapper topicMapper;
    @Autowired
    private NewMapper newMapper;
    /*添加新闻*/
    @Override
    public int InsertNew(News news) {
        return topicMapper.InsertNew(news);
    }
    /*添加主题*/
    @Override
    public int InsertTopic(Topic topic) {
        return topicMapper.InsertTopic(topic);
    }

    @Override
    public List<News> SelectNewsfy(int y, int h) {
        return topicMapper.SelectNewsfy((y-1)*h,h);
    }

    @Override
    public int getcount() {
        return topicMapper.getcount();
    }

    @Override
    public List<News> selectNewscz(String xw) {
        return topicMapper.selectNewscz(xw);
    }
    /*删除新闻 跟子外键删除*/
    @Override
    public int delComm(int cnid) {
        return topicMapper.delComm(cnid);
    }

    @Override
    public int delNew(int nid) {
        return topicMapper.delNew(nid);
    }
    /*删除主题*/
    @Override
    public int delTopic(int tid) {
        return topicMapper.delTopic(tid);
    }
    /*修改主题*/
    @Override
    public int updateTopic(Topic topic) {
        return topicMapper.updateTopic(topic);
    }

    @Override
    public Topic selectTopicid(int tid) {
        return topicMapper.selectTopicid(tid);
    }
    /*修改新闻*/
    @Override
    public int updateNewg(News news) {
        return topicMapper.updateNewg(news);
    }
    /*用户注册*/
    @Override
    public Users selectdgyh(String uname) {
        return topicMapper.selectdgyh(uname);
    }

    @Override
    public int insertUser(Users users) {
        System.out.println("----------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "----------------------------------------------------" +
                "11111111111111111111111111111111111111111111111111111"+users);
        return topicMapper.insertUser(users);
    }


}
