<template>
    <div class="header">
        <!-- 折叠图片 -->
        <div class="collapse-btn" @click="collapseChange">
            <i class="el-icon-menu"></i>
        </div>
        <div class="logo">music后台管理</div>
        <div class="header-right">
            <div class="btn-fullscreen" @click="handleFullScreen">
                <el-tooltip :content="fullscreen?'取消全屏':'全屏'" placement="bottom">
                <i class="el-icon-rank"></i>
                </el-tooltip>
            </div>
            <div class="user-avator">
                <img src="../assets/img/user.jpg"/>
            </div>
            <!-- 用户名下拉菜单 -->
            <el-dropdown class="user-name" trigger="click" @command="handleCommand">
            <span class="el-dropdown-link">
                {{userName}}
                <i class="el-icon-caret-bottom"></i>
            </span>
            <el-dropdown-menu slot="dropdown">
                <el-dropdown-item command="loginout">退出登录</el-dropdown-item>
            </el-dropdown-menu>
            </el-dropdown>
        </div>

    </div>
</template>


<script>
import bus from "../assets/js/bus"

export default {
    data(){
        return{
            collapse: false,
            fullscreen:false
        }
    },
    computed:{
        userName(){
            return localStorage.getItem("userName");
        }
    },
    methods:{
        //侧边栏折叠
        collapseChange(){
            this.collapse = !this.collapse;
            bus.$emit("collapse",this.collapse);
        },
        // 用户名下拉菜单选择事件
        handleCommand (command) {
        if (command === 'loginout') {
            this.$router.push('/')
            }
        },
        //全屏事件
        handleFullScreen(){
            if(this.fullscreen){
                if(document.exitFullScreen) {
                    document.exitFullScreen();
                } else if(document.mozCancelFullScreen) {
                    document.mozCancelFullScreen();
                } else if(document.webkitExitFullscreen) {
                    document.webkitExitFullscreen();
                } else if(element.msExitFullscreen) {
                    element.msExitFullscreen();
                }

            }else{
                let ele = document.documentElement;
                if (ele.requestFullscreen) {
                    ele.requestFullscreen();
                } else if (ele.mozRequestFullScreen) {
                    ele.mozRequestFullScreen();
                } else if (ele.webkitRequestFullscreen) {
                    ele.webkitRequestFullscreen();
                } else if (ele.msRequestFullscreen) {
                    ele.msRequestFullscreen();
                }

            }
            this.fullscreen = !this.fullscreen;

        }
    }
    
}
</script>




<style scoped>
.header{
    position: relative;
    background-color: #253041;
    box-sizing: border-box;
    width: 100%;
    height: 70px;
    font-size: 22px;
    color: #ffffff;
}
.header .logo{
    float: left;
    line-height: 70px;
}

.collapse-btn{
    float: left;
    padding: 0 21px;
    cursor: pointer;
    line-height: 70px;
}
.header-right{
    float: right;
    padding-right: 50px;
    display: flex;
    height: 70px;
    align-items: center;
}
.btn-fullscreen{
    transform: rotate(45deg);
    margin-right: 5px;
    font-size: 24px;
}
.user-avator {
  margin-left: 20px;
}

.user-avator img {
  display: block;
  width: 40px;
  height: 40px;
  border-radius: 50%;
}
.el-dropdown-link {
  color: #B0B3B2;
  cursor: pointer;
}

.el-dropdown-menu__item {
  text-align: center;
}
</style>