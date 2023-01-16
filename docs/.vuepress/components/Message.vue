<template>
  <div class="resume">
    <div class="top">
      <div class="decoration"></div>
      <div class="decoration"></div>
      <div class="myPhoto"></div>
      <div class="nameCircle"></div>
      <div class="myName">
        <h1>guqzhou</h1>
        <h2></h2>
      </div>
    </div>


    <ul class="wrapper">
      <li class="icon facebook" :class="item.title" v-for="(item,index) in linkList" :key="index">
        <span class="tooltip">{{item.info}}</span>
        <img :src="item.icon" alt=""/>
      </li>
    </ul>

    <div class="content">
      <div class="left">
        <h3>
          前端开发
        </h3>
        <p>我个人比较喜欢编程，是一个对于编程有很多想法的人。喜欢研究新的技能、新的生活方式，因为个人的喜爱，而去创造。</p>
        <div class="block">
          <h4>Passion</h4>
          <ul class="listPassion">
            <li>
              <div class="circle circle-image1">
              </div>
               稳重
            </li>
            <li>
              <div class="circle circle-image2"></div>
               冷静
            </li>
            <li>
              <div class="circle circle-image3"></div>
               做事
            </li>
            <li>
              <div class="circle circle-image4"></div>
              突破
            </li>
          </ul>
        </div>
      </div>
      <div class="right">
        <div class="block">
          <h4>Skill</h4>
          <ul class="listSkill">
            <!-- <ul>
              <li>
                <div class="skillLevel">
                  AE
                  <div class="level2"></div>
                  <div class="level1"></div>
                </div>
              </li>
              <li>
                <div class="skillLevel">
                  PR
                  <div class="level2"></div>
                </div>
              </li>
            </ul> -->
            <li><h5>前端程式</h5></li>
            <ul>
              <li>
                <div class="skillLevel">
                  HTML
                  <div class="level1"></div>
                </div>
              </li>
              <li> 
                <div class="skillLevel">
                  CSS
                  <div class="level1"></div>
                </div>
              </li>
              <li>
                <div class="skillLevel">
                  JS
                  <div class="level2"></div>
                  <div class="level1"></div>
                </div>
              </li>
            </ul>
          </ul>
          <h4>网站初衷</h4>
          <ul class="listAward">
            <li>用于记录知识</li>
            <li>用于记录工作中的问题</li>
            <li>用于记录解决工作中有意思的问题</li>
            <li>用于记录自己觉得每天有意义的事情</li>
          </ul>
        </div>
      </div>
    </div>
    <!-- <div class="footer">
      <h4>Experience</h4>
      <div class="footerCircle"></div>
      <div class="time">
        <div class="decorationLine">June 2016 - August 2016</div>
        <div class="decorationCircle"></div>
        <div class="decorationLine">May 2016 - Present</div>
        <div class="decorationCircle"></div>
        <div class="decorationLine">September 2017 - Present</div>
        <div class="decorationCircle"></div>
      </div> -->
<!--       <div class="footerCircle circle1"></div>
      <div class="footerCircle circle2"></div> -->
      <!-- <ul class="listExperience">
        <li class="year">
          <h5>智園公司</h5>
          <h6>介面設計實習生</h6>
          <ul>
            <li>製作了兩個網站，目前使用中，依照我設計的程式更新網頁。</li>
            <li>設計150頁產品的使用說明書，繼續以此設計增加內容。</li>
          </ul>
        </li>
        <li class="year">
          <h5>粗活少女 </h5>
          <h6>畢業專題製作</h6>
          <ul>
            <li>與創辦者一起設計了五十種不同的工具包裝，每一個工具有一篇專屬的漫畫。</li>
            <li>品牌行銷，粉絲專頁工具小教室單隻影片超過 8000 的觸及率，20以上的自主分享。</li>
            <li>設計、架設品牌型錄網站，超過五十個分頁。  </li>
          </ul>
        </li>
        <li class="year">
          <h5>Blay 機場小助手</h5>
          <h6>介面設計師</h6>
          <ul>
            <li>產品介面設計 一個月超過兩千人下載 app</li>
            <li>UX研究，制定研究方法與問卷，到桃園機場調查</li>
            <li>粉專、Appstore、各大平台的廣告宣傳美術設計</li>
          </ul>
        </li>
      </ul> -->
    <!-- </div> -->
  </div>
</template>

<script>
export default {
    data() {
      return {
        linkList: [
          {
            title: 'weixin',
            info: 'z98724250',
            icon: require('../public/img/微信.png'),
          },
          {
            title: 'qq',
            info: '1179359108',
            icon: require('../public/img/QQ.png'),
          },
          {
            title: 'mail',
            info: 'guqzhou@163.com',
            icon: require('../public/img/邮箱.png'),
          }
        ]
      }
    }
}
</script>

