<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String userID = (String) session.getAttribute("userID");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>智慧门牌服务</title>
    <link rel="stylesheet" type="text/css" href="/static/style/weui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/style/example.css"/>
    <%--<script type="text/javascript" src="/static/js/zepto.min.js"></script>--%>
    <script type="text/javascript" src="/static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/static/js/common/common.js"></script>
    <script type="text/javascript" src="/static/js/common/Sortable.min.js"></script>
    <script type="text/javascript" src="/static/js/service/bigservice.js"></script>
    <script type="text/javascript" src="/static/js/navigation/navigation.js"></script>
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
<div class="page">

    <div class="pageContent" id="tpl_qrcode" style="display:block;">
        <div class="weui-panel weui-panel_access">
            <%--<div class="weui-panel__hd">门牌信息</div>--%>
                <div class="weui-panel__bd" style="float: left">
                    <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" style="padding-top: 10px">
                        <div class="weui-media-box__hd" style="padding-top: 18px">
                            <img class="weui-grid__icon" src="/static/images/dinwei.png" alt="">
                        </div>
                        <div class="weui-media-box__bd" style="padding-top: 1px; font-size: 14px">
                            <%--<h4 class="weui-media-box__title ">信州区东岳路47号</h4>--%>
                            <%--<p class="weui-media-box__desc" style="font-size: 10px">门牌管理单位:上饶市公安局</p>--%>

                            <p><span style="color:#0048b2">地名</span>&nbsp;&nbsp;<span style="color: #999999">广信大道118号</span></p>
                            <span style="color:#0048b2">公安管辖</span>&nbsp;&nbsp;<span style="color: #999999">上饶市公安局</span>
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

                        <p class="weui-panel__hd">社区民警:厉韬</p>
                        <p class="weui-panel__hd">一键报警:<a href="tel:15179788823" >15156257489</a></p>

                    </td>

                </tr>
            </table>
        </div>



        <div class="weui-cells weui-cells_form" style="height:40%;margin-top: 10px">


            <div id="container" tabindex="0"></div>
        </div>

        <%--农户信息--%>
        <div class="weui-panel weui-panel_access" id="fangwuinfo" style="display: block">
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


                    <c:choose>
                        <c:when test="${bfid==1}">
                            <div class="weui-form-preview__item">
                                <label class="weui-form-preview__label">经营特色</label>
                                <span class="weui-form-preview__value">空气清新，环境放松</span>
                            </div>
                            <div class="weui-form-preview__item">
                                <label class="weui-form-preview__label">客房数</label>
                                <span class="weui-form-preview__value">${building.numberOfRoom}</span>
                            </div>
                            <div class="weui-form-preview__item">
                                <label class="weui-form-preview__label">床位数</label>
                                <span class="weui-form-preview__value">${building.numberOfBed}</span>
                            </div>
                            <div class="weui-form-preview__item">
                                <label class="weui-form-preview__label">餐位数</label>
                                <span class="weui-form-preview__value">${building.mealDigits}</span>
                            </div>
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
                        </c:when>
                        <c:otherwise >
                            <c:if test="${building.busiType==2||building.busiType==3}">
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">经营特色</label>
                                    <span class="weui-form-preview__value">空气清新，环境放松</span>
                                </div>
                                <c:if test="${building.ifOpen==1}">
                                    <div class="weui-form-preview__item">
                                        <label class="weui-form-preview__label">客房数</label>
                                        <span class="weui-form-preview__value">${building.numberOfRoom}</span>
                                    </div>
                                    <div class="weui-form-preview__item">
                                        <label class="weui-form-preview__label">床位数</label>
                                        <span class="weui-form-preview__value">${building.numberOfBed}</span>
                                    </div>
                                    <div class="weui-form-preview__item">
                                        <label class="weui-form-preview__label">餐位数</label>
                                        <span class="weui-form-preview__value">${building.mealDigits}</span>
                                    </div>
                                </c:if>

                            </c:if>
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
                                    <label class="weui-form-preview__label">户主未公开更多信息</label>

                                </div>
                            </c:if>
                        </c:otherwise>
                    </c:choose>

                    <%--<c:if test="${building.ifOpen==1}">--%>
                    <%--<div class="weui-form-preview__item">--%>
                    <%--<label class="weui-form-preview__label">建筑面积</label>--%>
                    <%--<span class="weui-form-preview__value">${building.buildArea}</span>--%>
                    <%--</div>--%>

                    <%--<div class="weui-form-preview__item">--%>
                    <%--<label class="weui-form-preview__label">占地面积</label>--%>
                    <%--<span class="weui-form-preview__value">${building.landArea}</span>--%>
                    <%--</div>--%>
                    <%--<div class="weui-form-preview__item">--%>
                    <%--<label class="weui-form-preview__label">房屋间数</label>--%>
                    <%--<span class="weui-form-preview__value">${building.roomNum}</span>--%>
                    <%--</div>--%>
                    <%--<div class="weui-form-preview__item">--%>
                    <%--<label class="weui-form-preview__label">家庭人口</label>--%>
                    <%--<span class="weui-form-preview__value">${building.population}</span>--%>
                    <%--</div>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${building.ifOpen==0}">--%>
                    <%--<div class="weui-form-preview__item">--%>
                    <%--<label class="weui-form-preview__label">户主未公开信息</label>--%>

                    <%--</div>--%>
                    <%--</c:if>--%>
                </div>


            </div>

        </div>



        <br><br><br><br><br><br>

        <c:if test="${empty existUser}">
            <a href="ShangRaologin" class="weui-btn weui-btn_primary">用户登录</a>
        </c:if>
        <c:if test="${not empty existUser}">
            <a href="system" class="weui-btn weui-btn_primary">退出登录</a>
        </c:if>
        <br><br>
    </div>


    <div class="pageContent" id="tpl_monitoring" style="display:none;">
        <div class="weui-cells weui-cells_form">
            <%--<div class="weui-panel weui-panel_access">--%>
                <%--<div class="weui-panel__hd">民政服务</div>--%>
            <%--</div>--%>

            <%--<div class="weui-grids">--%>
                <%--<a href="javascript:void(0);" class="weui-grid">--%>
                    <%--<div class="weui-grid__icon" >--%>
                        <%--<img src="/static/images/menpai/phone.png" style="" alt="">--%>
                    <%--</div>--%>
                    <%--<p class="weui-grid__label">房主电话</p>--%>
                <%--</a>--%>
            <%--</div>--%>
                <%--<a href="javascript:void(0);" class="weui-grid">--%>
                <%--<div class="weui-grid__icon" >--%>
                    <%--<img src="/static/images/menpai/home.png" style="" alt="">--%>
                <%--</div>--%>
                <%--<p class="weui-grid__label">房屋信息</p>--%>
                <%--</a>--%>
                <%--<c:forEach items="${allList}" var="systemList">--%>

                    <%--<c:if test="${systemList.ifvalid=='1'&& systemList.deptid==111}">--%>
                        <%--<a href="${systemList.url}" class="weui-grid">--%>
                            <%--<div class="weui-grid__icon" >--%>
                                <%--<img src="${systemList.icon}" style="" alt="">--%>

                            <%--</div>--%>
                            <%--<p class="weui-grid__label">${systemList.showname}</p>--%>
                        <%--</a>--%>
                    <%--</c:if>--%>

                <%--</c:forEach>--%>

            <%--</div>--%>
            <%--<div class="weui-panel weui-panel_access">--%>
                <%--<div class="weui-panel__hd">旅游服务</div>--%>
            <%--</div>--%>
            <%--<div class="weui-grids">--%>
                <%--<c:forEach items="${allList}" var="policeSystem">--%>

                    <%--<c:if test="${policeSystem.ifvalid=='1'&& policeSystem.deptid==333}">--%>
                        <%--<a href="${policeSystem.url}" class="weui-grid">--%>
                            <%--<div class="weui-grid__icon" >--%>
                                <%--<img src="${policeSystem.icon}" alt="">--%>
                            <%--</div>--%>
                            <%--<p class="weui-grid__label">${policeSystem.showname}</p>--%>
                        <%--</a>--%>
                    <%--</c:if>--%>

                <%--</c:forEach>--%>
            <%--</div>--%>


            <c:forEach items="${deptName}" var="deptName">

                    <div class="weui-panel weui-panel_access">
                        <div class="weui-panel__hd">${deptName}</div>
                    </div>

                        <div class="weui-grids">
                            <c:choose>
                                <c:when test="${police==2}">
                                    <c:forEach items="${allList}" var="policeSystem">

                                        <c:if test="${policeSystem.ifvalid=='1'&& policeSystem.name==deptName}">
                                            <a href="${policeSystem.url}" class="weui-grid">
                                                <div class="weui-grid__icon" >
                                                    <img src="${policeSystem.icon}" alt="">
                                                </div>
                                                <p class="weui-grid__label">${policeSystem.showname}</p>
                                            </a>
                                        </c:if>

                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${allList}" var="policeSystem">
                                        <c:if test="${policeSystem.ifdept=='1'}">
                                            <c:if test="${policeSystem.ifvalid=='1'&& policeSystem.name==deptName}">
                                                <a href="${policeSystem.url}" class="weui-grid">
                                                    <div class="weui-grid__icon" >
                                                        <img src="${policeSystem.icon}" alt="">
                                                    </div>
                                                    <p class="weui-grid__label">${policeSystem.showname}</p>
                                                </a>
                                            </c:if>
                                        </c:if>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>


                        </div>
            </c:forEach>





        </div>


        <br><br><br><br>
        <c:if test="${empty existUser}">
            <a href="ShangRaologin" class="weui-btn weui-btn_primary">用户登录</a>
        </c:if>
        <c:if test="${not empty existUser}">
            <a href="system" class="weui-btn weui-btn_primary">退出登录</a>
        </c:if>
        <br><br>
    </div>
    <div class="pageContent" id="tpl_feedback" style="display:none;">
        <div class="page__bd page__bd_spacing">
            <br>
            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">玉峰路37号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">刘三</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13723452345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">这里的门牌已经遭受无损，请求修复</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br>

            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">中山路102号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">沈四</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13732143211</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">希望加上一键报警功能</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br>

            <div class="weui-form-preview">
                <div class="weui-form-preview__hd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">门牌号</label>
                        <em class="weui-form-preview__value">水南街44号</em>
                    </div>
                </div>
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">用户名</label>
                        <span class="weui-form-preview__value">张六</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">电话</label>
                        <span class="weui-form-preview__value">13780982345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">问题描述</label>
                        <span class="weui-form-preview__value">希望加上附近旅游推荐的功能</span>
                    </div>
                </div>
                <div class="weui-form-preview__ft">
                    <a class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">操作</a>
                </div>
            </div>
            <br><br><br><br><br><br>
        </div>
    </div>
    <div class="pageContent" id="tpl_dialogs">
        <div id="dialogs">
            <!--BEGIN dialog1-->
            <div class="js_dialog" id="iosDialog1" style="display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__hd"><strong class="weui-dialog__title" id="iosDialog1_title">弹窗标题</strong></div>
                    <div class="weui-dialog__bd" id="iosDialog1_content">弹窗内容，告知当前状态、信息和解决方法，描述文字尽量控制在三行内</div>
                    <div class="weui-dialog__ft">
                        <a  class="weui-dialog__btn weui-dialog__btn_default" >取消</a>
                        <a  class="weui-dialog__btn weui-dialog__btn_primary" id="iosDialog1_myfunction">确认</a>
                    </div>
                </div>
            </div>
            <!--END dialog1-->
            <!--BEGIN dialog1-->
            <div class="js_dialog" id="iosDialog_input" style="display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__hd"><strong class="weui-dialog__title" id="iosDialog_input_title">弹窗标题</strong></div>
                    <div class="weui-dialog__bd"><input type="text" class="weui-input" placeholder="" id="iosDialog_input_content"></div>
                    <div class="weui-dialog__ft">
                        <a  class="weui-dialog__btn weui-dialog__btn_default" >取消</a>
                        <a  class="weui-dialog__btn weui-dialog__btn_primary" id="iosDialog_input_myfunction">确认</a>
                    </div>
                </div>
            </div>
            <!--END dialog1-->
        </div>
    </div>
