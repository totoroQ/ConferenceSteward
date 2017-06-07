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
        <div class="public-nav">您当前的位置：<a href="index.html">会议套餐</a>&nbsp;&nbsp;&nbsp;添加套餐</div>
        <div class="public-content">
            <div class="public-content-header">
                <h3 >套餐添加</h3>
            </div>
            <div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="${ctx}/pack/addPack"  method="post">
                    <div class="form-group ">
                        <label for="packName" class=" control-label " >套餐名称：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="packName" name="packName"  value="" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packCity" class=" control-label " >举办城市：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="packCity" name="packCity"  value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packAddress" class=" control-label">所在地址：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="packAddress" name="packAddress"  value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packPicture" class=" control-label">套餐图片：</label>
                        <div class="col-sm-3">
                            <input type="file" class="form-control" id="packPicture" placeholder="此处上传文件" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packNumber" class=" control-label">容纳人数：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="packNumber" name="packNumber" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packPrice" class=" control-label">参考价格：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="packPrice" name="packPrice" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packSuitable" class=" control-label">适用场地：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="packSuitable" name="packSuitable" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packAmount" class=" control-label">套餐数量：</label>
                        <div class="col-sm-3">
                            <input type="number" class="form-control" id="packAmount" name="packAmount" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packFavorable" class=" control-label">优惠措施：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="packFavorable" name="packFavorable" value="">
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