<style scoped>
/* CDN 服务仅供平台体验和调试使用，平台不承诺服务的稳定性，企业客户需下载字体包自行发布使用并做好备份。 */
  /* CDN 服务仅供平台体验和调试使用，平台不承诺服务的稳定性，企业客户需下载字体包自行发布使用并做好备份。 */
@font-face {
  font-family: 'iconfont';  /* Project id 3865008 */
  src: url('//at.alicdn.com/t/c/font_3865008_87hyi89vmnr.woff2?t=1673843110838') format('woff2'),
       url('//at.alicdn.com/t/c/font_3865008_87hyi89vmnr.woff?t=1673843110838') format('woff'),
       url('//at.alicdn.com/t/c/font_3865008_87hyi89vmnr.ttf?t=1673843110838') format('truetype');
}
ul {
  padding: 0;
  list-style: none;
}
a {
  text-decoration: none;
  color: #3b4144;
}
h1,h2,h3,h4,h5,h6 {
  margin: 0;
}
h1 {
  line-height: 60px;
}
h2 {
  font-size: 22px;
  font-family: 'Open Sans', sans-serif;
}
h3 {
  font-size: 15px;
  letter-spacing: 0.5px;
  margin-bottom: 10px;
}
h4 {
  font-size: 20px;
  margin-bottom: 20px;
}
h5 {
  font-size: 13px;
  line-height: 25px;
}
p {
  font-size: 13px;
  line-height: 23px;
}
.resume {
  padding: 25px;
  overflow: hidden;
}
.decoration {
  width: 300px;
  height: 100px;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
  border-radius: 70px;
  position: absolute;
  transform: rotate(-30deg);
}
.decoration:nth-of-type(1) {
  top: -95px;
  left: 74%;
}
.decoration:nth-of-type(2) {
  top: 40px;
  left: 71%;
  width: 400px;
}
.top,.left,.right,.footer {
  padding: 15px;
}
.content {
  display: flex;
}
.left {
  flex: 5;
  padding-right: 30px;
  padding-left: 30px;
}
.right {
  flex: 8;
  padding-left: 40px;
}

/* 分享 */
.wrapper {
  display: flex;
  padding-left: 20px;
}

