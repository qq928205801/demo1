<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    //request.setCharacterEncoding("UTF-8");
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String userID = (String) session.getAttribute("userID");
%>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
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

<body>
    <div>
        <img src="build/images/pananxian.png" width="1400" height="733">
    </div>

    <script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
    <script>

        var dataX;//经度
        var dataY;//纬度

        var marker,map = new AMap.Map('container', {
            center: [120.449058,29.052711],
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
</body>

</html>