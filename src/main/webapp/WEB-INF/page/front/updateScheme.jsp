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
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewpoint" content="width=device-width,inital-scale=1">
    <title>修改方案信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 导航栏，引用head.jsp页面 -->
    <jsp:include page="head.jsp"></jsp:include>

    <!-- BEGIN MAIN CONTENT -->
    <section id="main-content">
        <!-- BEGIN WRAPPER-->
        <section class="wrapper">
            <!-- BEGIN ROW-->
            <div class="row">
                <div class="col-md-12">

                    <ol class="breadcrumb">
                        <li><a href="index.html" style="text-decoration:underline">首页</a></li>
                        <li>/</li>
                        <li><a href="insider_information.html" style="text-decoration:underline">会员</a></li>
                        <li>/</li>
                        <li class="active">我的方案修改</li>
                    </ol>


                    <form action="scheme/updateScheme" method="post"  class="form-horizontal col-md-offset-1">
                        
                        <input type="hidden" name="userId" value="${u.userId }">
    					<input type="hidden" name="schemeId" value="${s.schemeId }">
    					<input type="hidden" name="adminId">
                        
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">方案名称：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="schemeName" value="${s.schemeName }" style="border:1px;width: 310px;height: 30px" >
                            </div>
                        </div>
                        
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">城市：</label>
                            <div class="col-sm-4">
                                <select name="schemeCity" class="form-control">
                                	<option>${s.schemeCity }</option>
                                    <option>北京</option>
                                    <option>上海</option>
                                    <option>深圳</option>
                                    <option>武汉</option>
                                    <option>杭州</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">方案类型：</label>
                            <div class="col-sm-4">
                                <select name="typeName" class="form-control">
                                	<option>${s.typeName }</option>
                                    <option>研讨会</option>
                                    <option>座谈会</option>
                                    <option>专题讨论会</option>
                                    <option>辩论会</option>
                                    <option>全体大会</option>
                                    <option>论坛</option>
                                    <option>学术讨论会</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">方案周期：</label>
                            <div class="col-sm-4">
                                <select name="schemeDuration" class="form-control">
                                	<option>
                                		
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
                                			<c:otherwise>
                                				大于5h
                                			</c:otherwise>
                                		
                                		</c:choose>
                                	</option>

                                    <option value="1">小于30min</option>
                                    <option value="2">30min~1h</option>
                                    <option value="3">1h~2h</option>
                                    <option value="4">3h~4h</option>
                                    <option value="5">4h~5h</option>
                                    <option value="6">大于5h</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">参与人数：</label>
                            <div class="col-sm-4">
                                <select name="schemeNumber" class="form-control">
                                	<option>
                                		
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
                                			<c:when test="${s.schemeNumber==7 }">
                                				大于50人
                                			</c:when>
                                		</c:choose>
                                		
                                	</option>
                                	<option value="1">少于5人</option>
                                    <option value="2">5~10人</option>
                                    <option value="3">10~20人</option>
                                    <option value="4">20~30人</option>
                                    <option value="5">30~40人</option>
                                    <option value="6">40~50人</option>
                                    <option value="7">大于50人</option>
                                    
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">方案预算：</label>
                            <div class="col-sm-4">
                                <select name="schemeBudget" class="form-control">
									<option>
									
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
                                			<c:when test="${s.schemeBudget==6 }">
                                				大于5k
                                			</c:when>

                                		</c:choose>
									</option>
                                
                                	<option value="1">小于1k</option>
                                    <option value="2">1K~2k</option>
                                    <option value="3">2k~3k</option>
                                    <option value="4">3k~4k</option>
                                    <option value="5">4k~5k</option>
                                    <option value="6">大于5k</option>
                                
                                </select>
</div>
</div>
<%-- <div class="form-group" style="margin:60px 0">
    <label class="col-sm-2 control-label">审核结果：</label>
    <div class="col-sm-4">
        <select name="schemeCheck" class="form-control">
            <option>预约成功</option>
            <option>预约失败</option>
        </select>
    </div>
    <input type="hidden" name="userId" value="${u.userId }">
    <input type="hidden" name="schemeId" value="${s.schemeId }">
    <input type="hidden" name="adminId">
</div> --%>

<div class="form-group" style="margin:60px 0">
    <label class="col-sm-2 control-label">审核结果：</label>
    <div class="col-sm-4">
    	<input disabled="disabled" class="form-control" type="text" name="schemeCheck" value="${s.schemeCheck }" style="border:1px;width: 310px;height: 30px" >
    	
    </div>
</div>

<%-- <div class="form-group" style="margin:60px 0">
    <div class="col-sm-offset-2 col-sm-10">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/scheme/findSchemeByUserId?userId=${u.userId }" role="button">修改</a>
    </div>
</div> --%>


<div class="form-group" style="margin:60px 0">
                            <div class="col-sm-offset-2 col-sm-4 " align="center">
                                <button class="btn btn-default" type="reset">重置</button>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <button class="btn btn-default" type="submit">保存</button>
                            </div>
                        </div>

</form>

</div>
</div>
<!-- END ROW-->
</section>
<!-- END WRAPPER-->
</section>
<!-- END MAIN CONTENT -->

</section>
<!-- END SECTION -->

<!-- BEGIN JS -->
<script src="<%=basePath%>js/jquery-1.8.3.min.js" ></script><!-- BASIC JS LIABRARY 1.8.3 -->
<script src="<%=basePath%>js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS  -->
<script src="<%=basePath%>js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDING JS -->
<script src="<%=basePath%>js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS  -->
<script src="<%=basePath%>js/jquery.nicescroll.js" > </script><!-- NICESCROLL JS  -->
<script src="<%=basePath%>assets/data-tables/jquery.dataTables.js"></script><!-- DATATABLE JS  -->
<script src="<%=basePath%>assets/data-tables/DT_bootstrap.js"></script><!-- DATATABLE JS  -->
<script src="<%=basePath%>js/respond.min.js" ></script><!-- RESPOND JS  -->
<script src="<%=basePath%>js/common-scripts.js" ></script><!-- BASIC COMMON JS  -->
<script src="<%=basePath%>js/editable-table.js" ></script><!-- EDITABLE TABLE JS  -->
<script >
    <!-- EDITABLE TABLE FUNCTION  -->
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>
<!-- END JS -->
</body>
</html>