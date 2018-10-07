<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>智慧门牌服务管理</title>
    <link rel="stylesheet" type="text/css" href="/static/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/style/example.css"/>
    <%--<script type="text/javascript" src="/static/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/static/js/common/common.js"></script>
    <script type="text/javascript" src="/static/js/service/microservice.js"></script>
    <script type="text/javascript" src="/static/js/common/Sortable.min.js"></script>
</head>
<body ontouchstart>
<div class="page">
    <div class="page__hd" style="height: 30px;padding-top: 0px;padding-bottom: 40px;">
        <div class="weui-navbar">
            <div class="weui-navbar__item" onClick="javascript :history.back(-1);">
                返回
            </div>

            <div class="weui-navbar__item" id="en"  >
                 确认修改
            </div>

        </div>
    </div>
    <div class="page__bd page__bd_spacing">
        <div class="weui-grids" id="originMicroservice">
            <a href="javascript:;" class="weui-grid" id="TonzhiGongGao" <c:if test="${features.tonzhiGongGao=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/icon_nav_dialog.png" alt="">
                </div>
                <p class="weui-grid__label">通知公告</p>
            </a>
            <a href="javascript:;" class="weui-grid" id="XingZhengQuHua" <c:if test="${features.minzhengDongTai=='false'}">style="display:none"</c:if> >
                <div class="weui-grid__icon">
                    <img src="/static/images/icon_nav_article.png" alt="">
                </div>
                <p class="weui-grid__label">民政动态</p>
            </a>

            <a href="javascript:;" class="weui-grid" id="YouDaiFuXu" <c:if test="${features.youDaiFuXu=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/minzheng/youdaifuxu.png" alt="">
                </div>
                <p class="weui-grid__label">优待抚恤</p>
            </a>

            <a href="${url.wangShangBanShiUrl}" class="weui-grid" <c:if test="${features.wangshangBanshi=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/icon_nav_flow1.png" alt="">
                </div>
                <p class="weui-grid__label">网上办事</p>
            </a>

            <a href="javascript:;" class="weui-grid" id="MinzhengKanWu" <c:if test="${features.minzhengKanWu=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/icon_nav_tab.png" alt="">
                </div>
                <p class="weui-grid__label">民政刊物</p>
            </a>

            <a href="javascript:;" class="weui-grid" id="TuiWuAnZhi" <c:if test="${features.tuiWuAnZhi=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/minzheng/tuiwuanzhi.png" alt="">
                </div>
                <p class="weui-grid__label">退伍安置</p>
            </a>

            <a href="javascript:;" class="weui-grid" id="JiuZaiJuiZhi" <c:if test="${features.jiuZaiJuiZhi=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/minzheng/jiuzaijiuji.png" alt="">
                </div>
                <p class="weui-grid__label">救灾救济</p>
            </a>
            <a href="javascript:;" class="weui-grid" id="TeKunGongYang" <c:if test="${features.teKunGongYang=='false'}">style="display:none"</c:if>>
                <div class="weui-grid__icon">
                    <img src="/static/images/minzheng/tekungongyang.png" alt="">
                </div>
                <p class="weui-grid__label">特困供养</p>
            </a>



        </div>
        <br><br><br><br><br><br>
        <ul class="weui-footer_fixed-bottom">
            <li>
                <div class="weui-flex js_category">
                    <p class="weui-flex__item pressToDelete" id="bigService_p_1">已选择的微服务</p>
                    <img class="glyphicon-move" src="/static/images/icon_nav_form.png" alt="">
                </div>
                <div class="page__category js_categoryInner">
                    <div class="weui-grids" id="allMicroservice">


                    </div>
                </div>
                </li>
            </ul>
    </div>
</div>

<script type="text/javascript">
    var basepath = "/static";
    /**
     * 开始自动加载find
     */
    $(document).ready(function () {
        //显示/隐藏子节点
        showInnerContent();
    })
</script>
<script type="text/javascript">
   $(function () {
       $("#en").click(function () {
           var link=$("#allMicroservice a");
           var link_Id=[];
           //alert(link);

           for (var i=0;i<link.length;i++){
               link_Id.push($(link[i]).attr('id'));
              // alert(link_Id);
           }

           $.ajax({
               url:"DeleteFeatures",
               type:"POST",
               dataType:"json",
               data:{
                   link_id:JSON.stringify(link_Id)
               },
               success:function(data){
                  // console.log(data);
                   alert(data);
                   window.location.href="navigation";
               }
           })

       })
   })
</script>
</body>
</html>
