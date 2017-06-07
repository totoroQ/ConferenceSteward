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
        $('#myModal').modal(options)
        $('#myModal').modal(options)
    </script>
    <style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
<body marginwidth="0" marginheight="0">

<!-- 添加会议模态框（Modal） -->
<div class="modal fade" id="addConference" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加会议
				</h4>
			</div>
			<div class="modal-body">
				<div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal col-sm-offset-1" id="defaultForm" name="defaultForm" action="${ctx}/conference/addConference" method="post" enctype="multipart/form-data">
                    <div class="form-group ">
                        <label for="conferenceName" class=" control-label " >会议名称：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceName" name="conferenceName" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="typeName" class=" control-label " >会议类型：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="typeName" name="typeName" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePicture" class=" control-label">会议图片：</label>
                        <div class="col-sm-8">
                            <input type="file" class="form-control" id="conferencePicture"  name="conference_pic">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceCity" class=" control-label">举办城市：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceCity" name="conferenceCity" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceDuration" class=" control-label">会议时长：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceDuration" name="conferenceDuration" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceAmount" class=" control-label">库存量：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="conferenceAmount" name="conferenceAmount" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceNumber" class=" control-label">参会人数：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="conferenceNumber" name="conferenceNumber" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePrice" class=" control-label">场地价格：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferencePrice" name="conferencePrice" value="">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceIdentification" class=" control-label">是否为特价场地：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceIdentification" name="conferenceIdentification" value="">
                        </div>
                    </div>
                     <div class="form-group form-inline">
                            <div class="col-sm-5 col-sm-offset-4">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                </button>
                                <button type="submit" class="btn btn-primary">
                                    添加
                                </button>
                            </div>
                        </div>
                </form>
            </div>
			</div>
			<div class="modal-footer">
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>



<!-- 编辑会议模态框（Modal） -->
<div class="modal fade" id="editConference" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					修改会议
				</h4>
			</div>
			<div class="modal-body">
				<div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal  col-sm-offset-1" id="defaultForm" name="defaultForm" action="${ctx}/conference/conferenceList"  method="post" enctype="multipart/form-data">
                    <div class="form-group ">
                        <label for="conferenceName" class=" control-label " >会议名称：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceName" name="conferenceName" value="${conference.conferenceName} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="typeName" class=" control-label " >会议类型：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="typeName" name="typeName" value=" ${conference.typeName}">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePicture" class=" control-label">会议图片：</label>
                        <div class="col-sm-8">
                            <input type="file" class="form-control" id="conferencePicture" name="conference_pic" value="${conference.conferencePicture} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceCity" class=" control-label">举办城市：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceCity" name="conferenceCity" value="${conference.conferenceCity} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceDuration" class=" control-label">会议时长：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceDuration" name="conferenceDuration" value="${conference.conferenceDuration} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceAmount" class=" control-label">库存量：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="conferenceAmount" name="conferenceAmount" value="${conference.conferenceAmount} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceNumber" class=" control-label">参会人数：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="conferenceNumber" name="conferenceNumber" value="${conference.conferenceNumber} ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferencePrice" class=" control-label">场地价格：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferencePrice" name="conferencePrice" value=" ${conference.conferencePrice}">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="conferenceIdentification" class=" control-label">是否为特价场地：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="conferenceIdentification" name="conferenceIdentification" value="${conference.conferenceIdentification} ">
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
                     </div>
                </form>
            </div>
			</div>
			<div class="modal-footer">
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会议管理</a>>&nbsp;&nbsp;&nbsp;会议列表</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会议</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline">
                <div >
                    <label for="search">查找:</label>
                    <input type="text" class="form-control" id="search" name="${value}"  placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                   <!--  <button type="submit" class="btn btn-default">添加</button> -->
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addConference">添加</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-bordered table-hover">
                    <thead >
                        <tr  >
                            <th class="text-center">会议ID</th>
                             <th class="text-center">会议名称</th>
                            <th class="text-center">会议类别</th>
                            <th class="text-center">会议图片</th>
                            <th class="text-center">举办城市</th>
                            <th class="text-center">会议时长</th>
                            <th class="text-center">库层量</th>
                            <th class="text-center">参会人数</th>
                            <th class="text-center">参会价格(元)</th>
                            <th class="text-center">是否为特价场地</th>
                            <th class="text-center">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${conferenceList}"  var="conference">
					     	<tr  >
					  			<td>${conference.conferenceId}</td>
					  			<td>${conference.conferenceName}</td>
					  			<td>${conference.typeName}</td>
					  			<td>${conference.conferencePicture}</td>
					  			<td>${conference.conferenceCity}</td>
					  			<td>${conference.conferenceDuration}</td>
					  			<td>${conference.conferenceAmount}</td>
					  			<td>${conference.conferenceNumber}</td>
					  			<td>${conference.conferencePrice}</td>
					  			<td>${conference.conferenceIdentification}</td>
					  			<td><a href="${ctx}/conference/conferenceLoad?id=${conference.conferenceId}"  data-toggle="modal" data-target="#editConference">修改</a>   <a href="${ctx}/conference/delete?id=${conference.conferenceId}">删除</a> </td>
					  			<!-- <td><a  href="${ctx}/pack/editPack?id=${pack.packId}" data-toggle="modal" data-target="#editPack">修改</a>   <a href="${ctx}/pack/delete?id=${pack.packId}">删除</a> </td> -->
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