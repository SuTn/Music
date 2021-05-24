package com.tong.service.impl;

import com.tong.dao.ConsumerMapper;
import com.tong.pojo.Consumer;
import com.tong.service.ConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConsumerServiceImpl implements ConsumerService {

    @Autowired
    private ConsumerMapper consumerMapper;


    @Override
    public boolean insert(Consumer consumer) {



        return consumerMapper.insert(consumer)>0;
    }

    @Override
    public boolean update(Consumer consumer) {
        return consumerMapper.update(consumer)>0;
    }

    @Override
    public boolean delete(Integer id) {
        return consumerMapper.delete(id)>0;
    }

    @Override
    public Consumer selectByPrimaryKey(Integer id) {
        return consumerMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Consumer> allConsumer() {
        return consumerMapper.allConsumer();
    }

    @Override
    public boolean verifyPassword(String username, String password) {
        return consumerMapper.verifyPassword(username,password)>0;
    }

    @Override
    public Consumer selectByUsername(String username) {
        return consumerMapper.selectByUsername(username);
    }
}
