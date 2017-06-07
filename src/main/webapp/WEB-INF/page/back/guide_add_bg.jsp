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
<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
String date = formatter.format(currentTime); //将日期时间格式化 
%>
<body marginwidth="0" marginheight="0">
	<div class="container">
	    <div class="public-nav">您当前的位置：<a href="#">管理首页</a><a href="">会员</a>&nbsp;&nbsp;&nbsp;会议攻略</div>
	    <div class="public-content">
	        <div class="public-content-header">
	            <h3 style="font-size:15px;font-weight:bold;">添加会议攻略</h3>
	        </div>
	        <div class="public-content-cont">
	            <form data-toggle="validator" class="form-horizontal" id="guideForm" name="guideForm" action="${ctx }/guide/add">
	            <input type="hidden" name="guideId" value="${guide.guideId}" />
	            <input type="hidden" name="guideTime" value="<%=date%>" />
	                <div class="form-group ">
	                    <label for="username" class=" control-label " >标题：</label>
	                    <div class="col-sm-3">
	                         <input type="text" class="form-control" id="guideTitle" name="guideTitle" value="${guide.guideTitle}">
	                    </div>
	                </div>
	                <div class="form-group ">
	                    <label for="course" class=" control-label">类型：</label>
	                    <div class="col-sm-3">
	                        <select class="form-control" id="guideType" name="guideType">
	                        	<option value="">-----请选择-----</option>
	                            <option>会议课堂</option>
	                            <option>会议动态</option>
	                            <option>会议分享</option>
	                            <option>会议独家</option>
	                        </select>
	                    </div>
	                </div>
	                <div class="form-group ">
	                    <label for="password" class=" control-label">文章作者：</label>
	                    <div class="col-sm-3">
	                        <input type="text" class="form-control" id="guideAuthor" name="guideAuthor">
	                    </div>
	                </div>
	                   <div class="form-group ">
	                    <label for="file" class=" control-label">封面图片：</label>
	                    
	                    <div class="col-sm-3">
	                        <img id="imgsImgSrc" name="imgsImgSrc" src="" height="100" width="100"><br/>
	                        <input type="file" class="form-control" id="myfile" name="myfile"  onchange='submitUpload()'/>
	                        <input type="hidden" id="guidePicture" name="guidePicture" value=""/>
	                    </div>
	                </div>
	                <div class="form-group ">
	                    <label for="age" class=" control-label">内容：</label>
	                    <div class="col-sm-3">
	                        <textarea class="form-control" rows="5" id="guideContent" name="guideContent">
	                        </textarea>
	                    </div>
	                </div>
	               
	                
	                <div class="form-group form-inline">
	                    <div class="col-md-10 col-md-offset-1">
	                        <input type="submit" class="button button-glow button-rounded button-raised button-primary"/>
	                        <input type="reset" class="button button-glow button-border button-rounded button-primary"/>
	                    </div>
	                </div>
	            </form>
	       </div>
	    </div>
            <!-- END ROW-->
     </div>
        <!-- END WRAPPER-->
    <!-- END MAIN CONTENT -->
    <!-- BEGIN FOOTER -->
    <footer class="site-footer">
        <div class="text-center">
            2017 &copy; 软件学院
            <a href="" target="_blank">
                会管家组
            </a>
            <a href="http://www.mycodes.net" class="go-top">
                <i class="fa fa-angle-up">
                </i>
            </a>
        </div>
    </footer>
    <!-- END  FOOTER -->
<!-- END SECTION -->

<!-- BEGIN JS -->
<script src="${ctx}/js/jquery-1.8.3.min.js" ></script><!-- BASIC JS LIABRARY 1.8.3 -->
<script src="${ctx}/js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS  -->
<script src="${ctx}/js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDING JS -->
<script src="${ctx}/js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS  -->
<script src="${ctx}/js/jquery.nicescroll.js" > </script><!-- NICESCROLL JS  -->
<script src="${ctx}/assets/data-tables/jquery.dataTables.js"></script><!-- DATATABLE JS  -->
<script src="${ctx}/assets/data-tables/DT_bootstrap.js"></script><!-- DATATABLE JS  -->
<script src="${ctx}/js/respond.min.js" ></script><!-- RESPOND JS  -->
<script src="${ctx}/js/common-scripts.js" ></script><!-- BASIC COMMON JS  -->
<script src="${ctx}/js/editable-table.js" ></script><!-- EDITABLE TABLE JS  -->
<script type="text/javascript" src="${ctx}/js/jquery.form.js"></script>
<script >
    <!-- EDITABLE TABLE FUNCTION  -->
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>
<script>
function submitUpload(){
	var option = {
			url:"${ctx}/upload/uploadPic",//如果不指定url那么就使用使用提交表单的url，如果指定就使用当前的url
			dataType:"text",
			success:function(responseText){
				$("#imgsImgSrc").attr("src", "${ctx }/upload/"+responseText);
				$("#guidePicture").val(responseText);
			},
			error:function(){
				alert("系统错误");
			}
			
	};
	$("#guideForm").ajaxSubmit(option);
	
}
</script>
<!-- END JS -->
</body>
</html>