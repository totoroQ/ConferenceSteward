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
<!-- 添加会议套餐模态框（Modal） -->
<div class="modal fade" id="addPack" name="addPack" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    添加会议套餐
                </h4>
            </div>
            <div class="modal-body">
                <div class="public-content-cont">
                    <form data-toggle="validator" class="form-horizontal col-sm-offset-1" id="defaultForm" name="defaultForm" action="${ctx}/pack/addPack" method="post" enctype="multipart/form-data">
                        <div class="form-group ">
                            <label for="packName" class=" control-label " >套餐名称：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="packName" name="packName" placeholder="套餐名称" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packCity" class=" control-label " >举办城市：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="packCity" name="packCity" placeholder="举办城市" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packAddress" class=" control-label">所在地址：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="packAddress" name="packAddress" placeholder="所在地址" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packPicture" class=" control-label">套餐图片：</label>
                            <div class="col-sm-8">
                                <input type="file" class="form-control" id="pack_pic" name="pack_pic"  placeholder="此处上传文件" value="">
                            </div>
                        </div>
                        <!-- <div class="form-group ">
	                        <label class=" control-label " >封面图片：</label>
	                        <div class="col-sm-3" >
	                            <img class="img-rounded" id="imgsImgSrc" name="imgsImgSrc" src="" height="100" width="100"><br/>
	                            <input type="file" style="margin:10px 10px 10px 0px;" class="form-control" id="myfile" name="myfile"  onchange='submitUpload()'/>
	                            <input type="hidden" id="packPicture" name="packPicture" value=""/>
	                        </div>
                        </div> -->
                        <div class="form-group ">
                            <label for="packNumber" class=" control-label">容纳人数：</label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" id="packNumber" name="packNumber" placeholder="容纳人数" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packPrice" class=" control-label">参考价格：</label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" id="packPrice" name="packPrice" placeholder="参考价格" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packSuitable" class=" control-label">适用场地：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="packSuitable" name="packSuitable" placeholder="适用场地" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packAmount" class=" control-label">套餐数量：</label>
                            <div class="col-sm-8">
                                <input type="number" class="form-control" id="packAmount" name="packAmount" placeholder="套餐数量" value="">
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="packFavorable" class=" control-label">优惠措施：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="packFavorable" name="packFavorable" placeholder="优惠措施" value="">
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
            <div class="modal-footer ">

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<!-- 编辑会议套餐模态框（Modal） -->
<div class="modal fade" id="editPack" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    编辑会议套餐
                </h4>
            </div>
            <div class="modal-body">
                <div class="public-content-cont">
                <form data-toggle="validator" class="form-horizontal col-sm-offset-1" id="defaultForm" name="defaultForm" action="${ctx}/pack/packList"  method="post" enctype="multipart/form-data">
                   <div class="form-group ">
                        <label for="packId" class=" control-label " >ID：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packId" name="packId" value="${pack.packId}" >
                        </div>
                    </div> 
                    <div class="form-group ">
                        <label for="packName" class=" control-label " >套餐名称：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packName" name="packName" value="${pack.packName}" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packCity" class=" control-label " >举办城市：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packCity" name="packCity"   value="${pack.packCity}" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packAddress" class=" control-label">所在地址：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packAddress" name="packAddress"  value="${pack.packAddress}" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packPicture" class=" control-label">套餐图片：</label>
                        <div class="col-sm-3">
                            <input type="file" class="form-control" id="packPicture" placeholder="此处上传文件">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packNumber" class=" control-label">容纳人数：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="packNumber" name="packNumber"  value="${pack.packNumber}"  > 
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packPrice" class=" control-label">参考价格：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="packPrice" name="packPrice"  value="${pack.packPrice}" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packSuitable" class=" control-label">适用场地：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packSuitable" name="packSuitable"  value="${pack.packSuitable}" ">
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packAmount" class=" control-label">套餐数量：</label>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" id="packAmount" name="packAmount"  value="${pack.packAmount}" >
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="packFavorable" class=" control-label">优惠措施：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="packFavorable" name="packFavorable"   value="${pack.packFavorable}" >
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
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会议套餐管理</a>>&nbsp;&nbsp;&nbsp;会议套餐</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会议套餐</h3>
        </div>
        <div class="public-content-cont">

            <form class="form-inline" >
                <div >
                    <label for="search">查找:</label>
                    <input type="text" class="form-control" id="search" placeholder="名称">
                    <button type="submit" class="btn btn-default">查找</button>
                    &nbsp;&nbsp;
                    <!-- <button type="submit" class="btn btn-default"  onclick="javascript:window.location.href='${ctx}/pack/addLoad'">添加</button> -->
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#addPack">添加</button>
                </div>
            </form>

            <div class="a">
                <table class="table table-bordered table-hover">
                    <thead >
                        <tr  >
                        	<th class="text-center">套餐ID</th>
                            <th class="text-center">套餐名称</th>
                            <th class="text-center">举办城市</th>
                            <th class="text-center">所在地址</th>
                            <th class="text-center">套餐图片</th>
                            <th class="text-center">容纳人数</th>
                            <th class="text-center">参考价格(元)</th>
                             <th class="text-center">适用场地</th>
                            <th class="text-center">套餐数量</th>
                            <th class="text-center">优惠措施</th>
                            <th class="text-center">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${packList}"  var="pack">
					     	<tr  >
					  			<td>${pack.packId}</td>
					  			<td>${pack.packName}</td>
					  			<td>${pack.packCity}</td>
					  			<td>${pack.packAddress}</td>
					  			<td>${pack.packPicture}</td>
					  			<td>${pack.packNumber}</td>
					  			<td>${pack.packPrice}</td>
					  			<td>${pack.packSuitable}</td>
					  			<td>${pack.packAmount}</td>
					  			<td>${pack.packFavorable}</td>
					  			<td><a  id="update" onclick="update(pack)"  href="${ctx}/pack/editLoad?id=${pack.packId}" data-toggle="modal" data-target="#editPack">修改</a>   <a href="${ctx}/pack/delete?id=${pack.packId}">删除</a> </td>
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
<%-- <script type="text/javascript" src="${ctx}/js/jquery.form.js"></script> --%>
<!-- 下面JS为页面初始化异步加载数据，
如果采用easyui ,那么返回的data数据就可以直接绑定到表格上，
下面才的的拼接方式上无任何框架的方式 -->
<!-- <script>
function submitUpload(){
	var option = {
			url:"${ctx}/upload/uploadPic",//如果不指定url那么就使用使用提交表单的url，如果指定就使用当前的url
			dataType:"text",
			success:function(responseText){
				$("#imgsImgSrc").attr("src", "${ctx }/upload/"+responseText);
				$("#packPicture").val(responseText);
			},
			error:function(){
				alert("系统错误");
			}
			
	};
	$("#addPack").ajaxSubmit(option);
	
}
</script> -->
<script type="text/javascript">
function update(pack){
	var tds=$(pack).parent().parent().find("td");
	$("#packName").val(tds.eq(1).text);
	$("#update").modal("show");
}

/* $(function(){
$("#update").click(function(){
$.get("${ctx}/pack/editLoad?id=${pack.packId}",function(data,status){
alert("Data: " + data + "nStatus: " + status);
});
}); */
/* 	$.ajax({
	type: "GET",
        url: "${ctx}/pack/editPack",
        data:{packId:packId},
        success: function(data){
        	var body ="";
        	var td = "<td><a  href="${ctx}/pack/editLoad?id=${pack.packId}" data-toggle="modal" data-target="#editPack">修改</a>   <a href="${ctx}/pack/delete?id=${pack.packId}">删除</a> </td>
        	for(var i=0;i< data.length;i++)
        	{
        		body  = body + "<tr>"; 
        		for(var key in data[i]){ 
        		
        			body  = body   + "<td>"+data[i][key]+"</td>" ; 
        			
        		}
        		body  =    body + td + "</tr>";   
        	}
        	$("#tab tbody").append(body); });
}); */
</script>
</html>