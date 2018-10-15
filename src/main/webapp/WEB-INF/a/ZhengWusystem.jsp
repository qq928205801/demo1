<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.yzt.zhmp.beans.Orgurl" %>
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
    <link rel="stylesheet" type="text/css" href="/static/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/style/example.css"/>
    <script type="text/javascript" src="/static/js/jquery-1.10.2.min.js"></script>

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



<div class="weui-cells weui-cells_form">
<div class="weui-panel weui-panel_access">
    <div class="weui-panel__hd">民政服务</div>
</div>

<div class="weui-grids">
<c:forEach items="${allList}" var="systemList">

        <c:if test="${systemList.ifvalid=='1'&& systemList.deptid==111}">
                <a href="${systemList.url}" class="weui-grid">
                    <div class="weui-grid__icon" >
                        <img src="${systemList.icon}" style="" alt="">

                    </div>
                    <p class="weui-grid__label">${systemList.showname}</p>
                </a>
        </c:if>

</c:forEach>

    </div>
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__hd">旅游服务</div>
    </div>
        <div class="weui-grids">
            <c:forEach items="${allList}" var="policeSystem">
                <c:if test="${policeSystem.ifvalid=='1'&& policeSystem.deptid==333}">
                    <a href="${policeSystem.url}" class="weui-grid">
                        <div class="weui-grid__icon" >
                            <img src="${policeSystem.icon}" alt="">
                        </div>
                        <p class="weui-grid__label">${policeSystem.showname}</p>
                    </a>
                </c:if>

            </c:forEach>
        </div>


    <div class="weui-panel weui-panel_access">
    <div class="weui-panel__hd">公安便民</div>
    </div>
    <div class="weui-grids">
        <c:forEach items="${allList}" var="policeSystem">
            <c:if test="${policeSystem.ifvalid=='1'&& policeSystem.deptid==222}">
                <a href="${policeSystem.url}" class="weui-grid">
                    <div class="weui-grid__icon" >
                        <img src="${policeSystem.icon}" alt="">
                    </div>
                    <p class="weui-grid__label">${policeSystem.showname}</p>
                </a>
            </c:if>

        </c:forEach>
    </div>
    </div>
    <br><br><br><br><br><br>

    <a href="javascript:;" onclick="javascript:history.back();" class="weui-btn weui-btn_primary">返回</a>
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
    center: [120.449058,29.052711],
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


    });

    </script>

    <script>
    var basepath = "<%=basepath%>";
    </script>
    </body>
    </html>
