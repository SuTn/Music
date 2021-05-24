# Music
## 这是一个基于springBoot2.4.5 + Vue2.9.6 的音乐网站项目

视频演示

![music网站展示](https://raw.githubusercontent.com/SuTn/PicBed-PicX/master/pic/music网站展示.5fyrjd58lbg0.gif)

### 1.项目介绍
#### 1.1 开发环境

JDK：jdk-8

mysql：mysql-5.7.21-1-macos10.13-x86_64

node：v12.4.0

IDE：IntelliJ IDEA 2019

Maven 3.6.3

#### 2.4项目介绍
主要分为 
server（后端）----------------------> 后端实现           
manage(后端管理) ----------------------> 前端实现    
client(前端页面）----------------------> 前端实现  

##### server（后端）
Mysql MyBatis
主要包含
- pojo（实体类）
定义数据库表所对应的实体类。
- dao（Mapper的接口定义和xml实现 xml是现在resource中）
数据操作层：向数据库发送 SQL 语句，完成数据库操作。
- Service （服务处）
服务层：完成业务逻辑处理。调用 Mapper 层操作数据库。
分为 Service 接口 + Service 实现，用面向接口的编程思想，方便后续功能的解耦及扩展。
- Controller （Controller 层）
控制层：对请求和响应进行控制，调用 Service 层进行业务逻辑处理，最后将处理好的数据返回给前端。

```
.
├── avatorImages // 用户头像
├── img
│   ├── singerPic // 歌手图片
│   ├── songListPic // 歌单图片
│   └── songPic // 歌曲图片
├── song // 存放歌曲
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.tong
│   │   │       ├── config // 配置（跨域）
│   │   │       ├── controller // 控制层，接收请求返回响应
│   │   │       ├── dao // 数据操作层
│   │   │       ├── pojo // 实体类
│   │   │       ├── service
│   │   │       │   └── impl // Service 层的接口
│   │   │       └── HwMusicApplicationTests.java // 项目入口
│   │   └── resources
│   │       ├── mapper // mapper.xml文件，操作数据库
│   │       ├── static // 存放静态资源
│   │       ├── templates
│   │       └── application.properties // 连接数据库
│   └── test
│       └── java
│           └── com.example.demo // 测试用的
├── pom.xml // 添加相关依赖和插件
└── target
```


##### manage(后端管理)
实现管理者的增删查改，已经歌单、歌曲、歌手页面的搭建,使用 Element UI 快速搭建。
```
.
├── build
├── config
├── node_modules
├── index.html
├── package.json
├── src
│   ├── App.vue
│   ├── main.js
│   ├── api
│   ├── assets
│   ├── mixins
│   ├── components
│   │   ├── Header.vue
│   │   ├── Home.vue
│   │   ├── Sidebar.vue
│   │   └── SongAudio.vue
│   ├── pages
│   │   ├── CollectPage.vue
│   │   ├── CommentPage.vue
│   │   ├── ConsumerPage.vue
│   │   ├── InfoPage.vue
│   │   ├── ListSongPage.vue
│   │   ├── Login.vue
│   │   ├── SingerPage.vue
│   │   ├── SongListPage.vue
│   │   └── SongPage.vue
│   ├── router
│   └── store
├── static
└── test
```
##### client(前端页面)
实现用户的增删查改，歌曲的收藏、评论、播放等功能，构架如下：
```
.
├── build // webpack相关配置文件
├── config // vue基本配置文件
├── node_modules // 包
├── index.html // 入口页面
├── package.json // 管理包的依赖
├── src // 项目源码目录
│   ├── assets  // 静态资源，图片、js、css 等
│   ├── api  // 封装请求的 api
│   ├── mixins // 公共方法
│   ├── router // 路由
│   ├── store // 管理数据
│   ├── components
│   │   ├── AlbumContent.vue // 展示歌单歌手包含的歌曲
│   │   ├── Comment.vue // 评论
│   │   ├── ContentList.vue // 展示歌单歌手区
│   │   ├── LoginLogo.vue // 登录界面的logo
│   │   ├── PlayBar.vue // 页面底部的播放控制区
│   │   ├── ScrollTop.vue // 回到顶部
│   │   ├── SongAudio.vue // 接收音乐并播放的位置
│   │   ├── Swiper.vue // 轮播图
│   │   ├── TheFooter.vue // 页脚
│   │   ├── TheHeader.vue // 页头
│   │   ├── TheAside.vue // 播放列表
│   │   ├── Upload.vue // 修改头像
│   │   ├── Info.vue // 个人信息区
│   │   └── search // 搜索区
│   │       ├── SearchSongLists.vue // 按歌单搜索
│   │       └── SearchSongs.vue // 按歌手搜索
│   ├── pages // 组件
│   │   ├── 404.vue // 404
│   │   ├── Home.vue // 首页
│   │   ├── Setting.vue // 设置
│   │   ├── Login.vue // 登录区
│   │   ├── LoginUp.vue // 注册区
│   │   ├── Lyric.vue // 歌词显示区
│   │   ├── MyMusic.vue // 我的收藏区
│   │   ├── Search.vue // 搜索区
│   │   ├── Singer.vue // 歌手区
│   │   ├── SingerAlbum.vue // 歌手详情
│   │   ├── SongList.vue // 歌单区
│   │   └── SongListAlbum.vue // 歌单详情
│   ├── main.js // 入口js文件
│   └── App.vue // 根组件
├── static // 存放静态资源
├── test // 测试文件目录
├── .babelrc // bable 编译配置
└── .gitignore // 提交忽略的文件配置
```

#### 2.思路和遇到的问题
- 作者的思路：

创建一个vue项目后，在 views 文件夹中写一个页面的组件，因为代码都放在一起对后期维护和修改都不方便，所以把他们根据功能或者位置拆分开，放到 components 文件夹下面去实现，最后再整合到 views 文件夹下。加载到 App.vue 文件中，最后渲染到页面中。

最开始构建页面可以写死，当基本样子搭起来之后就可以去向后端去请求数据，请求数据用到的是axios插件，获取到数据后console一下，在控制台查看请求的数据，确保数据保存到正确的变量中去（这里如果遇到跨域的问题可以在后端用 CORS 解决）。

组件的问题解决了接下来就是访问的问题，我们如何通过点击的时候切换组件呢？我们在 router 文件夹中引入组件，给它们设定访问它们的路径。这里用到了vue-router插件。

随着组件的增多，组件之间的传值就是问题，不可能一些数据一直好几个组件里一直传，我们需要把它们单独拿出来放到 store 文件夹下面保存起来，当需要的时候在获取（这里通过 sessionStorage 解决vuex刷新数据丢失问题）。这里用到了vuex组件。

不同的组件有时候会用到相同的方法，当要修改方法时就要改好多地方，所以把它们单独拿出来放到mixins文件夹下面，当用到这些方法的时候在对应组件中引入即可。
- 遇到的问题


1.版本不匹配，跨域的实现需要根据spingboot自己的版本进行改写，网上很多。
2.vue前端一些问题，播放，搜索的小问题，自己进行了改进。
3.注意设置上传的是文件大小设置，不然会导致后端报错，上传失败。

说一下自己的感想，感觉项目使用的前端部分较多，后端技术没有应用很多，里面设计的小错误也很多，作者思路有一些混乱，算是当作练手了吧。


#### 参考：
b战王汗远的视频教程
https://www.bilibili.com/video/BV1Ck4y127cg?p=143


