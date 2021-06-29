<%--
  Created by IntelliJ IDEA.
  User: 24508
  Date: 2021/5/3
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- 引入css核心文件 -->
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
    <!-- 引入Jquery核心js文件-->
    <script src="js/jquery-3.5.1.js" type="text/javascript" charset="utf-8"></script>
    <!-- 引入BootStrap的核心js文件 -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

<nav class="navbar navbar-default  navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">switch</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">website</a>
        </div>
        <div >
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        safari <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp">mainPage</a></li>
                        <li class="divider"></li>
                        <li><a href="sameHobby.html">match</a></li>
                        <li class="divider"></li>
                        <li><a href="counter.jsp">counter</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="find some friends">
                </div>
                <button type="submit" class="btn btn-default">find</button>
            </form>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a class="btn  glyphicon glyphicon-user"data-toggle="modal" data-target="#newModal">register</a></li>
                <li><a class="btn  glyphicon glyphicon-log-in"data-toggle="modal" data-target="#myModal">sign in</a></li>
            </ul>
        </div>

    </div>


</nav>


