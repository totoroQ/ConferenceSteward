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
	<link rel="stylesheet" href="css/reset.css" >
    <link rel="stylesheet" href="css/content.css" >
    <link href="css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
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

            <form action="scheme/selectSchemePageByValue" method="post" class="form-inline">
                <div >
                    <label for="exampleInputName2">查找:</label>
                    <input name="value" value="${value }" type="text" class="form-control" id="exampleInputName2" placeholder="请输入...">
                    <button type="submit" class="btn btn-default">查找</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>是否审核</th>
                        <th>详情</th>
                    </tr>
                    </thead>

                    <tbody>
                    
                    <c:forEach items="${pagemsg.list }" var="s">
                    
                    	<tr>
                        	<th>${s.schemeName}</th>
                        	<th style="color: red">${s.schemeCheck }</th>
                        	<th><a href="${pageContext.request.contextPath}/scheme/findSchemeBySchemeIdbg?schemeId=${s.schemeId }">查看</a></th>
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
                    		
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePage?pageIndex=1">首页</a>
                    		
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePage?pageIndex=${requestScope.pagemsg.pageIndex-1}" aria-label="Previous">
                            	<span aria-hidden="true">上一页</span>
                        	</a>
                   
                    	</c:if>
                    
                    </li>
                    
                    
                    <li>
                    
                    	<c:if test="${requestScope.pagemsg.pageIndex != requestScope.pagemsg.totalPage}">
                    	
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePage?pageIndex=${requestScope.pagemsg.pageIndex+1}" aria-label="Next">
                            	<span>下一页</span>
                        	</a>
                    	
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePage?pageIndex=${requestScope.pagemsg.totalPage}">尾页</a>
                    	
                    	</c:if>
                    
                    
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<script src="kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });
</script>
</body>
</html>
