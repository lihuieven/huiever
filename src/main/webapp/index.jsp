<%--
  Created by IntelliJ IDEA.
  User: lihuiever
  Date: 2019/7/29
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>梦-IT</title>
    <link rel="stylesheet" href="static/css/index.css"/>
</head>
<body>
<div class="lh">
    <!--导航栏-->
    <div class="header-content">
        <div class="nav">
            <ul class="menu">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="#">我的博客</a></li>
                <li><a href="#">趣味杂谈</a></li>
                <li><a href="#">心情日记</a></li>
                <li><a href="#">历史往事</a></li>
                <li><a href="#">联系博主</a></li>
            </ul>
        </div>
    </div>
    <!--主体模块-->
    <div class="content">
        <!--左主体模块-->
        <div class="content_left f_l">
            <h2>最新文章</h2>
            <c:forEach items="${blogList}" var="list">
                <div class="blogs">
                    <figure>
                        <a href="" title="" target="_blank">
                            <img src="static/images/201905151547465185_s.jpg"
                                 original="static/images/${list.images}"
                                 style="width: 167.5px;height: 137px;display: block;" title="${list.title}">
                        </a>
                    </figure>
                    <ul>
                        <h3>
                            <a title="${list.title}" href="#" target="_blank">${list.title}</a>
                        </h3>
                        <p class="content_zhuti">
                                ${list.content}
                            <a href="#" target="_blank"
                               style="color: #759b08;padding-left:5px;">[详情]
                            </a>
                        </p>
                        <p class="content_zhuti z_t">
                            <span><a href="#">韶华追忆</a></span>
                            <span><a>${list.updatetime}</a></span>
                            <input type="hidden" value="2">
                            <input type="hidden" value="479">
                            <span style="padding-left: 0;">
                                <a href="#">点赞量：55</a>
                            </span>
                            <span>浏览（${list.count}）</span>
                            <span>
                                <a href="#">
                                    <span id="sourceId::479">评论（4)</span>
                                </a>
                            </span>
                        </p>
                    </ul>
                </div>
            </c:forEach>
        </div>
        <div class="content_right f_r">
            <div class="tit01">
                <h3>关注我</h3>
                <div class="gzwm">
                    <ul>
                        <li><a class="xlwb" href="#" target="_blank">新浪微博</a></li>
                        <li><a class="txwb" href="#" target="_blank">腾讯微博</a></li>
                        <li><a class="wx" href="#">邮箱</a></li>
                        <li><a class="feedback" href="#">意见反馈</a></li>
                    </ul>
                </div>
            </div>

            <div class="tit01">
                <h3>热门文章</h3>
            </div>
        </div>
    </div>
</div>


</body>
</html>
