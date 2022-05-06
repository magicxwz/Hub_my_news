package com.pc.service.impl;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import com.pc.dao.NewMapper;
import com.pc.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewServiceImpl implements NewService {
    @Autowired
    private NewMapper newMapper;
    @Override
    public List<News> selectNews() {
        return newMapper.selectNews();
    }

    @Override
    public List<Topic> selectTopic() {
        return newMapper.selectTopic();
    }

    @Override
    public List<Users> selectUsers() {
        return newMapper.selectUsers();
    }

    @Override
    public Users selectUsersdl(String username, String upwd) {
        return newMapper.selectUsersdl(username,upwd);
    }

    @Override
    public List<Comments> selectComments() {
        return newMapper.selectComments();
    }

    @Override
    public List<Comments> selectCommentss(int cnid) {
        return newMapper.selectCommentss(cnid);
    }

    @Override
    public List<News> selectNewsntid(int ntid) {
        return newMapper.selectNewsntid(ntid);
    }

    @Override
    public News selectNew(int nid) {
        return newMapper.selectNew(nid);
    }
}
