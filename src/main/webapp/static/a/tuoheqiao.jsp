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

    <title>智慧门牌</title>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basepath%>/style/example.css"/>
    <script type="text/javascript" src="<%=basepath%>/js/jquery-1.10.2.min.js"></script>

    <style type="text/css">
        body, html, #container {
            height: 100%;
            margin: 0px;
        }

        .panel {
            background-color: #ddf;
            color: #333;
            border: 1px solid silver;
            box-shadow: 3px 4px 3px 0px silver;
            position: absolute;
            top: 10px;
            right: 10px;
            border-radius: 5px;
            overflow: hidden;
            line-height: 20px;
        }

        #input {
            /*width: 250px;*/
            height: 25px;
            border: 0;
            background-color: white;
        }
    </style>

</head>
<body ontouchstart>

<div class="page__bd">

    <div class="weui-panel weui-panel_access">
        <%--<div class="weui-panel__hd">门牌信息</div>--%>
        <div class="weui-panel__bd">
            <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                <div class="weui-media-box__hd">
                    <img class="weui-media-box__thumb" src="<%=basepath%>/images/menpai/renminlu.jpg" alt="">
                </div>
                <div class="weui-media-box__bd">
                    <h4 class="weui-media-box__title">沱河一号桥</h4>
                    <p class="weui-media-box__desc">安徽省宿州市埇桥区人民路</p>
                </div>
            </a>
        </div>
        <div class="weui-panel__ft">
            <a href="javascript:void(0);" class="weui-cell weui-cell_access weui-cell_link">
                <div class="weui-cell__bd">查看更多地名信息</div>
                <span class="weui-cell__ft"></span>
            </a>
        </div>
    </div>

    <div class="weui-cells weui-cells_form" style="height:40%">
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea class="weui-textarea" id='input' value='点击地图显示地址' rows="3"></textarea>
            </div>
            <%--<div class="weui-cell__hd">--%>
                <%--<a class="weui-btn weui-btn_primary" onclick="locationConfirm()">确定</a>--%>
            <%--</div>--%>
        </div>

        <div id="container" tabindex="0"></div>
    </div>

    <div class="weui-cells weui-cells_form">
        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__hd">简介</div>
        </div>
        <div class="weui-grids">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沱河一号桥位于安徽省宿州市埇桥区人民路段与沱河交叉处。</p>
        </div>
    <div class="weui-cells weui-cells_form">
        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__hd">地名服务</div>
        </div>
        <div class="weui-grids">
            <a href="<%=basepath%>/microservice/temp/story/tuoheqiao.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_article.png" alt="">
                </div>
                <p class="weui-grid__label">地名由来</p>
            </a>
            <a href="<%=basepath%>/microservice/temp/manage/manage.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="<%=basepath%>/images/icon_nav_flow1.png" alt="">
                </div>
                <p class="weui-grid__label">地名管理</p>
            </a>
        </div>
    </div>
    <br><br><br><br><br><br>

    <a href="<%=basepath%>/login/login.jsp" class="weui-btn weui-btn_primary">用户登录</a>
    <br><br>
    <div class="weui-footer">
        <p class="weui-footer__links">
            <a href="javascript:void(0);" class="weui-footer__link">公司简介</a>
        </p>
        <p class="weui-footer__text">Copyright &copy; 2008-2018 武汉一张图科技有限公司</p>
    </div>
</div>


<!--相关条款-->
<div class="page__ft j_bottom">
    <%--<div class="weui-footer">--%>
        <%--<p class="weui-footer__links">--%>
            <%--<a href="javascript:void(0);" class="weui-footer__link">公司简介</a>--%>
        <%--</p>--%>
        <%--<p class="weui-footer__text">Copyright &copy; 2008-2018 武汉一张图科技有限公司</p>--%>
    <%--</div>--%>

    <%--<div class="weui-cells weui-cells_form">--%>
        <%--<div class="weui-cell">--%>
            <%--<div class="weui-cell__bd">--%>
                <%--<textarea class="weui-textarea" id='input' value='点击地图显示地址' rows="3"></textarea>--%>
            <%--</div>--%>
            <%--<div class="weui-cell__hd">--%>
                <%--<a class="weui-btn weui-btn_primary" onclick="locationConfirm()">确定</a>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

</div>


<script src="https://webapi.amap.com/maps?v=1.3&amp;key=0527fc08a6b9ab7a0d2dacdf50ed20d6&callback=init"></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.0/main.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
<script>

    var dataX;//经度
    var dataY;//纬度

    var marker,map = new AMap.Map('container', {
        center: [116.966331,33.655624],
        zoom: 17
    });
    //        map.plugin(["AMap.ToolBar"], function () {
    //            map.addControl(new AMap.ToolBar());
    //        });
    map.setFeatures(['road', 'bg', 'point'])//多个种类要素显示

    //        //设置DomLibrary，jQuery或者Zepto
    //        AMapUI.setDomLibrary($);
    //
    //        //加载BasicControl，loadUI的路径参数为模块名中 'ui/' 之后的部分
    //        AMapUI.loadUI(['control/BasicControl'], function (BasicControl) {
    //
    //            var map = new AMap.Map('container');
    //
    //            //缩放控件
    //            map.addControl(new BasicControl.Zoom({
    //                position: 'lt', //left top，左上角
    //                showZoomNum: true //显示zoom值
    //            }));
    //
    //            //图层切换控件
    //            map.addControl(new BasicControl.LayerSwitcher({
    //                position: 'rt' //right top，右上角
    //            }));
    //
    //            //实时交通控件
    //            map.addControl(new BasicControl.Traffic({
    //                position: 'lb'//left bottom, 左下角
    //            }));
    //        });

    AMap.plugin('AMap.Geocoder', function () {
        var geocoder = new AMap.Geocoder({
            city: "010"//城市，默认：“全国”
        });
        var marker = new AMap.Marker({
            map: map,
            bubble: true
        })
        map.on('click', function (e) {
            dataX = e.lnglat.lng;
            dataY = e.lnglat.lat;

            marker.setPosition(e.lnglat);
            geocoder.getAddress(e.lnglat, function (status, result) {
                if (status == 'complete') {
                    document.getElementById('input').value = result.regeocode.formattedAddress
                }
            })
        })
    });

    function locationConfirm() {
        alert(dataX);
        alert(dataY);
    }

    function addMarker() {
        if (marker) {
            return;
        }
        marker = new AMap.Marker({
            icon: "<%=basepath%>/images/mark_b.png",
            position: [114.356531,30.5274]
        });
        marker.setMap(map);
    }

    $(document).ready(function(){
        addMarker();
    })

</script>

<script>
    var basepath = "<%=basepath%>";
</script>

</body>
</html>
