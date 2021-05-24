package com.tong.dao;

import com.tong.pojo.ListSong;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ListSongMapper {

        public int insert(ListSong listSong);

        public int update(ListSong listSong);

        public int delete(Integer id);

        public int deleteBySongIdAndSongListId(Integer songId,Integer songListId);

        public ListSong selectByPrimaryKey(Integer id);

        //查询歌单歌曲

        public List<ListSong> allListSong();

        //根据歌单id查询所有歌曲

        public List<ListSong> listSongOfSongListId(Integer songListId);
}
