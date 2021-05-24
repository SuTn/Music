package com.tong.service.impl;

import com.tong.dao.SongListMapper;
import com.tong.pojo.SongList;
import com.tong.service.SongListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongListServiceImpl implements SongListService {
    @Autowired
    private SongListMapper songListMapper;

    @Override
    public boolean insert(SongList songlist) {
        return songListMapper.insert(songlist)>0;
    }

    @Override
    public boolean update(SongList songlist) {
        return songListMapper.update(songlist)>0;
    }

    @Override
    public boolean delete(Integer id) {
        return songListMapper.delete(id)>0;
    }

    @Override
    public SongList selectByPrimaryKey(Integer id) {
        return songListMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<SongList> allSongList() {
        return songListMapper.allSongList();
    }

    @Override
    public List<SongList> songListOfTitle(String title) {
        return songListMapper.songListOfTitle(title);
    }

    @Override
    public List<SongList> likeTitle(String title) {
        return songListMapper.likeTitle(title);
    }

    @Override
    public List<SongList> likesStyle(String style) {
        return songListMapper.likesStyle(style);
    }
}
