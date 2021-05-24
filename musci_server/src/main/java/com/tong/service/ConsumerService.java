package com.tong.service;

import com.tong.pojo.Consumer;

import java.util.List;

public interface ConsumerService {

    public boolean insert(Consumer consumer);

    public boolean update(Consumer consumer);

    public boolean delete(Integer id);

    public Consumer selectByPrimaryKey(Integer id);

    public List<Consumer> allConsumer();

    //验证密码
    public boolean verifyPassword(String username,String password);

    //根据username查询
    public Consumer selectByUsername(String username);

}
