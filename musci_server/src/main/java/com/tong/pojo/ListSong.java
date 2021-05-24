package com.tong.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 歌曲歌单
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ListSong implements Serializable {
    private int id;
    private int songId;//歌曲id
    private int songListId;//歌单id

}
