package com.tong.dao;

import com.tong.pojo.SongList;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface SongListMapper {

        public int insert(SongList songlist);

        public int update(SongList songlist);

        public int delete(Integer id);

        public SongList selectByPrimaryKey(Integer id);

        public List<SongList> allSongList();

        //更具标题精确查询
        public List<SongList> songListOfTitle(String title);

        //更具标题模糊查询
        public List<SongList> likeTitle(String title);


        //更具风格模糊查询
        public List<SongList> likesStyle(String style);

}
