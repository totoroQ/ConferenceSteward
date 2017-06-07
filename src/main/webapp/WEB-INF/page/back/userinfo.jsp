<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <meta charset="UTF-8">
    <title>后台欢迎页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>bg-css/reset.css" >
    <link rel="stylesheet" href="<%=basePath%>bg-css/content.css" >
    <link href="<%=basePath%>bg-css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath%>bg-css/bootstrap.css" rel="stylesheet">
    
    <style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
  
  <body marginwidth="0" marginheight="0">
<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会员</a>>&nbsp;&nbsp;&nbsp;个人信息管理</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会管家会员</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline" action="user/selectUserPageByValue" method="post">
                <%-- <div >
                    <label for="exampleInputName2">查找:</label>
                    <input name="value" value="${value }" type="text" class="form-control" id="exampleInputName2" placeholder="请输入...">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                    <a href="admin/toAddUser">添加</a>
                    <!-- <button type="admin/toAddUser" class="btn btn-default">添加</button> -->
                </div> --%>
                <div >
                    <label for="search">查找:</label>
                    <input type="text" name="value" value="${value }"  class="form-control" id="search" placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                    <!-- <button type="submit" class="btn btn-default"  onclick="javascript:window.location.href='${ctx}/pack/addLoad'">添加</button> -->
                    <a type="button" class="btn btn-default"  href="admin/toAddUser">添加</a>
                </div>
            </form>

            <div class="a">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>年龄</th>
                        <th>性别</th>
                        <th>邮箱</th>
                        <th>修改</th>
                        <th>删除</th>
                    </tr>
                    </thead>

                    <tbody>
                    
                    <c:forEach items="${pagemsg.list }" var="u">
                    	
                    	<tr>
                        	<th>${u.userName }</th>
                        	<th>${u.userAge }</th>
                        	<th>${u.userSex }</th>
                        	<th>${u.userEmail }</th>
                        	<th><a href="${pageContext.request.contextPath}/user/bgfindById?userId=${u.userId }" >修改</a></th>
                        	<th><a href="${pageContext.request.contextPath}/user/deleteById?userId=${u.userId }" >删除</a></th>
                   		</tr>

                    </c:forEach>
                    
                    </tbody>
                </table>
            </div>

            <nav aria-label="Page navigation" style="text-align: center">
                <ul class="pagination">
                    <li><span>第${requestScope.pagemsg.pageIndex }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;</li> 
                    <li>
                    	<c:if test="${requestScope.pagemsg.pageIndex != 1}">
                    		
                        	<a href="${pageContext.request.contextPath }/user/selectUserPage?pageIndex=1">首页</a>
                    		
                        	<a href="${pageContext.request.contextPath }/user/selectUserPage?pageIndex=${requestScope.pagemsg.pageIndex-1}" aria-label="Previous">
                            	<span aria-hidden="true">上一页</span>
                        	</a>
                   
                    	</c:if>
                    
                    </li>
                    
                    
                    <li>
                    
                    	<c:if test="${requestScope.pagemsg.pageIndex != requestScope.pagemsg.totalPage}">
                    	
                        	<a href="${pageContext.request.contextPath }/user/selectUserPage?pageIndex=${requestScope.pagemsg.pageIndex+1}" aria-label="Next">
                            	<span>下一页</span>
                        	</a>
                    	
                        	<a href="${pageContext.request.contextPath }/user/selectUserPage?pageIndex=${requestScope.pagemsg.totalPage}">尾页</a>
                    	
                    	</c:if>
                    
                    
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<script src="<%=basePath%>kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });
</script>
</body>
</html>
