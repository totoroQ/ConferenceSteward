<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台欢迎页</title>
    <link rel="stylesheet" href="<%=  basePath %>css/reset.css" >
    <link rel="stylesheet" href="<%=  basePath %>css/content.css" >
    <link href="<%=  basePath %>css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=  basePath %>css/bootstrap.css" rel="stylesheet">
    <style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
<body marginwidth="0" marginheight="0">
<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">方案服务</a>><a href="fanganguanli.html">方案管理</a>>&nbsp;&nbsp;&nbsp;方案详情</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">方案详情</h3>
        </div>
        <div class="public-content-cont">
            <ul style="line-height: 3em;">
                <li>用户：</li>
                <li>活动城市：</li>
                <li>会议类型：</li>
                <li>会议时长：</li>
                <li>参加人数：</li>
                <li>会议预算：</li>
                <li>
                    <form class="form-inline">
                        <div>
                            <label for="exampleInputName2">处理结果:</label>
                            <select class="form-control" id="exampleInputName2">
                                <option>可行</option>
                                <option>不可行</option>
                            </select>
                            <button type="submit" class="btn btn-default">提交</button>
                        </div>
                    </form>
                </li>
            </ul>



        </div>
    </div>
</div>
<script src="<%=  basePath %>kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });
</script>
</body>
</html>