.wrapper .icon {
  position: relative;
  background: #ffffff;
  border-radius: 50%;
  padding: 8px;
  margin: 6px;
  width: 30px;
  height: 28px;
  font-size: 18px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip {
  position: absolute;
  top: 0;
  font-size: 14px;
  background: #ffffff;
  color: #ffffff;
  padding: 5px 8px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip::before {
  position: absolute;
  content: "";
  height: 8px;
  width: 8px;
  background: #ffffff;
  bottom: -3px;
  left: 50%;
  transform: translate(-50%) rotate(45deg);
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .icon:hover .tooltip {
  top: -42px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

.wrapper .icon:hover span,
.wrapper .icon:hover .tooltip {
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
}

.wrapper .facebook:hover,
.wrapper .facebook:hover .tooltip,
.wrapper .facebook:hover .tooltip::before {
  background: #1877F2;
  color: #ffffff;
}

.wrapper .twitter:hover,
.wrapper .twitter:hover .tooltip,
.wrapper .twitter:hover .tooltip::before {
  background: #1DA1F2;
  color: #ffffff;
}

.wrapper .instagram:hover,
.wrapper .instagram:hover .tooltip,
.wrapper .instagram:hover .tooltip::before {
  background: #E4405F;
  color: #ffffff;
}

.wrapper .github:hover,
.wrapper .github:hover .tooltip,
.wrapper .github:hover .tooltip::before {
  background: #333333;
  color: #ffffff;
}

.wrapper .youtube:hover,
.wrapper .youtube:hover .tooltip,
.wrapper .youtube:hover .tooltip::before {
  background: #CD201F;
  color: #ffffff;
}

.top {
  display: flex;
  position:relative;
  margin-bottom: 30px;
}
.footer {
  margin-top: 30px;
  padding-left: 40px;
}
.myPhoto,.nameCircle {
  width: 120px;
  height: 120px;
  background-color: #fff;
  border-radius: 50%;
  margin-left: 10px;
  background-image: url("https://guqzhou.gitee.io/img/TX.png");
  background-size: 120px 120px;
  background-position: center;
}
.nameCircle {
  position: absolute;
  left: 35px;
  z-index: -1;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
  border: none;
}
.myName {
  padding-left: 40px;
  padding-top: 10px;
}
.circle {
  width: 90px;
  height: 90px;
  background-color: #fff;
  border-radius: 50%;
  margin: 0 auto;
  margin-bottom: 10px;
  border: 1px solid #3b4144;
  background-size: 90px 90px;
  background-position: center;
}
.circle-image1 {
  background-image: url("https://raw.githubusercontent.com/chingwenqqq/resume/master/image/passion_feminism.png")
}
.circle-image2 {
  background-image: url("https://raw.githubusercontent.com/chingwenqqq/resume/master/image/passion_pottery.png")
}
.circle-image3 {
  background-image: url("https://raw.githubusercontent.com/chingwenqqq/resume/master/image/passion_art.png")
}
.circle-image4 {
  background-image: url("https://raw.githubusercontent.com/chingwenqqq/resume/master/image/passion_comic.png")
}

.buttons {
  margin-top: 20px;
  margin-bottom: 40px;
}
.btn {
  padding: 5px 20px;
  background-color: #fbfbff;
  margin-right: 10px;
  border: 1px solid #636366;
  font-family: 'Open Sans', sans-serif;
}
.btn:hover {
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
  border: 1px solid #ddd;
  color: #fff;
}
.listPassion {
  display: flex;
  flex-wrap: wrap;
}
.listPassion > li {
  width: 50%;
  margin-top: 10px;
  margin-bottom: 10px;
  justify-content: center;
  text-align: center;
  font-family: 'Open Sans', sans-serif;
}
.listSkill {
  margin-bottom: 40px;
}
.listSkill > ul{
  display: flex;
  margin-top: 10px;
  margin-bottom: 20px;
}
.listSkill >li {
  padding-left: 10px;
}
.skillLevel {
  width: 65px;
  height: 55px;
  border: 3px solid #dfdfff;
/*  border-radius: 50%;*/  
  text-align: center;
  position: relative;
  margin-left: 10px;
  padding-top: 13px;
  z-index: -2;
}
.level1,.level2 {
  position: absolute;
  background-color: #F8F8FF;
  z-index: -1;
}
.level1 {
  width: 35px;
  height: 30px;
  left: -3px;
  top: 22px;
}
.level2 {
  width: 65px;
  left: -3px;
  top: -3px;
  height: 30px;
}
.listAward > li {
  margin-top: 10px;
  padding-left: 10px;
  font-family: 'Open Sans', sans-serif;
}
.footer {
  position: relative;
}
.footerCircle {
  width: 140px;
  height: 140px;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
  position: absolute;
  border-radius: 50%;
  top: 30px;
  left: -100px;
  z-index: -1;
} 
.time {
  padding-left: 30px;
  width: 100%;
  height: 60px;
  margin-bottom: 27px;
  position: relative;
}
.decorationLine {
  position: absolute;
  height: 6px;
  margin-top: 20px;
  line-height: 35px;
  font-family: 'Open Sans', sans-serif;
}
.decorationCircle {
  position: absolute;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background-color: #82d5ff;
}
.decorationLine:nth-of-type(1) {
  width: 35%;
  top: -20px;
  left: 20px;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
} 
.decorationCircle:nth-of-type(2) {
  top: 0px;
  left: 40%;
}
.decorationLine:nth-of-type(3) {
  width: 50%;
  left: 36%;
  top: 0px;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
}
.decorationCircle:nth-of-type(4) {
  top: 20px;
  left: 89%;
}
.decorationLine:nth-of-type(5) {
  width: 25%;
  left: 69%;
  top: 20px;
  background: linear-gradient(135deg, #ffb2e4, #82d5ff);
} 
.decorationCircle:nth-of-type(6) {
  top: 40px;
  left: 97%;
}
.listExperience {
  display: flex;
  /*padding-left: 30px;*/
}
.listExperience > li {
  padding-left: 20px;
  flex: 3;
}
.listExperience li ul {
  font-size: 13px;
  line-height: 20px;
  margin-top: 10px;
  padding-left: 15px;
  border-left: 3px solid #dfdfff;
/*   background-color: pink; */
}
.listExperience > li > ul > li {
  margin-top: 13px;
} 

@media only screen and (max-width: 700px) {
.resume {
  width: 100%;
  min-width: 300px;
  border: none;
  padding: 50px;
}
.nameCircle {
  top: 15px;
  left: 30px;
}
.content,.listExperience {
  display: block;
}
.top,.footer {
  display: inline-block;
  width: 100%;  
  margin: 0 auto;
}
h4 {
  margin-top: 30px;
}
.myName {
  padding-left: 15px;
  padding-top: 20px;
}
.listPassion > li {
  width: 25%;
}
.right {
  border: none;
  padding-left: 30px;
}
.footer {
  padding-left: 30px;
}
.time {
  display: none;
}
.listExperience > li {
    margin-bottom: 30px;
  } 

}
 @media only screen and (max-width: 576px) {
.resume {
  padding: 10px;
}
.listPassion > li {
  width: 50%;
}
.skillLevel {
  width: 60px;
  margin-left: 0px;
  margin-right: 10px;
}
.listAward > li {
  padding-left: 0px;
}
.decoration:nth-of-type(1) {
  top: -30px;
  left: 50%;
  height: 80px;
}
.listSkill >li {
    padding-left: 0px;
}
.decoration:nth-of-type(2) {
  top: 35px;
  left: 73%;
}
}


</style>
