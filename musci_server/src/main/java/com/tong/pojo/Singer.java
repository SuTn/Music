package com.tong.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Singer implements Serializable {
    private int id;
    private String name;
    private Byte sex;

    private String pic;
    private Date birth;
    private String location;
    private String introduction;



}
