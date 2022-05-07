package com.pc.service;

import com.pc.beans.News;
import com.pc.beans.Topic;

/**
 * 业务层接口
 */
public interface TopicService {
    int InsertNew(News news);
    int InsertTopic(Topic topic);
}
