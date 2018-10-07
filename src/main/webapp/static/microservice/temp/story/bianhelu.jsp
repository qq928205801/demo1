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
                <h1 style="font-size:40px">汴河路</h1>
                <section>
                    <section>
                        <p>辖区内汴河、唐河横贯其中，睢引河、铁路运河纵穿而过，水系发达，河道畅通；206国道、合徐高速、泗永高速、京沪铁路纵横交织，路网贯通全国各地，交通便利，地理位置优越。街道办事处结合自身实力和发展优势，以大手笔规划了5818工程，即：以工业化的理念倾力打造一个功能齐全，集观光、旅游、休闲、娱乐、商贸为一体的示范园区，让农民不出乡土就能过上好日子，让宿城的人民不出城就能享受到美丽的风景。近几年，该街道努力实践科学发展观，以人为本，大力发展民生工程，科教、文卫、民政、法制、公共基础设施等各项社会事业和谐进步，成绩斐然，社会安定。辖区内的重点工程项目多，但没有出现一例越级上访和群众性上访事件。街道全力净化美化环境，加强文明建设，进一步抓好基础设施建设和社会事业发展，构建和谐富裕新型街道社区。</p>
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
