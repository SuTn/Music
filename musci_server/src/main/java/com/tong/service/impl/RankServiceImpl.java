package com.tong.service.impl;

import com.tong.dao.RankMapper;
import com.tong.pojo.Rank;
import com.tong.service.RankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankServiceImpl implements RankService {
    @Autowired
    private RankMapper rankMapper;

    @Override
    public boolean insert(Rank rank) {
        return rankMapper.insert(rank)>0;
    }

    /**
     * 查询总分
     *
     * @param songListId
     * @return
     */
    @Override
    public int selectScoreSum(Integer songListId) {
        return rankMapper.selectScoreSum(songListId);
    }

    /**
     * 总评分人数
     *
     * @param songListId
     * @return
     */
    @Override
    public int selectRankNum(Integer songListId) {
        return rankMapper.selectRankNum(songListId);
    }

    /**
     * 计算平均分
     *
     * @param songListId
     */
    @Override
    public int rankOfSongListId(Integer songListId) {
        int rankNum = rankMapper.selectRankNum(songListId);

        if(rankNum == 0){
            return 5;
        }
        return rankMapper.selectScoreSum(songListId)/rankNum;
    }
}
