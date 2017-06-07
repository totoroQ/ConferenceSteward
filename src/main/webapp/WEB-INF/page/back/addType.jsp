<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台欢迎页</title>
    <link rel="stylesheet" href="<%=  basePath %>css/reset.css" >
    <link rel="stylesheet" href="<%=  basePath %>css/content.css" >
    <link href="<%=  basePath %>css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=  basePath %>css/bootstrap.css" rel="stylesheet">
    <link href="<%=  basePath %>css/button.css" rel="stylesheet">
    <style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
<body marginwidth="0" marginheight="0">

    <div>
        <div class="public-nav">您当前的位置：<a href="index.html">会议类型管理</a>&nbsp;&nbsp;&nbsp;添加会议类型</div>
        <div class="public-content">
            <div class="public-content-header">
                <h3 >会议类型添加</h3>
            </div>
            <div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="${ctx}/type/addType"  method="post">
                    <div class="form-group ">
                        <label for="typeName" class=" control-label " >会议类型名称：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="typeName" name="typeName" value="">
                        </div>
                    </div>
                    <div class="form-group form-inline">
                        <div class="col-md-10 col-md-offset-1">
                            <input type="submit" class="button button-glow button-rounded button-raised button-primary"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="button button-glow button-border button-rounded button-primary"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="<%=  basePath %>kingediter/kindeditor-all-min.js"></script>
</body>
</html>