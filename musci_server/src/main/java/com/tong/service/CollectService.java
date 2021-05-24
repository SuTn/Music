package com.tong.service;

import com.tong.pojo.Collect;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CollectService {

    /**
     *增加
     */
    public boolean insert(Collect collect);

    /**
     * 删除
     */
    public boolean delete(Integer id);


    /**
     * 查询所有收藏
     */
    public List<Collect> allCollect();

    /**
     * 查询某个用户的收藏列表
     */
    public List<Collect> collectOfUserId(Integer userId);

    /**
     * 查询某个用户是否收藏某个歌曲
     */
    public boolean existSongId(@Param("userId") Integer userId, @Param("songId") Integer songId);


    /**
     * 删除g恩据用户id和歌曲id
     */
    public boolean deleteBySongIdUserId(@Param("userId") Integer userId,@Param("songId") Integer songId);

}
