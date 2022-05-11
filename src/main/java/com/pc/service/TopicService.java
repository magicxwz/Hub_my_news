package com.pc.service;

import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import org.apache.ibatis.annotations.Param;

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
    /**
     * 查找新闻 模糊查询
     * */
    List<News> selectNewscz(@Param("xw") String xw);
    /**
     * 删除新闻 跟子删除
     * */
    int delComm(int cnid);
    int delNew(int nid);
    /**
     * 删除主题 修改主题
     * */
    int delTopic(int tid);
    int updateTopic(Topic topic);
    Topic selectTopicid(int tid);
    /*修改新闻*/
    int updateNewg(News news);
    /**
     * 用户名异步
     * */
    Users selectdgyh(String uname);
    /**
     * 用户注册
     * */
    int insertUser(Users users);
}
