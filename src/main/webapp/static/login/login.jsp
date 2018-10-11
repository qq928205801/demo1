<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="<%=basepath%>/js/user/user.js"></script>
</head>
<body ontouchstart>
<!--错误提示-->
<div class="weui-toptips weui-toptips_warn "id="js_tooltips">错误提示</div>

<!--页面顶部logo-->
<div class="page__hd" style="text-align: center">
    <img src="<%=basepath%>/images/goyo1.png" height="13%"/>
</div>

<!--用户登录-->
<div class="page__bd">
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd">
                <label class="weui-label">手机号</label>
            </div>
            <div class="weui-cell__bd">
                <input class="weui-input" type="tel" placeholder="请输入手机号" id="userPhone">
            </div>
        </div>

        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">密码</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" type="password" placeholder="请输入密码" id="userPassword"/>
            </div>
        </div>

    </div>
    <div class="weui-btn-area">
        <a class="weui-btn weui-btn_primary"  onclick="userLoginConfirm()">确定</a>
    </div>
    <div class="page__bd page__bd_spacing">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="weui-agree"><a href="javascript:;">忘记密码？</a></div>
            </div>
            <div class="weui-flex__item" style="text-align: right">
                <div class="weui-agree"><a href="<%=basepath%>login/regist.jsp">新用户注册</a></div>
            </div>
        </div>
    </div>
</div>

<!--相关条款-->
<div class="page__ft j_bottom">
    <label for="weuiAgree" class="weui-agree">
        <input id="weuiAgree" type="checkbox" class="weui-agree__checkbox" checked="checked">
            <span class="weui-agree__text">
                阅读并同意<a href="javascript:void(0);">《相关条款》</a>
            </span>
    </label>
</div>

<script>
    var basepath="<%=basepath%>";
</script>

</body>
</html>
