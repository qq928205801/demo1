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
    <title>房屋租赁</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <%--<script type="text/javascript" src="<%=basepath%>/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>
</head>
<body ontouchstart>
<div class="page">
    <div class="pageContent" id="tpl_feedback">
        <div class="page__bd page__bd_spacing">
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">位置</label>
                        <em class="weui-form-preview__value">1幢1023室</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">面积</label>
                        <span class="weui-form-preview__value">100平米</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">价格</label>
                        <span class="weui-form-preview__value">3000元/月</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">联系房主</a>
                </div>
            </div>
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">位置</label>
                        <em class="weui-form-preview__value">1幢4043室</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">面积</label>
                        <span class="weui-form-preview__value">100平米</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">价格</label>
                        <span class="weui-form-preview__value">3000元/月</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">联系房主</a>
                </div>
            </div>
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">位置</label>
                        <em class="weui-form-preview__value">2幢2023室</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">面积</label>
                        <span class="weui-form-preview__value">150平米</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">价格</label>
                        <span class="weui-form-preview__value">4500元/月</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">联系房主</a>
                </div>
            </div>
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">位置</label>
                        <em class="weui-form-preview__value">3幢3023室</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">面积</label>
                        <span class="weui-form-preview__value">200平米</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">价格</label>
                        <span class="weui-form-preview__value">6000元/月</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">联系房主</a>
                </div>
            </div>
            <br>
            <br><br><br><br><br><br>
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
