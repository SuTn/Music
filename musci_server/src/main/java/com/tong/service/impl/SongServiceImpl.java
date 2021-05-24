package com.tong.service.impl;


import com.tong.dao.SongMapper;
import com.tong.pojo.Song;
import com.tong.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongServiceImpl implements SongService {

    @Autowired
    private SongMapper songMapper;


    @Override
    public boolean insert(Song song) {
        return songMapper.insert(song)>0;
    }

    @Override
    public boolean update(Song song) {
        return songMapper.update(song)>0;
    }

    @Override
    public boolean delete(Integer id) {
        return songMapper.delete(id)>0;
    }

    @Override
    public Song selectByPrimaryKey(Integer id) {
        return songMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Song> allSong() {
        return songMapper.allSong();
    }

    @Override
    public List<Song> songOfName(String name) {
        return songMapper.songOfName(name);
    }

    //模糊查询
    @Override
    public List<Song> likeSongOfName(String name) {
        return songMapper.likeSongOfName("%"+name+"%");
    }

    @Override
    public List<Song> songOfSingerId(Integer singerId) {
        return songMapper.songOfSingerId(singerId);
    }
}
