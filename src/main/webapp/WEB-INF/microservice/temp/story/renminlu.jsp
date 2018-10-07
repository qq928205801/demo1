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
                <h1 style="font-size:40px">人民路</h1>
                <section>
                    <section>
                        <p>人民是对一个经济体认同并有归属感的人群集合，人指成年人</p>

                        <p>近代以后，“人民”的概念被广泛使用，但往往与公民、国民等词混用，泛指社会的全体成员。当然，更多的是与“人民”一样，它们的意义变得十分模糊，在何种意义下使用，全看有权使用它的人当时的需要。</p>

                        <p>人民是区别于敌人的政治概念。在人民主权理念里，人民是社会主义国家的主人。人民是集体名词，由选举人和被选举人组成。人民来自公民群体是参加政治活动社会人群，这些人群分为统治阶层和非统治阶层。"人民”一词古已有之。</p>

                        <p>在中国古籍中，人民一般泛指人，如《管子·七法》:“人民鸟兽草木之生物”；也指平民、庶民、百姓，如《周礼·官记·大司徒》：“掌建邦之生地之图，舆其人民之数”。在古希腊、古罗马，柏拉图、亚里士多德、M.T.西塞罗等人的著作中也使用过人民的概念，但它是指奴隶主和自由民，不包括占人口大多数的奴隶。</p>

                        <p>近代以后，“人民”的概念被广泛使用，但往往与公民、国民等词混用，泛指社会的全体成员。当然，更多的是与“人民”一样，它们的意义变得十分模糊，在何种意义下使用，全看有权使用它的人当时的需要。</p>

                        <p>而在我国，根据毛泽东思想，现阶段人民是指全体社会主义劳动者、社会主义事业的建设者、拥护中国共产党和中国特色社会主义的爱国者和拥护祖国统一的爱国者。</p>
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
