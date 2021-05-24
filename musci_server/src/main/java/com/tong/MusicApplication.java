package com.tong;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/*
热更新 热加载
1. 全局搜索（Ctrl+shift+a）  找到registry.. 勾选  compiler.automake.allow.when.app.running
2.执行快捷键 Ctrl+F9
2.xuanz
 */
@SpringBootApplication
@MapperScan("com.tong.dao")
public class MusicApplication {

    public static void main(String[] args) {
        SpringApplication.run(MusicApplication.class, args);
    }

}
