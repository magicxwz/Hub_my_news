package com.pc.dao;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface NewMapper {
    List<News> selectNews();
    List<Topic> selectTopic();
    List<Users> selectUsers();
    Users selectUsersdl(@Param("uname") String uname,@Param("upwd") String upwd);
    List<Comments> selectComments();
    List<Comments> selectCommentss(int cnid);
    List<News> selectNewsntid(int ntid);
    News selectNew(int nid);
}
