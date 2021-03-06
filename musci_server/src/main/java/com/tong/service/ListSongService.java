package com.tong.service;

import com.tong.pojo.ListSong;

import java.util.List;

public interface ListSongService {

    public boolean insert(ListSong listSong);

    public boolean update(ListSong listSong);

    public boolean delete(Integer id);

    public boolean deleteBySongIdAndSongListId(Integer songId,Integer songListId);

    public ListSong selectByPrimaryKey(Integer id);

    //查询歌单歌曲

    public List<ListSong> allListSong();

    //根据歌单id查询所有歌曲

    public List<ListSong> listSongOfSongListId(Integer songListId);

}
