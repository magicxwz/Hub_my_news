package com.pc.service.impl;

import com.pc.beans.Comments;
import com.pc.beans.News;
import com.pc.beans.Topic;
import com.pc.beans.Users;
import com.pc.dao.NewMapper;
import com.pc.service.NewService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
    public Users selectUsersdl(String uname,String upwd) {
        return newMapper.selectUsersdl(uname,upwd);
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
    public int insertComments(Comments comments) {
        return newMapper.insertComments(comments);
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
