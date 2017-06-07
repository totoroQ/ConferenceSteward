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
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Olive Enterprise">
    <!-- END META -->

    <!-- BEGIN SHORTCUT ICON -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>会管家</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!-- 导航栏，引用head.jsp页面 -->
    <jsp:include page="head.jsp"></jsp:include>


    <!-- BEGIN MAIN CONTENT -->
    <section id="main-content">
        <!-- BEGIN WRAPPER  -->
        <section class="wrapper site-min-height">
            <section class="panel">

                    <ol class="breadcrumb">
                        <li><a href="index.html" style="text-decoration:underline">首页</a></li>
                        <li>/</li>
                        <li><a href="insider_myplan.html" style="text-decoration:underline">会员</a></li>
                        <li>/</li>
                        <li class="active">我的方案</li>
                    </ol>

				

                <div class="panel-body">
                    <div class="adv-table editable-table ">
                        <div class="space15"></div>
                        
                        
                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                            <thead>
                            <tr>
                                <th>方案名称</th>
                                <th>城市</th>
                                <th>方案类型</th>
                                <th class="hidden-phone">方案周期</th>
                                <th class="hidden-phone">参与人数</th>
                                <th class="hidden-phone">方案预算</th>
                                <th class="hidden-phone">审核结果</th>
                                <th>修改</th>
                                <th>删除</th>
                            </tr>
                            </thead>
                            <tbody>
                            
                            <c:forEach items="${pagemsg.list }" var="s">
                            	
                            	<tr class="">
                    				<td>${s.schemeName}</td>
                                	<td>${s.schemeCity}</td>
                                	<td>${s.typeName }</td>
                                	<td class="hidden-phone">
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
                                		
                                    </td>
                                	<td class="hidden-phone">
                                	
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
                                	</td>
                                	<td class="center hidden-phone">
                                		
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
                                	
                                	</td>
                                	<td class="center hidden-phone">${s.schemeCheck }</td>
                                	<td><a class="edit" href="${pageContext.request.contextPath}/scheme/findSchemeBySchemeId?schemeId=${s.schemeId }"><span class="label label-success">修改</span></a></td>
                                	<td><a class="delete" href="${pageContext.request.contextPath}/scheme/deleteById?schemeId=${s.schemeId }"><span class="label label-danger">删除</span></a></td>
                            	</tr>
                            	
                            
                            </c:forEach>
                            
                            </tbody>
                        </table>
                     
                        <nav aria-label="Page navigation" style="text-align: center">
                <ul class="pagination">
                    <li><span>第${requestScope.pagemsg.pageIndex }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;</li> 
                    <li>
                    	<c:if test="${requestScope.pagemsg.pageIndex != 1}">
                    		
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePageByuser?pageIndex=1&userId=${u.userId }">首页</a>
                    		
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePageByuser?pageIndex=${requestScope.pagemsg.pageIndex-1}&userId=${u.userId }" aria-label="Previous">
                            	<span aria-hidden="true">上一页</span>
                        	</a>
                   
                    	</c:if>
                    
                    </li>
                    
                    
                    <li>
                    
                    	<c:if test="${requestScope.pagemsg.pageIndex != requestScope.pagemsg.totalPage}">
                    	
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePageByuser?pageIndex=${requestScope.pagemsg.pageIndex+1}&userId=${u.userId }" aria-label="Next">
                            	<span>下一页</span>
                        	</a>
                    	
                        	<a href="${pageContext.request.contextPath }/scheme/selectSchemePageByuser?pageIndex=${requestScope.pagemsg.totalPage}&userId=${u.userId }">尾页</a>
                    	
                    	</c:if>
                    
                    
                    </li>
                </ul>
            </nav>
                    </div>
                </div>
            </section>
        </section>
        <!-- END WRAPPER  -->
    </section>
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
    <!-- BEGIN JS -->
    <script src="js/jquery-1.8.3.min.js" ></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->
    <script src="js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
    <script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
    <script src="js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS -->
    <script src="js/jquery.nicescroll.js" ></script><!-- NICESCROLL JS -->
    <script src="js/respond.min.js" ></script><!-- RESPOND JS -->
    <script src="js/jquery.sparkline.js"></script><!-- SPARKLINE JS -->
    <script src="js/sparkline-chart.js"></script><!-- SPARKLINE CHART JS -->
    <script src="js/common-scripts.js"></script><!-- BASIC COMMON JS -->
    <script src="js/count.js"></script><!-- COUNT JS -->
    <!--Morris-->
    <script src="assets/morris.js-0.4.3/morris.min.js" ></script><!-- MORRIS JS -->
    <script src="assets/morris.js-0.4.3/raphael-min.js" ></script><!-- MORRIS  JS -->
    <script src="js/chart.js" ></script><!-- CHART JS -->
    <!--Calendar-->
    <script src="js/calendar/clndr.js"></script><!-- CALENDER JS -->
    <script src="js/calendar/evnt.calendar.init.js"></script><!-- CALENDER EVENT JS -->
    <script src="js/calendar/moment-2.2.1.js"></script><!-- CALENDER MOMENT JS -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script><!-- UNDERSCORE JS -->
    <script src="assets/jquery-knob/js/jquery.knob.js" ></script><!-- JQUERY KNOB JS -->
    <script >
        //knob
        $(".knob").knob();

    </script>
    <!-- END JS -->
</body>
</html>
