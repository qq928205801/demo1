<%--
  源文件
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
            background: #f8f8f8;
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
    <div class="weui-panel__bd" style="float: left">
        <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
            <div class="weui-media-box__hd">
                <img class="weui-media-box__thumb" src="/static/images/menpai/2c1c1576b4fc5268fd89f17288d1b868.gif" alt="">
            </div>
            <div class="weui-media-box__bd">
                <h4 class="weui-media-box__title" style="font-size: 12px">磐安县螺山路13号</h4>
                <p class="weui-media-box__desc" style="font-size: 10px">管理单位:磐安县螺山路</p>
            </div>
        </a>

    </div>

</div>
    <div class="weui-panel weui-panel_access">
        <table style="margin-top: 5px">
            <colgroup>
                <col width="40">
                <col width="500">
            </colgroup>
            <tr >
                <td>
                    <div class="layui-inline">
                        <img src="/static/images/219226629aa.jpg" style="width: 48px;height: 55px" class="layui-circle">
                    </div>
                </td>
                <td style="font-size: 15px" >

                    <p class="weui-panel__hd">民警姓名：${building.name}厉韬</p>
                    <p class="weui-panel__hd">民警电话：${building.address}15156257489</p>

                </td>

            </tr>
        </table>
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
    <div class="weui-panel weui-panel_access">
        <div class="weui-form-preview">
            <%--<h2 class="poiname">安福寺</h2>--%>
            <%--<div class="weui-form-preview__bd" style="text-align:left">--%>
            <%--<span class="weui-form-preview__value">安福寺位于浙江省金华市磐安县城南独秀屏下，为花台山公园风景区的主要景点。</span>--%>
            <%--</div>--%>
            <div class="weui-form-preview__bd">
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">户主姓名</label>
                    <span class="weui-form-preview__value">${building.name}</span>
                </div>

                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">联系电话</label>
                    <span class="weui-form-preview__value">${building.phoneNum}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">建筑年份</label>
                    <span class="weui-form-preview__value">${building.buildingYear}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">门牌编号</label>
                    <span class="weui-form-preview__value">${building.familyType}</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">家庭类别</label>
                    <c:if test="${building.busiType==1}">
                        <span class="weui-form-preview__value">普通房屋</span>
                    </c:if>
                    <c:if test="${building.busiType==2}">
                        <span class="weui-form-preview__value">农家乐</span>
                    </c:if>
                    <c:if test="${building.busiType==3}">
                        <span class="weui-form-preview__value">民宿</span>
                    </c:if>
                    <c:if test="${building.busiType==4}">
                        <span class="weui-form-preview__value">药农</span>
                    </c:if>
                </div>
                <c:if test="${building.busiType==2||building.busiType==3}">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">经营特色</label>
                        <span class="weui-form-preview__value">空气清新，环境放松</span>
                    </div>
                </c:if>
            </div>
            <div class="weui-panel weui-panel_access" id="text" style="display: block;height: 40px">
                <div class="weui-panel__hd">建筑详细信息</div>
            </div>

            <div class="weui-form-preview" id="menu" style="display: none">
                <div class="weui-form-preview__bd">
                    <c:if test="${building.ifOpen==1}">
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">建筑面积</label>
                            <span class="weui-form-preview__value">${building.buildArea}</span>
                        </div>

                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">占地面积</label>
                            <span class="weui-form-preview__value">${building.landArea}</span>
                        </div>
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">房屋间数</label>
                            <span class="weui-form-preview__value">${building.roomNum}</span>
                        </div>
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">家庭人口</label>
                            <span class="weui-form-preview__value">${building.population}</span>
                        </div>
                    </c:if>
                    <c:if test="${building.ifOpen==0}">
                        <div class="weui-form-preview__item">
                            <label class="weui-form-preview__label">户主未公开信息</label>

                        </div>
                    </c:if>
                </div>
            </div>







<div class="weui-cells weui-cells_form" style="">
    <div class="weui-flex js_category" id="text1" style="margin-top: 5px">
        <p class="weui-flex__item pressToDelete" id="bigService_p_1" style="margin-top: 25px;margin-left: 20px">公安便民</p>
        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" style="margin-top: 5px;margin-right: 20px " alt="">
    </div>

    <div class="weui-grids" id="menu1" style="display: none">
        <%--<a href="javascript:void(0);" class="weui-grid">--%>
            <%--<div class="weui-grid__icon" >--%>
                <%--<img src="/static/images/menpai/phone.png" style="" alt="">--%>

            <%--</div>--%>
            <%--<p class="weui-grid__label">房主电话</p>--%>
        <%--</a>--%>
        <%--<a href="javascript:void(0);" class="weui-grid">--%>
            <%--<div class="weui-grid__icon" >--%>
                <%--<img src="/static/images/home.png" style="" alt="">--%>

            <%--</div>--%>
        <%--<p class="weui-grid__label">房屋信息</p>--%>
        <%--</a>--%>
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
    <hr style="height:1px;border:none;border-top:1px solid #f8f8f8;" />
    <div class="weui-flex js_category" id="text2" style="margin-top: 5px">
        <p class="weui-flex__item pressToDelete" id="bigService_p_2" style="margin-top: 25px;margin-left: 20px">旅游服务</p>
        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" style="margin-top: 5px;margin-right: 20px " alt="">
    </div>
            <div class="weui-grids" id="menu2" style="display: none">
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
    <hr style="height:1px;border:none;border-top:1px solid #f8f8f8;" />

    <div class="weui-flex js_category" id="text3" style="margin-top: 5px">
        <p class="weui-flex__item pressToDelete" id="bigService_p_3" style="margin-top: 25px;margin-left: 20px">公安便民</p>
        <img class="glyphicon-move" src="/static/images/icon_nav_form.png" style="margin-top: 5px;margin-right: 20px " alt="">
    </div>
        <div class="weui-grids" id="menu3" style="display: none">
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



    <br><br><br>

    <a href="login" class="weui-btn weui-btn_primary">用户登录</a>
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
        $("#text").click(function(){
            if($("#menu").css("display")=="none"){
                $("#menu").show();
            }else{
                $("#menu").hide();
            }
        });


        $("#text1").click(function(){
            if($("#menu1").css("display")=="none"){
                $("#menu1").show();
            }else{
                $("#menu1").hide();
            }
        });

        $("#text2").click(function(){
            if($("#menu2").css("display")=="none"){
                $("#menu2").show();
            }else{
                $("#menu2").hide();
            }
        });
        $("#text3").click(function(){
            if($("#menu3").css("display")=="none"){
                $("#menu3").show();
            }else{
                $("#menu3").hide();
            }
        });


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
