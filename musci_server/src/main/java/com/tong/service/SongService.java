package com.tong.service;


import com.tong.pojo.Song;

import java.util.List;

public interface SongService {

    public boolean insert(Song song);

    public boolean update(Song song);

    public boolean delete(Integer id);

    public Song selectByPrimaryKey(Integer id);

    public List<Song> allSong();

    public List<Song> songOfName(String name);

    //模糊查询
    public List<Song> likeSongOfName(String name);

    public List<Song> songOfSingerId(Integer singerId);
}
