<template>
  <div id="aplayer" ref="aplayer"></div>
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
</template>

<script>
export default {
  name: "Music",
  mounted() {
    const ap = new APlayer({
      container: this.$refs.aplayer,
      fixed: true,
      volume: 0.7, //默认音量，请注意播放器会记忆用户设置，用户手动设置音量后默认音量即失效
      mutex: true,
      audio: [
        {
          name: 'Children of the Dark (2021)',           //歌曲名称
          artist: 'Mono Inc',       //歌曲作者
          url: 'https://music.163.com/song/media/outer/url?id=1871035439',         //歌曲源文件地址 https://music.163.com/#/song?id=26270153
          cover: 'https://p1.music.126.net/vUE_DpHq_LW9EXIgwCXIiQ==/109951166302123364.jpg?param=130y130',     //歌曲封面地址
          lrc:  '',        //歌曲的歌词文件
          theme: '#eeeeee'        //主题颜色（优先）
        },
        {
          name: 'Letting Go',           //歌曲名称
          artist: 'Felix-zor',       //歌曲作者
          url: 'https://music.163.com/song/media/outer/url?id=1983501304',         //歌曲源文件地址 https://music.163.com/#/song?id=26270153
          cover: 'https://p2.music.126.net/fK8_Pv1MLw2ETGoNnjRZaA==/109951167898213382.jpg?param=130y130',     //歌曲封面地址
          lrc:  '',        //歌曲的歌词文件
          theme: '#eeeeee'        //主题颜色（优先）
        },

        {
          name: 'Tiktok Baby',           //歌曲名称
          artist: '947.ASH',       //歌曲作者
          url: 'https://music.163.com/song/media/outer/url?id=1948907975',         //歌曲源文件地址 https://music.163.com/#/song?id=26270153
          cover: 'https://p2.music.126.net/-YVfvJXqLaCXiystmvQgHw==/109951167446499119.jpg?param=130y130',     //歌曲封面地址
          lrc:  '',        //歌曲的歌词文件
          theme: '#eeeeee'        //主题颜色（优先）
        },

        {
        name: 'New York',           //歌曲名称
        artist: 'Baptiste Giabiconi',       //歌曲作者
        url: 'https://music.163.com/song/media/outer/url?id=26270153',         //歌曲源文件地址 https://music.163.com/#/song?id=26270153
        cover: 'https://p1.music.126.net/5VVzr_jdGXKBEjQgKnJHyg==/109951164923180357.jpg?param=130y130',     //歌曲封面地址
        lrc:  '',        //歌曲的歌词文件
        theme: '#eeeeee'        //主题颜色（优先）
      },
        {
          name: '陪在你身边',           //歌曲名称
          artist: '刘思达/h3R3',       //歌曲作者
          url: 'https://music.163.com/song/media/outer/url?id=1999010719',         //歌曲源文件地址
          cover: 'https://p1.music.126.net/xulVS0_jrfKpWAQPScAwMw==/109951168065505264.jpg?param=130y130',     //歌曲封面地址
          lrc:  'https://cdn.back2me.cn/lrc/%E6%80%AA%E7%89%A9.lrc',        //歌曲的歌词文件
          theme: '#eeeeee'        //主题颜色（优先）
        }]
    });
  }
}
</script>

<style scoped>

</style>
