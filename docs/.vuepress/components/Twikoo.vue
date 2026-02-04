<template>
  <div id="tcomment"></div>
</template>

<script setup>
import { ref, onMounted, watch, getCurrentInstance, nextTick } from "vue";
const { proxy } = getCurrentInstance();
const twikoo = ref("");
const firstLoad = ref(true);
const waitTime = 700;
const archives = "/archives/";

// Helper functions (formerly methods)
const isFourZeroFour = (route) => {
  let flag = true;
  proxy.$site.pages.forEach((item) => {
    if (item.path == route.path) {
      flag = false;
    }
  });
  return flag;
};

const getCommentByFrontmatter = (route) => {
  let comment = true;
  proxy.$site.pages.forEach((item) => {
    if (item.path == route.path) {
      comment = item.frontmatter.comment;
    }
  });
  return comment;
};

const updateComment = () => {
  let tk_icon = document.getElementsByClassName("tk-icon")[0];
  tk_icon ? tk_icon.click() : undefined;
};

const deleteComment = () => {
  let comment = document.getElementById("twikoo");
  comment ? comment.parentNode.removeChild(comment) : "";
};

const loadTwikoo = () => {
  let page = document.getElementsByClassName("page")[0];
  let comment = document.getElementById("twikoo");
  // comment 不存在代表曾初始化过，后面被删除
  comment ? (twikoo.value = comment) : (comment = twikoo.value);
  page ? (comment ? page.appendChild(comment) : page.appendChild(twikoo.value)) : "";
  updateComment();
};

const twikooInit = () => {
  // eslint-disable-next-line no-undef
  twikoo
    .init({
      // envId 要切换成自己的
      envId: "https://twikoo.guqzhou.tech/",
      el: "#tcomment",
      onCommentLoaded: function () {
        // console.log("评论加载或评论成功");
      },
    })
    .then(() => {
      loadTwikoo();
    });
};

// Lifecycle hooks
onMounted(() => {
  // 不初始化评论区的页面：frontmatter 的 comment: false 的文章页、首页、归档页、404 页面
  if (
    (proxy.$frontmatter.comment == undefined || proxy.$frontmatter.comment) &&
    proxy.$route.path != "/" &&
    proxy.$route.path != archives &&
    !isFourZeroFour(proxy.$route)
  ) {
    setTimeout(() => {
      twikooInit();
    }, waitTime);
  }
});

// Watchers
watch(
  () => proxy.$route,
  (to, from) => {
    // 404 页面、不同的标题会触发路由，禁止掉
    if (to.path == "/" || to.hash != "" || isFourZeroFour(to)) {
      return;
    }
    // 进入首页、进入 frontmatter 的 comment: false 页面，删除评论区
    if (to.path == "/" || getCommentByFrontmatter(to) == false) {
      deleteComment();
      return;
    }
    // 初始化评论条件：来自首页，来自归档页、来自 frontmatter 的 comment: true 的文章页
    if (from.path == "/" || from.path == archives || !getCommentByFrontmatter(from)) {
      firstLoad.value
        ? setTimeout(() => {
            twikooInit();
            firstLoad.value = false;
          }, waitTime)
        : twikooInit(); // 如果加载过一次评论区，则直接获取
    } else if (to.path != "/" && to.hash == "") {
      // 文章页之间跳转，重新获取评论
      setTimeout(() => {
        updateComment();
      }, waitTime);
    }
  },
);
</script>

<style>
.twikoo .tk-comments {
  margin-top: 20px;
}
.twikoo .el-textarea__inner {
  background-image: url("../public/img/猫.png");
  background-repeat: no-repeat;
  background-size: auto;
  background-position: 99%;
}
</style>
