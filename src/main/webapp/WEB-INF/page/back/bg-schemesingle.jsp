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

            <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="scheme/updateSchemeCheck" method="post">
                <div class="form-group " >
                    <label for="username" class=" control-label " >方案名：</label>
                    <div class="col-sm-3">
                        ${s.schemeName }
                        <input type="hidden" class="form-control" id="schemeName" name="schemeName" value="${s.schemeName }" placeholder=""> 
                        <input type="hidden" name="schemeId" value="${s.schemeId }">
                    </div>
                </div>
                <div class="form-group ">
                    <label for="password" class=" control-label">城市：</label>
                    <div class="col-sm-3">
                        ${s.schemeCity }
                        <input type="hidden" class="form-control" id="schemeCity" name="schemeCity" value="${s.schemeCity }" placeholder=""> 
                    </div>
                </div>
                <div class="form-group ">
                    <label for="age" class=" control-label">方案类型：</label>
                    <div class="col-sm-3">
                        ${ s.typeName}
                       <input type="hidden" class="form-control" id="typeName" name="typeName" value="${ s.typeName}" placeholder="">
                    </div>
                </div>
                <div class="form-group ">
                    <label for="age" class=" control-label">方案周期：</label>
                    <div class="col-sm-3">
                    <input type="hidden" class="form-control" id="schemeNumber" name="schemeNumber" value="${ s.schemeDuration}" placeholder=""> 
                    	<c:choose>
               
                                <c:when test="${s.schemeDuration==1 }">
                                		小于30min
                                </c:when>
                                <c:when test="${s.schemeDuration==2 }">
                                		30min~1h
                                </c:when>
                                <c:when test="${s.schemeDuration==3 }">
                                		1h~2h
                                </c:when>
                                <c:when test="${s.schemeDuration==4 }">
                                		3h~4h
                                </c:when>
                                <c:when test="${s.schemeDuration==5 }">
                                		4h~5h
                                </c:when>
                                <c:when test="${s.schemeDuration==6 }">
                                		大于5h
                                </c:when>

                           </c:choose>

                    </div>
                </div>
                <div class="form-group ">
                    <label for="age" class=" control-label">参与人数：</label>
                    <div class="col-sm-3">
                    <input type="hidden" class="form-control" id="schemeNumber" name="schemeNumber" value="${ s.schemeNumber}" placeholder=""> 
                    	<c:choose>
                                			
                                			<c:when test="${s.schemeNumber==1 }">
                                				少于5人
                                			</c:when>
                                			<c:when test="${s.schemeNumber==2 }">
                                				5~10人
                                			</c:when>
                                			<c:when test="${s.schemeNumber==3 }">
                                				10~20人
                                			</c:when>
                                			<c:when test="${s.schemeNumber==4 }">
                                				20~30人
                                			</c:when>
                                			<c:when test="${s.schemeNumber==5 }">
                                				30~40人
                                			</c:when>
                                			<c:when test="${s.schemeNumber==6 }">
                                				40~50人
                                			</c:when>
                                			<c:otherwise>
                                				大于50人
                                			</c:otherwise>
                                		
                                		</c:choose>
                    
                    </div>
                </div>
                <div class="form-group ">
                    <label for="age" class=" control-label">方案预算：</label>
                    <div class="col-sm-3">
                       <input type="hidden" class="form-control" id="age" name="schemeBudget" value="${ s.schemeBudget}" placeholder=""> 
                    	<c:choose>
                                			
                                			<c:when test="${s.schemeBudget==1 }">
                                				小于1k
                                			</c:when>
                                			<c:when test="${s.schemeBudget==2 }">
                                				1K~2k
                                			</c:when>
                                			<c:when test="${s.schemeBudget==3 }">
                                				2k~3k
                                			</c:when>
                                			<c:when test="${s.schemeBudget==4 }">
                                				3k~4k
                                			</c:when>
                                			<c:when test="${s.schemeBudget==5 }">
                                				4k~5k
                                			</c:when>
                                			<c:otherwise>
                                				大于5k
                                			</c:otherwise>
                                		
                                		</c:choose>
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class=" control-label">审核结果：</label>
                    <div class="col-sm-3">
                        <select name="schemeCheck"  class="form-control">
                            <option>点击后选择审核结果--</option>
                            <option>通过</option>
                            <option>未通过</option>
                        </select>
                    </div>
                </div>


                <!-- <div class="form-group ">
                    <label  class=" control-label">性别：</label>
                    <div class="col-sm-3 pull-left" >
                        <input type="radio" class="radio-inline" id="sex1" name="sex" placeholder="性别">男
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" class="radio-inline" id="sex2" name="sex" placeholder="性别">女
                    </div>
                </div> -->

                <div class="form-group form-inline">
                    <div class="col-md-10 col-md-offset-1">
                        <input type="submit" class="button button-glow button-rounded button-raised button-primary"/>
                        <input type="reset" class="button button-glow button-border button-rounded button-primary"/>
                    </div>
                </div>
            </form>
            

            

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
<script src="kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });
</script>
</body>
</html>
