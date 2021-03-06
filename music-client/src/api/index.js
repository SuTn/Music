import Axios from "axios";
import {get,post} from "./http";

//============歌手相关================
//查询歌手
export const getAllSinger =() => get(`singer/allSinger`);

//根据性别查询歌手
export const getSingerOfSex =(sex) => get(`singer/singerOfSex?sex=${sex}`);







//============歌曲相关================
//根据歌手id查询歌曲
export const songOfSingerId =(id) => get(`song/singer/detail?singerId=${id}`);
//根据歌曲id查询歌曲对象
export const songOfSongId =(id) => get(`song/songOfSongId?songId=${id}`);
//根据歌手名字模糊查询歌曲
export const likeSongOfName =(keywords) => get(`song/likeSongOfName?songName=${keywords}`);

//============歌单相关================
//查询歌单
export const getAllSongList =() => get(`songList/allSongList`);

//根据标题模糊查询歌单
export const getSongListLikeTitle = (title) => get(`songList/likeTitle?title=${title}`);

//根据风格糊查询歌单
export const getSongListLikeStyle = (style) => get(`songList/likeStyle?style=${style}`);


//============歌单的歌曲相关============
//根据歌单id查询歌曲列表
export const listSongDetail = (songListId) => get(`listSong/detail?songListId=${songListId}`);

//============用户相关================
//查询用户
export const getAllConsumer =() => get(`consumer/allConsumer`);

//注册
export const SignUp = (params) =>post(`/consumer/add`,params);

//登陆
export const loginIn = (params) =>post(`/consumer/login`,params);

//根据id查询用户
export const getUserOfId =(id) => get(`consumer/selectByPrimaryKey?id=${id}`);

//更新用户
//注册
export const updateUserMsg = (params) =>post(`/consumer/update`,params);





//下载音乐
export const download = (url)  => Axios({
    method: 'get',
    url: url,
    responseType: 'blob'
});

//============评价================
//获取指定歌单的平均分
export const getRankOfSongListId =(songListId) => get(`/rank/avg?songListId=${songListId}`);

//新增评价
export const setRank = (params) =>post(`/rank/add`,params);

//============评论================


//新增评论
export const setComment= (params) =>post(`/comment/add`,params);

//给评论点赞
export const setLike= (params) =>post(`/comment/like`,params);

//返回当前歌单或歌曲评论列表
export const getAllComment =(type,id) => {
    if(type == 0){ //歌曲
        return get(`/comment/commentOfSongId?songId=${id}`);

    }else{//歌单
        return get(`/comment/commentOfSongListId?songListId=${id}`);
    }

}


//===============收藏===================
//新增收藏
export const setCollect =(params) => post(`/collect/add`,params);
//指定用户的收藏列表
export const getCollectOfUserId = (userId) => get(`/collect/collectOfUserId?userId=${userId}`);