</div>


<!--导航页面-->
<div class="weui-tab">
    <!--导航-->
    <div class="weui-tabbar">
        <!--发现-->
        <%--<a class="weui-tabbar__item weui-bar__item_on" href="javascript:showqrcode();">--%>
                <%--<span style="display: inline-block;position: relative;">--%>
                    <%--<img src="/static/images/icon_nav_layout_1.png" alt="" class="weui-tabbar__icon">--%>
                    <%--<span class="weui-badge weui-badge_dot"--%>
                          <%--style="position: absolute;top: 0;right: -6px;display: none"></span>--%>
                <%--</span>--%>

            <%--<p class="weui-tabbar__label">二维码管理</p>--%>
        <%--</a>--%>

        <!--我-->
        <a class="weui-tabbar__item weui-bar__item_on " href="javascript:showqrcode();">
                <span style="display: inline-block;position: relative;">
                    <img src="/static/images/menpai/shouye.png" alt="" class="weui-tabbar__icon">
              
            <p class="weui-tabbar__label" style="color: #999999">首页</p>
        </a>

        <!--通讯录-->
        <a class="weui-tabbar__item weui-bar__item_on" href="javascript:showMonitoring();">
            <img src="/static/images/zhengfu2.png" alt="" class="weui-tabbar__icon">

            <p class="weui-tabbar__label" style="color: #999999">公安服务</p>
        </a>

        <!--消息-->
        <a class="weui-tabbar__item weui-bar__item_on" href="javascript:showFeedback();">
                <span style="display: inline-block;position: relative;">
                    <img src="/static/images/icon_nav_message.png" alt="" class="weui-tabbar__icon">

            <p class="weui-tabbar__label" style="color: #999999">周边反馈</p>
        </a>
    </div>
</div>


<script src="https://webapi.amap.com/maps?v=1.3&amp;key=0527fc08a6b9ab7a0d2dacdf50ed20d6&callback=init"></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.0/main.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
<script>

    var dataX;//经度
    var dataY;//纬度

    var marker,map = new AMap.Map('container', {
        center: [117.987743,28.44577],
        zoom: 17
    });

    map.setFeatures(['road', 'bg', 'point'])//多个种类要素显示


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



<script type="text/javascript">
    var basepath = "/static";
    /**
     * 开始自动加载find
     */
    $(document).ready(function () {
        //显示/隐藏子节点
        showInnerContent();
        //搜索栏
        searchBarAction();
        showqrcode();
    })
</script>
</body>
</html>
