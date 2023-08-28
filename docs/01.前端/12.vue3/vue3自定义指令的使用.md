## vue3自定义指令的使用
vue3自定义指令的生命周期钩子函数
```vue
<script>
const vHeight = () => {
  created() {},   // 元素初始化的时候调用
  beforeMount() {},  // 指令绑定到元素后调用，只调用一次
  mounted() {},  // 元素插入父级dom调用
  beforeUpdate(), // 元素被更新之前调用
   updated(){},  // 这个周期方法被移除 
   beforeUnmount(){}, // 在元素被移除前调用
   unmounted(){}，//指令被移除后只调用一次   
}

// 里面有三个参数el绑定的元素、参数都放在第二个元素arg是个值，值是value里边，oldvalue是上一次的值、modifiers自定义修饰符，instance这个组件的实例，第三个当前元素的虚拟dom

</script>
```
