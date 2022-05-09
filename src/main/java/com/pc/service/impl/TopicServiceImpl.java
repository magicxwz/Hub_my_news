package com.pc.service.impl;

import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.dao.TopicMapper;
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
}
