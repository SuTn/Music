package com.tong.service;

import com.tong.pojo.SongList;

import java.util.List;

public interface SongListService {

    public boolean insert(SongList songlist);

    public boolean update(SongList songlist);

    public boolean delete(Integer id);

    public SongList selectByPrimaryKey(Integer id);

    public List<SongList> allSongList();

    //更具标题精确查询
    public List<SongList> songListOfTitle(String title);

    //更具标题模糊查询
    public List<SongList> likeTitle(String title);


    //更具风格模糊查询
    public List<SongList> likesStyle(String style);
}
