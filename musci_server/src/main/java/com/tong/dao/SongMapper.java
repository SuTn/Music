package com.tong.dao;

import com.tong.pojo.Song;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface SongMapper {

        public int insert(Song song);

        public int update(Song song);

        public int delete(Integer id);

        public Song selectByPrimaryKey(Integer id);

        public List<Song> allSong();

        public List<Song> songOfName(String name);

        //模糊查询
        public List<Song> likeSongOfName(String name);

        public List<Song> songOfSingerId(Integer singerId);
}
