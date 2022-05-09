package com.pc.service;

import com.pc.beans.News;
import com.pc.beans.Topic;

import java.util.List;

/**
 * 业务层接口
 */
public interface TopicService {
    int InsertNew(News news);
    int InsertTopic(Topic topic);
    /**
     * 分页查询
     */
    List<News> SelectNewsfy(int y, int h);
    int getcount();
}
