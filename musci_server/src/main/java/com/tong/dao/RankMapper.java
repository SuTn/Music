package com.tong.dao;

import com.tong.pojo.Rank;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface RankMapper {

        public int insert(Rank rank);

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


}
