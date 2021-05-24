package com.tong.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SongList {
    private int id;
    private String title;
    private String pic;
    private String introduction;
    private String style;


}
