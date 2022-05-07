package com.pc.dao;

import com.pc.beans.News;
import com.pc.beans.Topic;

import java.util.List;

/**
 * mapper接口
 */
public interface TopicMapper {
    int InsertNew(News news);
    int InsertTopic(Topic topic);
}
