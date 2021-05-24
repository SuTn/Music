package com.tong.dao;

import com.tong.pojo.Consumer;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ConsumerMapper {

        public int insert(Consumer consumer);

        public int update(Consumer consumer);

        public int delete(Integer id);

        public Consumer selectByPrimaryKey(Integer id);

        public List<Consumer> allConsumer();

        //验证密码
        public int verifyPassword(String username,String password);

        //根据username查询
        public Consumer selectByUsername(String username);




}
