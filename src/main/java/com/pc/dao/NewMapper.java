package com.pc.dao;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;

import java.util.List;

public interface NewMapper {
    List<News> selectNews();
    List<Topic> selectTopic();
    List<Users> selectUsers();
    List<Comments> selectComments();
    List<News> selectNewsntid(int ntid);
}
