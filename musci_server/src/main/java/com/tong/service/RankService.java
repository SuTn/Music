package com.tong.service;

import com.tong.pojo.Rank;
import com.tong.pojo.SongList;

public interface RankService {

    public boolean insert(Rank rank);

    /**
     * 查询总分
     * @return
     */
    public int selectScoreSum(Integer songListId);

    /**
     * 总评分人数
     * @return
     */
    public int selectRankNum(Integer songListId);

    /**
     * 计算平均分
     */
    public int rankOfSongListId(Integer songListId);

}
