<%--
  Created by IntelliJ IDEA.
  User: shenbiao
  Date: 2017/3/1
  Time: 15:17
  To change this template use File | Settings | File Templates.
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

<div class="weui-panel weui-panel_access">
    <%--<div class="weui-panel__hd">门牌信息</div>--%>
    <div class="weui-panel__bd">
        <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
            <div class="weui-media-box__hd">
                <img class="weui-media-box__thumb" src="/static/images/menpai/2c1c1576b4fc5268fd89f17288d1b868.gif" alt="">
            </div>
            <div class="weui-media-box__bd">
                <h4 class="weui-media-box__title">丹溪路1405号（假日城市花园）</h4>
                <p class="weui-media-box__desc">门牌管理单位：金华市婺城区三江街道</p>
            </div>
        </a>
    </div>
    <div class="weui-panel__ft">
        <a href="javascript:void(0);" class="weui-cell weui-cell_access weui-cell_link">
            <div class="weui-cell__bd">查看更多门牌信息</div>
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
    <div class="weui-panel__hd">民政服务</div>
</div>

<div class="weui-grids">
<c:forEach items="${fList}" var="feature">
    <c:if test="${feature.features=='MinzhengDongTai'}">
        <a href="${url.minZhengUrl}" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon" >
                <img src="/static/images/icon_nav_article.png" alt="">
            </div>
            <p class="weui-grid__label">民政动态</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='TonzhiGongGao'}">
        <a href="${url.tongZhiGongGaoUrl}" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                 <img src="/static/images/icon_nav_dialog.png" alt="">
            </div>
            <p class="weui-grid__label">通知公告</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='WangshangBanshi'}">
        <a href="${url.wangShangBanShiUrl}" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                 <img src="/static/images/icon_nav_flow1.png" alt="">
            </div>
            <p class="weui-grid__label">网上办事</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='MinzhengKanWu'}">
        <a href="http://www.jhsmzj.gov.cn/mzkw/2018/index.html" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                <img src="/static/images/icon_nav_tab.png" alt="">
            </div>
             <p class="weui-grid__label">民政刊物</p>
         </a>
    </c:if>
    <c:if test="${feature.features=='YouDaiFuXu'}">
        <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                <img src="/static/images/minzheng/youdaifuxu.png" alt="">
            </div>
            <p class="weui-grid__label">优待抚恤</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='TuiWuAnZhi'}">
        <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                <img src="/static/images/minzheng/tuiwuanzhi.png" style="position:absolute; left:0; top:0; z-index:1;" alt="">
                <img src="/static/images/jinyong.png" style="position:absolute; left:0; top:0; z-index:2;">
            </div>
            <p class="weui-grid__label">退伍安置</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='JiuZaiJuiZhi'}">
        <a href="javascript:;" class="weui-grid" <c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div class="weui-grid__icon">
                <img src="/static/images/minzheng/jiuzaijiuji.png" alt="">
            </div>
            <p class="weui-grid__label">救灾救济</p>
        </a>
    </c:if>
    <c:if test="${feature.features=='TeKunGongYang'}">
        <a href="javascript:;"  class="weui-grid"<c:if test="${feature.status=='false'}">style="display:none"</c:if>>
            <div  id="te"class="weui-grid__icon">
                 <img src="/static/images/minzheng/tekungongyang.png" alt="">
            </div>
            <p class="weui-grid__label">特困供养</p>
        </a>
    </c:if>
