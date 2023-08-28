---
title: context的使用
date: 2023-06-05 06:39:41
permalink: /pages/4468f1/
categories: 
  - 前端
  - react
tags: 
  - 
---
## context的使用
一般跨级组件传递
### 使用方法
#### 创建context
React.createContext()方法创建一个Context对象
```jsx
const MyContext = React.createContext(defaultValue);
```
其中defaultValue是可选的,表示组件没有匹配到后传递的默认参数
#### 创建Provider组件
用Context对象的Provider组件将数据传递给子组件
```jsx
<MyContext.Provider value={/* 数据 */}>
  {/* 子组件 */}
</MyContext.Provider>
```
其中value属性是必须的，表示要传递的数据。
#### 子组件获取数据
使用Context对象的Consumer组件或useContext()钩子在子组件中获取数据
##### 方法1
使用Consumer组件：
```jsx
<MyContext.Consumer>
  {value => /* 使用数据 */}
</MyContext.Consumer>
```
##### 方法2
使用useContext()钩子：
```jsx
const value = useContext(MyContext);
```
需要注意的是，使用useContext()钩子需要在函数组件或自定义Hook中使用，而不能在类组件中使用。



