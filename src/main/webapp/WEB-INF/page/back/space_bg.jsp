<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ include file="head.jsp" %> --%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="${ctx}/css/reset.css">
	<link rel="stylesheet" href="${ctx}/css/public.css">
	<link rel="stylesheet" href="${ctx}/css/reset.css" >
    <link rel="stylesheet" href="${ctx}/css/content.css" >
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="${ctx}/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/css/button.css" rel="stylesheet">
</head>
<style>
        .a{
            margin-top: 20px;
        }
    </style>
<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会议攻略管理</a>>&nbsp;&nbsp;&nbsp;会管家课堂</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会管家课堂</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline">
                <%-- <div >
                    <label for="exampleInputName2">查找:</label>
                    <input type="text" class="form-control" id="exampleInputName2" placeholder="名称">
                     <a href="#" >查找</a>
                    &nbsp;&nbsp;
                    <!-- <button type="submit" class="btn btn-default" onclick="test()">添加</button> -->
                    <a href="${ctx}/space/addLoad" >添加</a>
                </div> --%>
                <div>
	                    <label for="search">查找:</label>
	                    <input type="text" class="form-control" id="search" placeholder="名称">
	                    <button type="submit" class="btn btn-default">查找</button>
	                    &nbsp;&nbsp;
	                   <!--  <button type="submit" class="btn btn-default">添加</button> -->
	                    <a type="button" class="btn btn-default"  href="${ctx}/space/addLoad">添加</a>
	                </div>
            </form>

            <div class="a">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                    	<th>序号</th>
                        <th>名称</th>
                        <th>场地面积</th>
                        <th>场地容量</th>
                        <th>场地价格</th>
                        <th>操作</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${spaceList}"  var="space" varStatus="status">
                    <tr>
                    	<th>${status.index+1}</th>
                        <th>${space.spaceName}</th>
                        <th>${space.spaceArea}</th>
                         <th>${space.spaceCapacity}</th>
                          <th>${space.spacePrice}</th>
                        <th><a href="${ctx}/space/editLoad?spaceId=${space.spaceId}" >修改</a></th>
                        <th><a href="${ctx}/space/delete?spaceId=${space.spaceId}" >删除</a></th>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <nav aria-label="Page navigation" style="text-align: center">
                <ul class="pagination">
                    <li><span>第${requestScope.pagemsgV.pageIndex }/ ${requestScope.pagemsgV.totalPage}页</span>&nbsp;&nbsp;</li> 
                    <li>
                    	<c:if test="${requestScope.pagemsgV.pageIndex != 1}">
                    		
                        	<a href="${pageContext.request.contextPath }/user/selectUserPageByValue?pageIndex=1&value=${value}">首页</a>
                    		
                        	<a href="${pageContext.request.contextPath }/user/selectUserPageByValue?pageIndex=${requestScope.pagemsgV.pageIndex-1}&value=${value}" aria-label="Previous">
                            	<span aria-hidden="true">上一页</span>
                        	</a>
                   
                    	</c:if>
                    
                    </li>
                    
                    
                    <li>
                    
                    	<c:if test="${requestScope.pagemsgV.pageIndex != requestScope.pagemsgV.totalPage}">
                    	
                        	<a href="${pageContext.request.contextPath }/user/selectUserPageByValue?pageIndex=${requestScope.pagemsgV.pageIndex+1}&value=${value}" aria-label="Next">
                            	<span>下一页</span>
                        	</a>
                    	
                        	<a href="${pageContext.request.contextPath }/user/selectUserPageByValue?pageIndex=${requestScope.pagemsgV.totalPage}&value=${value}">尾页</a>
                    	
                    	</c:if>
                    
                    
                    </li>
                </ul>
            </nav>

        </div>
    </div>
</div> 

</div>
	</div>
</div>
<script src="${ctx}/js/jquery.min.js"></script>
<script src="${ctx}/kingediter/kindeditor-all-min.js"></script>
<script>
$().ready(function(){
	var item = $(".public-ifame-item");

	for(var i=0; i < item.length; i++){
		$(item[i]).on('click',function(){
			$(".ifame-item-sub").hide();
			if($(this.lastElementChild).css('display') == 'block'){
				$(this.lastElementChild).hide()
				$(".ifame-item-sub li").removeClass("active");
			}else{
				$(this.lastElementChild).show();
				$(".ifame-item-sub li").on('click',function(){
					$(".ifame-item-sub li").removeClass("active");
					$(this).addClass("active");
				});
			}
		});
	}
});

KindEditor.ready(function(K) {
    window.editor = K.create('#editor_id');
});
</script>
</body>
</html>