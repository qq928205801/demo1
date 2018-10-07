<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:21
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
    <title>信息留言</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <%--<script type="text/javascript" src="<%=basepath%>/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>
</head>
<body ontouchstart>
<div class="page">
    <div class="pageContent" id="tpl_feedback">
        <div class="page__bd page__bd_spacing">
            <div class="weui-panel weui-panel_access">
                <div class="weui-panel__hd">
                    <a href="javascript:void(0);" class="weui-cell weui-cell_access weui-cell_link">
                        <div class="weui-cell__bd">查看更多历史留言信息</div>
                        <span class="weui-cell__ft"></span>
                    </a>
                </div>
                <div class="weui-panel__bd">
                    <div class="weui-media-box weui-media-box_text">
                        <h4 class="weui-media-box__title">2014-01-02</h4>
                        <p class="weui-media-box__desc">由各种物质组成的巨型球状天体，叫做星球。星球有一定的形状，有自己的运行轨道。</p>
                    </div>
                    <div class="weui-media-box weui-media-box_text">
                        <h4 class="weui-media-box__title">2015-06-02</h4>
                        <p class="weui-media-box__desc">由各种物质组成的巨型球状天体，叫做星球。星球有一定的形状，有自己的运行轨道。</p>
                    </div>
                    <div class="weui-media-box weui-media-box_text">
                        <h4 class="weui-media-box__title">2017-06-02</h4>
                        <p class="weui-media-box__desc">由各种物质组成的巨型球状天体，叫做星球。星球有一定的形状，有自己的运行轨道。</p>
                    </div>
                </div>
            </div>

            <br><br><br><br><br>
            <div class="weui-cells weui-cells_form">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <textarea class="weui-textarea" placeholder="请输入信息" rows="3"></textarea>
                        <div class="weui-textarea-counter"><span>0</span>/200</div>
                    </div>
                </div>
            </div>
            <br>
            <a href="javascript:addBigService();" class="weui-btn weui-btn_primary">发送</a>
            <br><br><br><br><br>
        </div>
    </div>
</div>
<script type="text/javascript">
    var basepath = "<%=basepath%>";
    /**
     * 开始自动加载find
     */
    $(document).ready(function () {
    })
</script>
</body>
</html>
