<template>
  <div class="footer">
    <div class="icons" v-if="social && social.icons">
      <a
        :href="item.link"
        :title="item.title"
        :class="['iconfont', item.iconClass]"
        v-for="(item, index) in social.icons"
        :key="index"
        target="_blank"
      >
      </a>
    </div>

    <!--Vdoing主题遵循MIT协议，完全开源且免费。如果您对主题的修改并不大，希望您保留主题的链接。-->
    Theme by <a href="https://github.com/xugaoyi/vuepress-theme-vdoing" target="_blank" title="本站主题">Vdoing</a>
    <template v-if="footer">
       | Copyright © {{ footer.createYear }}-{{ new Date().getFullYear() }}
      <span v-html="footer.copyrightInfo"></span>
    </template>
    <meting-js
      server="netease"
      type= "playlist"
      fixed= "true"
      mutex = "true"
      preload= "auto"
      listFolded = "true"
      order="random"
      id="2895345897">
    </meting-js>
      <!-- id: '', // 歌曲id /播放列表id /专辑id /搜索关键字
      server: '', // 音乐平台:网易、腾讯、酷狗、虾米、百度 / netease, tencent, kugou, xiami, baidu
      type: '', //播放类型: 歌曲，播放列表，专辑，搜索，艺术家 / song, playlist, album, search, artist
      fixed: false, // 不开启吸底模式
      mini: false,  // 不开迷你模式
      listFolded: false, // 折叠歌曲列表
      theme: '#2980b9	' ,//主题
      autoplay: false, // 是否自动播放
      preload: "auto", // 自动预加载歌曲
      loop: "all", // 播放循环模式，all全部循环 one单曲循环 none只播放一次
      order: "list", //  播放模式，list列表播放, random随机播放
      volume: 0.7, //默认音量，请注意播放器会记忆用户设置，用户手动设置音量后默认音量即失效
      mutex: true, //互斥，阻止多个播放器同时播放，当前播放器播放时暂停其他播放器
      listFolded: '', // list-folded指示列表是否应该首先折叠
      height: '340px'// list-max-height  播放高度 -->
  </div>
</template>

<script>

export default {
  computed: {
    social() {
      return this.$themeConfig.social
    },
    footer() {
      return this.$themeConfig.footer
    }
  },
  data() {
    return {
    }
  }
}
</script>

<style lang='stylus'>
// $mobileSidebarWidth = $sidebarWidth * 0.82

.footer
  padding 5rem 1.5rem 2.5rem 
  text-align center
  color #666
  box-sizing border-box
  font-size .85rem
  transition all .2s ease
  .icons
    margin-bottom 12px
    .iconfont
      padding 0 10px
      font-size 1.3rem
  a
    color inherit
    &:hover
      color $accentColor

@media (min-width: ($MQMobile + 1px))
  .sidebar-open .footer
    width auto
    padding-left ($sidebarWidth + 1.5rem)

@media (min-width 1520px)
  .have-rightmenu .footer
    padding-right ($rightMenuWidth + 1.5rem)

.no-sidebar .footer
  width auto
  padding-left 1.5rem

</style>
