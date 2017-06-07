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
        <div class="public-nav">您当前的位置：<a href="index.html">会议</a>&nbsp;&nbsp;&nbsp;添加会议</div>
        <div class="public-content">
            <div class="public-content-header">
                <h3 >会议添加</h3>
            </div>
            <div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="${ctx}/conference/addConference" method="post">
                    <div class="form-group ">
                        <label for="conferenceName" class=" control-label " >会议名称：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="conferenceName" name="conferenceName" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="typeID" class=" control-label " >会议类型：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="typeID" name="typeID" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePicture" class=" control-label">会议图片：</label>
                        <div class="col-sm-3">
                            <input type="file" class="form-control" id="conferencePicture" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceCity" class=" control-label">举办城市：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="conferenceCity" name="conferenceCity" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceDuration" class=" control-label">会议时长：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="conferenceDuration" name="conferenceDuration" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceAmount" class=" control-label">库存量：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="conferenceAmount" name="conferenceAmount" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceNumber" class=" control-label">参会人数：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="conferenceNumber" name="conferenceNumber" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePrice" class=" control-label">场地价格：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="conferencePrice" name="conferencePrice" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceIdentification" class=" control-label">是否为特价场地：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="conferenceIdentification" name="conferenceIdentification" value="">
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