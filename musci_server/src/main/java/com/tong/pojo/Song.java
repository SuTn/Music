package com.tong.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Song {
    private int id;
    private int singerId;
    private String name;
    private String introduction;
    private Date createTime;
    private Date updateTime;
    private String pic;
    private String lyric;
    private String url;





}
