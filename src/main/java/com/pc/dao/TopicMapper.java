package com.pc.dao;

import com.pc.beans.News;
import com.pc.beans.Topic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * mapper接口
 */
public interface TopicMapper {
    int InsertNew(News news);
    int InsertTopic(Topic topic);
    /**
     * 分页查询
     */
    List<News> SelectNewsfy(@Param("y") int y,@Param("h") int h);
    int getcount();
    /**
     * 查找新闻 模糊查询
     * */
    List<News> selectNewscz(@Param("xw") String xw);
    /**
     * 删除新闻 跟子删除
     * */
    int delComm(int cnid);
    int delNew(int nid);
}
