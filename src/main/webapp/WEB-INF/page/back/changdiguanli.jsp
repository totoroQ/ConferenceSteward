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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">场地管理</a>>&nbsp;&nbsp;&nbsp;场地管理</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会管家场地</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline">
                <div >
                    <label for="exampleInputName2">查找:</label>
                    <input type="text" class="form-control" id="exampleInputName2" placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                    <button type="submit" class="btn btn-default">添加</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>场地类型</th>
                        <th>场地面积</th>
                        <th>场地容量</th>
                        <th>场地价格</th>
                        <th>修改</th>
                        <th>删除</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <th>1</th>
                        <th>1.jpg</th>
                        <th>1</th>
                        <th>1.jpg</th>
                        <th><a href="#" >修改</a></th>
                        <th><a href="#" >删除</a></th>
                    </tr>
                    <tr>
                        <th>2</th>
                        <th>2.jpg</th>
                        <th>2</th>
                        <th>2.jpg</th>
                        <th><a href="#" >修改</a></th>
                        <th><a href="#" >删除</a></th>
                    </tr>
                    <tr>
                        <th>3</th>
                        <th>3.jpg</th>
                        <th>3</th>
                        <th>3.jpg</th>
                        <th><a href="#" >修改</a></th>
                        <th><a href="#" >删除</a></th>
                    </tr>
                    <tr>
                        <th>4</th>
                        <th>4.jpg</th>
                        <th>3</th>
                        <th>3.jpg</th>
                        <th><a href="#" >修改</a></th>
                        <th><a href="#" >删除</a></th>
                    </tr>
                    <tr>
                        <th>5</th>
                        <th>5.jpg</th>
                        <th>3</th>
                        <th>3.jpg</th>
                        <th><a href="#" >修改</a></th>
                        <th><a href="#" >删除</a></th>
                    </tr>
                    </tbody>
                </table>
            </div>

            <nav aria-label="Page navigation" style="text-align: center">
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
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