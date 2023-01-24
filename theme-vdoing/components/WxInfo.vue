<template>
    <div class="tags-wrapper card-box">
        <router-link to="" class="title iconfont icon-gongzhonghao" title="公众号">
            公众号
        </router-link>
        <div class="wx-content">
            <img src="https://cdn.staticaly.com/gh/guqzhou/photo_gallery@master/blog/202301211504393.jpeg"  style="width:100%;" />
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style lang="stylus" scoped>
.tags-wrapper 
.title
  color var(--textColor)
  opacity 0.9
  font-size 1.2rem
.icon-gongzhonghao:before {
    font-size 1.4rem 
}
.wx-content
  padding 0.8rem 0.5rem 0.5rem 0.5rem
</style>