</c:forEach>

    </div>
    <div class="weui-panel weui-panel_access">
    <div class="weui-panel__hd">旅游服务</div>
    </div>
    <div class="weui-grids">
    <a href="/static/microservice/cunzhuangjieshao.jsp" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/village_939px_1208292_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">旅游介绍</p>
    </a>
    <a href="/static/microservice/wenwuguji.jsp" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/Buddhist_Temple_751px_1191184_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">文物古迹</p>
    </a>
    <a href="<%=basepath%>/microservice/nongjiale.jsp" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/Farmer_256px_1139667_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">农家乐</p>
    </a>
    <a href="<%=basepath%>/microservice/placeSearch.jsp?xingqudian=2" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/mountain_641px_1209898_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">附近景点</p>
    </a>
    <a href="<%=basepath%>/microservice/placeSearch.jsp?xingqudian=3" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/hotel_128px_1181941_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">附近酒店</p>
    </a>
    <a href="/static/microservice/placeSearch.jsp?xingqudian=4" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/Pill_512px_1187287_easyicon.net.png" alt="">
    </div>
    <p class="weui-grid__label">附近药店</p>
    </a>
    <a href="javascript:;" class="weui-grid">
    <div class="weui-grid__icon">
    <img src="/static/images/icon_tabbar.png" alt="">
    </div>
    <p class="weui-grid__label">附近特色</p>
    </a>
    </div>


    <div class="weui-panel weui-panel_access">
    <div class="weui-panel__hd">公安便民</div>
    </div>
    <div class="weui-grids">
        <c:forEach items="${policeList}" var="policeList">
            <c:if test="${policeList.fetaures=='ZhuHuChaXun'}">

                <a href="javascript:;" class="weui-grid" id="ZhuHuChaXun" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_panel.png" alt="">
                    </div>
                    <p class="weui-grid__label">住户查询</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                <a href="http://bsdt.jhga.gov.cn/egov/jhwas/portals/include/windowQuery.jsp?jgname=&areaname=&jgtype=7" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_button.png" alt="">
                    </div>
                    <p class="weui-grid__label">派出所信息</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='AnQuanJanYi'}">
                <a href="http://www.jhga.gov.cn/News/?i=147" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_toast.png" alt="">
                    </div>
                    <p class="weui-grid__label">安全建议</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='XunRenQiShi'}">
                <a href="http://bsdt.jhga.gov.cn/egov/lcs/jsp/portals/itemShow.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_search_bar.png" alt="">
                    </div>
                    <p class="weui-grid__label">寻人寻物</p>
                </a>
            </c:if>

            <c:if test="${policeList.fetaures=='WangShangHuiJian'}">
                <a href="http://www.jhga.gov.cn/Service/Video.aspx" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_me.png" alt="">
                    </div>
                    <p class="weui-grid__label">网上会见</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='XiaQuMinJing'}">
                <a href="http://www.jhga.gov.cn/whInfo/?i=257" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_me.png" alt="">
                    </div>
                    <p class="weui-grid__label">辖区民警</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='YiJianBaoJing'}">
                <a href="<%=basepath%>/microservice/callthepolice.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_addressbook.png" alt="">
                    </div>
                    <p class="weui-grid__label">一键报警</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='PaiChuSuoInfo'}">
                <a href="<%=basepath%>/microservice/leavemessage.jsp" class="weui-grid" style="display: none">
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_dialog.png" alt="">
                    </div>
                    <p class="weui-grid__label">信息留言</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='FangWuZuLin'}">
                <a href="<%=basepath%>/microservice/rentahouse.jsp" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_toast.png" alt="">
                    </div>
                    <p class="weui-grid__label">房屋租赁</p>
                </a>
            </c:if>
            <c:if test="${policeList.fetaures=='ZhaoPingXinXi'}">
                <a href="http://zhaopin.baidu.com/quanzhi?tid=4139&ie=utf8&oe=utf8&query=%E5%A9%BA%E5%9F%8E%E5%8C%BA%E6%8B%9B%E8%81%98%E4%BF%A1%E6%81%AF&city_sug=%E5%A9%BA%E5%9F%8E" class="weui-grid" <c:if test="${policeList.status=='false'}">style="display:none"</c:if>>
                    <div class="weui-grid__icon">
                        <img src="/static/images/icon_nav_article.png" alt="">
                    </div>
                    <p class="weui-grid__label">招聘信息</p>
                </a>
            </c:if>
        </c:forEach>
    </div>
    </div>
    <br><br><br><br><br><br>

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

    var dataX;//经度
    var dataY;//纬度

    var marker,map = new AMap.Map('container', {
    center: [119.66992943389903,29.079736475170133],
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
