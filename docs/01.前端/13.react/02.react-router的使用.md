---
title: react-router的使用
date: 2023-06-05 07:06:27
permalink: /pages/223a33/
categories: 
  - 前端
  - react
tags: 
  - 
---
## react-router的使用
### 安装
```bash
npm install react-router-dom
```
### 导入组件
导入React Router组件：在需要使用React Router的组件中导入所需的组件，例如：
```jsx
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
```
其中BrowserRouter是React Router的核心组件，Route用于定义路由规则，Link用于定义链接。

### 定义路由规则
使用Route组件定义路由规则
```jsx
<Route exact path="/" component={Home} />
<Route path="/about" component={About} />
<Route path="/contact" component={Contact} />
```
其中exact表示精确匹配，path表示路由路径，component表示对应的组件。

### 定义链接
使用Link组件定义链接
```jsx
<Link to="/">Home</Link>
<Link to="/about">About</Link>
<Link to="/contact">Contact</Link>
```
其中to表示链接的路径。
### 使用Router组件
在应用的根组件中使用Router组件包裹所有需要使用React Router的组件
```jsx
<Router>
  <div>
    <nav>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/about">About</Link>
        </li>
        <li>
          <Link to="/contact">Contact</Link>
        </li>
      </ul>
    </nav>

    <Route exact path="/" component={Home} />
    <Route path="/about" component={About} />
    <Route path="/contact" component={Contact} />
  </div>
</Router>
```
