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
    <title>地名由来</title>
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
                <h1 style="font-size:40px">沱河一号桥</h1>
                <section>
                    <section>
                        <p>沱河一号桥位于安徽省宿州市埇桥区人民路段与沱河交叉处。</p>

                        <p>沱河，古称洨水，今称南沱河，俗称沱河，淮河左岸支流。发源于河南省商丘刘堤，流经夏邑县和永城市，穿过安徽省濉溪县、宿州、灵璧、泗县，至江苏泗洪注入洪泽湖。安徽境内沱河长112 公里，水深1．5～2．0 米，排涝能力5～160 立方米每秒。50 年代初，10 吨以下木船可直达河南永城，1958 年自永城以下兴建8 座节制闸，未建过船设施，拦断河道。</p>

                        <p>沱河自宿州东，宿州地下涵（跨新汴河）起，东南流，经宿东闸、王桥闸、青龙闸、沱河集闸、濠城闸，至樊集进入沱湖，出沱湖后经新沱河东流，于北店子注入漴潼河。</p>
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
