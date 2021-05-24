<template>
    <div class="song-list">
        <ul class="song-list-header">
            <li v-for="(item,index) in songStyle" :key="index" @click="handleChangeView(item.name)"
                :class="{active:item.name==activeName}">
                {{item.name}}
            </li>
        </ul>




        <div>
            <content-list :contentList="data"></content-list>
            <div class="pagination">
                <el-pagination @current-change = "handleCurrentChange" background layout="total,prev,pager,next"
                    :current-page="currentPage" :page-size="pageSize" :total="albumDatas.length">

                </el-pagination>
            </div>
        </div>
    </div>
</template>
<script>
import ContentList from '../components/ContentList';
import {getAllSongList,getSongListLikeStyle} from '../api/index';
import {mixin} from "../mixins";
import {songStyle} from '../assets/data/songList';

export default {
    name: 'song-list',
    components:{
        ContentList
    },
    data(){
        return{
            albumDatas: [],
            pageSize:15,      //页面大小 
            currentPage: 1,     //当前页
            songStyle: [],
            activeName: '全部歌单'    //当前风格
        }
    },
    mounted(){
        this.getSongList();
        this.songStyle = songStyle;
    },
    computed:{
        data(){
            return this.albumDatas.slice((this.currentPage-1)*this.pageSize,this.currentPage*this.pageSize)
        }
    },
    methods:{
        getSongList(){
           
            getAllSongList()
                .then(res =>{
                   
                   this.albumDatas = res
                   
                })
            
        },
        //获取当前页
        handleCurrentChange(val){
            this.currentPage = val;
        },
         //根据style显示对应的歌单
        handleChangeView(name){
            this.activeName = name;
            this.albumDatas = [];
            if(name == '全部歌单'){
                this.getSongList();
            }else{
                this.goSongListOfStyle(name)
            }
        },
        //根据style查询对应的歌单
        goSongListOfStyle(style){
            getSongListLikeStyle(style)
                .then(res =>{
                        this.currentPage = 1;
                        this.albumDatas = res;
                    }) 
        },
    }
}
</script>

<style lang="scss" scoped>
@import '../assets/css/song-list.scss';
</style>