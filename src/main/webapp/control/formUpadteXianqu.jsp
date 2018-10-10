<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>智慧门牌</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
    <script type="text/javascript" src="/static/js/jquery-1.10.2.min.js"></script>
</head>

<body>

   

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>当前行政区介绍</legend>
    </fieldset>

    <form class="layui-form" id="mytable" action="/control/uptadeCdisture">
       
        <div class="layui-form-item layui-form-text" style="width: 700px;">
            <label class="layui-form-label">总体介绍</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容"  name="introduction" class="layui-textarea" required>${cdistrict.introduction}</textarea>
            </div>
        </div>

         <div class="layui-form-item layui-form-text" style="width: 700px;">
            <label class="layui-form-label">交通状况</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="traffic" class="layui-textarea"  required>${cdistrict.traffic}</textarea>
            </div>
        </div>
         <div class="layui-form-item layui-form-text" style="width: 700px;">
            <label class="layui-form-label" >旅游介绍</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="travel" class="layui-textarea"  required>${cdistrict.travel}</textarea>
            </div>
        </div>
         <div class="layui-form-item layui-form-text" style="width: 700px;">
            <label class="layui-form-label">名胜古迹</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="memo" class="layui-textarea"  required>${cdistrict.memo}</textarea>
            </div>
        </div>
        
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn"  onclick="commitForm()" lay-filter="demo1">确定更新</button>

            </div>
        </div>
    </form>
   

    <script src="./plugins/layui/layui.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
    <script>
        window.onload=function(){
            var  msg='${msg}';
            if (msg.length>0){
                alert(msg);
            }
        }
        layui.use(['form', 'layedit', 'laydate'], function() {
            var form = layui.form,
                layer = layui.layer,
                layedit = layui.layedit,
                laydate = layui.laydate;

            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });

            //创建一个编辑器
            var editIndex = layedit.build('LAY_demo_editor');

            //自定义验证规则



            //监听指定开关
            form.on('switch(switchTest)', function(data) {
                layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                    offset: '6px'
                });
                layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
            });

            //监听提交
            // form.on('submit(demo1)', function(data) {
            //     layer.alert(JSON.stringify(data.field), {
            //         title: '最终的提交信息'
            //     })
            //     return true;
            // });
            // function commitForm(){
            //     alert("添加成功")
            //     $("#mytable").submit();
            //
            // }

        });
    </script>

</body>

</html>