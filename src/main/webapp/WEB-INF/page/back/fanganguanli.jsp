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
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">方案服务</a>>&nbsp;&nbsp;&nbsp;方案管理</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">方案管理</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline">
                <div >
                    <label for="exampleInputName2">查找:</label>
                    <input type="text" class="form-control" id="exampleInputName2" placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>是否处理</th>
                        <th>详情</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <th>方案1</th>
                        <th style="color: red">未处理</th>
                        <th><a href="fanganxiangqing.html">查看</a></th>
                    </tr>
                    <tr>
                        <th>方案2</th>
                        <th style="color: red">未处理</th>
                        <th><a href="fanganxiangqing.html">查看</a></th>
                    </tr>
                    <tr>
                        <th>方案3</th>
                        <th style="color: red">未处理</th>
                        <th><a href="fanganxiangqing.html">查看</a></th>
                    <tr>
                        <th>方案4</th>
                        <th style="color: red">未处理</th>
                        <th><a href="fanganxiangqing.html">查看</a></th>
                    </tr>
                    <tr>
                        <th>方案5</th>
                        <th style="color: red">未处理</th>
                        <th><a href="fanganxiangqing.html">查看</a></th>
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