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
    <title>地名管理</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <%--<script type="text/javascript" src="<%=basepath%>/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>
    <style type="text/css">
        p {
            text-indent: 2em; /*em是相对单位，2em即现在一个字大小的两倍*/
        }

        article img {
            width: 100%;
        }
    </style>

</head>
<body ontouchstart>
<div class="page">
    <div class="pageContent" id="tpl_feedback">
        <div class="page__bd">
            <article class="weui-article">
                <section>
                    <section>
                        <p>该功能暂未开放。</p>
                    </section>
                </section>
            </article>
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
