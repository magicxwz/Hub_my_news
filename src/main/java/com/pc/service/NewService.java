package com.pc.service;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;

import java.util.List;
import java.util.Map;

public interface NewService {
    List<News> selectNews();
    List<Topic> selectTopic();
    List<Users> selectUsers();
    Users selectUsersdl(String uname,String upwd);
    List<Comments> selectComments();
    List<Comments> selectCommentss(int cnid);
    int insertComments(Comments comments);
    List<News> selectNewsntid(int ntid);
    News selectNew(int nid);
}
