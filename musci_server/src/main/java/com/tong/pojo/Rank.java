package com.tong.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Rank {
    private int id;
    private int songListId;
    private int consumerId;
    private int score;
}
