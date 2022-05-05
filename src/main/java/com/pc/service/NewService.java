package com.pc.service;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;

import java.util.List;

public interface NewService {
    List<News> selectNews();
    List<Topic> selectTopic();
    List<Users> selectUsers();
    List<Comments> selectComments();
    List<News> selectNewsntid(int ntid);
    News selectNew(int nid);
}
