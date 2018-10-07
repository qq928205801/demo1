<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>控制台</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/backstageResource/Css/identify.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/backstageResource/Css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/backstageResource/Css/account.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/backstageResource/Css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/backstageResource/Css/control_index.css"/>
    <script type="text/javascript" src="<%=basepath%>/backstageResource/Js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="<%=basepath%>/backstageResource/Js/layer/layer.js"></script>
    <script type="text/javascript" src="<%=basepath%>/backstageResource/Js/haidao.offcial.general.js"></script>
    <script type="text/javascript" src="<%=basepath%>/backstageResource/Js/select.js"></script>
    <script type="text/javascript" src="<%=basepath%>/backstageResource/Js/haidao.validate.js"></script>

</head>

<body>
<div class="view-topbar">
    <div class="topbar-console">
        <div class="tobar-head fl">
            <a href="#" class="topbar-logo fl">
                <span><img src="<%=basepath%>/backstageResource/Images/logo.png" width="20" height="20"/></span>
            </a>
            <a href="index.html" class="topbar-home-link topbar-btn text-center fl"><span>管理控制台</span></a>
        </div>
    </div>
    <div class="topbar-info">
        <ul class="fr">


            <li class="fl topbar-info-item">
                <div class="dropdown">
                    <a href="#" class="topbar-btn">
                        <span class="fl text-normal">退出</span>

                    </a>

                </div>
            </li>
        </ul>
    </div>
</div>
<div class="view-body">
    <div class="view-sidebar">
        <div class="sidebar-content">

            <div class="sidebar-nav">
                <div class="sidebar-title">
                    <a href="#">
                        <span class="icon"><b class="fl icon-arrow-down"></b></span>
                        <span class="text-normal">系统中心</span>
                    </a>
                </div>
                <ul class="sidebar-trans">
                    <li>
                        <a href="userInfo.html">
                            <b class="sidebar-icon"><img src="<%=basepath%>/backstageResource/Images/icon_cost.png" width="16" height="16"/></b>
                            <span class="text-normal">查看所有账号信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="identify.html">
                            <b class="sidebar-icon"><img src="<%=basepath%>/backstageResource/Images/icon_authentication.png" width="16"
                                                         height="16"/></b>
                            <span class="text-normal">新建县区管理账号</span>
                        </a>
                    </li>
                    <li>
                        <a href="message.html">
                            <b class="sidebar-icon"><img src="<%=basepath%>/backstageResource/Images/icon_news.png" width="16" height="16"/></b>
                            <span class="text-normal">新建管理账号</span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <div class="view-product" style="background-color: #1c3658;">
        <div class="info-center">
            <div class="manage-head">
                <h6 class=" padding-left manage-head-con "><font color="#C0CAD6">${disName}&nbsp;&nbsp;${department.name}&nbsp;&nbsp;新建${mark}管理账号</font></h6>
            </div>
            <form class="country_user_from" action="<%=basepath%>/backstage/registered" method="post" autocomplete="off">
                <input name="userID" type="hidden" value="${existUser.usrid}">
                <div class="info-center-con">
                    <div class=" info-center-title h5 margin-big-top clearfix">
                        <span class="fl padding-large-right"><font color="#C0CAD6">选择地区</font></span>
                        <select name="discode">
                            <c:forEach items="${districts}" var="district">
                                <option value="${district.discode}">${district.name}</option>
                            </c:forEach>
                        </select>

                    </div>
                    <div class=" info-center-title h5 margin-big-top clearfix name">
                        <span class="fl padding-large-right"><font color="#C0CAD6">账号</font></span>
                        <br/>
                        <br/>
                        <input type="text" id="username" name="username" placeholder="  输入账号"/>
                    </div>
                    <div class=" info-center-title h5 margin-big-top clearfix pwd">
                        <span class="fl"><font color="#C0CAD6">密码</font></span>
                        <br/>
                        <br/>
                        <input type="password" id="password" name="password" placeholder="  输入密码"/>
                    </div>
                    <input type="submit" class="btn text-center login-btn" value="立即新建">
                </div>
            </form>


        </div>

    </div>
</div>

<script>
    $(".sidebar-title").live('click', function () {
        if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
            $(this).next().slideDown(200);
            $(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
        } else {
            $(this).next().slideUp(200);
            $(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
        }
    });
</script>
<style>
    .name input {
        width: 90%;
        height: 40px;
        outline: none;
        border: none;

        border-radius: 8px;
        -webkit-border-radius: 8px;
        margin-left: 5%;
        background-color: #dde6ea;
    }

    .pwd input {
        width: 90%;
        height: 40px;
        outline: none;
        border: none;
        background-color: #dde6ea;
        border-radius: 8px;
        -webkit-border-radius: 8px;
        margin-left: 5%;
    }

    .login-btn {
        margin-top: 50px;
    }

    .btn {
        display: block;
        width: 280px;
        height: 40px;
        color: #c1c8d1;
        background-color: #2a799f;
        border-radius: 8px;
        -webkit-border-radius: 8px;
        margin-left: 20px;
        margin-top: 30px;
        line-height: 40px;
        cursor: pointer;
        border: 1px solid #598fab;
    }
</style>
</body>

</html>