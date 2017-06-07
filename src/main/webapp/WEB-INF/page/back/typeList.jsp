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
    <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $('#myModal').modal(options);
        $('#myModal').modal(options);
    </script>
    <style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
<body marginwidth="0" marginheight="0">
<!-- 添加会议套餐模态框（Modal） -->
<div class="modal fade" id="addType" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    添加会议类型
                </h4>
            </div>
            <div class="modal-body">
               	<div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="${ctx}/type/addType"  method="post" enctype="multipart/form-data">
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
            <div class="modal-footer ">

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 编辑会议套餐模态框（Modal） -->
<div class="modal fade" id="editType" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    编辑会议类型
                </h4>
            </div>
            <div class="modal-body">
              <div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="${ctx}/conference/editConference"  method="post" enctype="multipart/form-data">
                    <div class="form-group col-sm-10">
                        <label for="typeName" class=" control-label " >类型名：</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="typeName" name="typeName" value=" ${type.typeName}">
                        </div>
                    </div>
                    <div class="form-group form-inline">
                            <div class="col-sm-5 col-sm-offset-4">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                </button>
                                <button type="submit" class="btn btn-primary">
                                    提交
                                </button>
                            </div>
                     </div>
                </form>
            </div>
              </div>
            <div class="modal-footer ">

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会议类型管理</a>>&nbsp;&nbsp;&nbsp;会议类型列表</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会议类型管理</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline">
                 <div >
                    <label for="search">查找:</label>
                    <input type="text" class="form-control" id="search" placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                    <!-- <button type="submit" class="btn btn-default"  onclick="javascript:window.location.href='${ctx}/pack/addLoad'">添加</button> -->
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addType">添加</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>类型ID</th>
                        <th>类型名称</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${typeList}"  var="type">
					     	<tr  >
					  			<td>${type.typeId}</td>
					  			<td>${type.typeName}</td>
					  			<td><a href="${ctx}/type/editLoad?id=${type.typeId}"  data-toggle="modal" data-target="#editType">修改</a>   <a href="${ctx}/type/delete?id=${type.typeId}">删除</a> </td>
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
<script src="<%=  basePath %>kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });
</script>
</body>
</html>