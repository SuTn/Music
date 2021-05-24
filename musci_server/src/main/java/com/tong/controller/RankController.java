package com.tong.controller;

import com.alibaba.fastjson.JSONObject;
import com.tong.pojo.Rank;
import com.tong.service.RankService;
import com.tong.utils.Consts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;



@RestController
@RequestMapping("/rank")
public class RankController {

    @Autowired
    private RankService rankService;

    /**
     * 新增评价
     */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public Object add(HttpServletRequest request){
        JSONObject jsonObject = new JSONObject();
        String songListId = request.getParameter("songListId");
        String consumerId = request.getParameter("consumerId");
        String score = request.getParameter("score");

        Rank rank = new Rank();
        rank.setSongListId(Integer.parseInt(songListId));
        rank.setConsumerId(Integer.parseInt(consumerId));
        rank.setScore(Integer.parseInt(score));
        boolean flag = rankService.insert(rank);

        if(flag){
            jsonObject.put(Consts.CODE,1);
            jsonObject.put(Consts.MSG,"评价成功");
            return jsonObject;
        }

        jsonObject.put(Consts.CODE,0);
        jsonObject.put(Consts.MSG,"评价失败");

        return jsonObject;




    }

    /**
     * 计算平均分
     */
    @RequestMapping(value = "/avg",method = RequestMethod.GET)
    public Object avg(HttpServletRequest request){
        String songListId = request.getParameter("songListId");
        return rankService.rankOfSongListId(Integer.parseInt(songListId));



    }








}
