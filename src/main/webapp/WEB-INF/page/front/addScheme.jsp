<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
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
    <link rel="shortcut icon" href="<%=basePath%>img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>提交方案</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!-- 导航栏，引用head.jsp页面 -->
    <jsp:include page="head.jsp"></jsp:include>
	
	
    <!-- BEGIN MAIN CONTENT -->
    <!-- BEGIN MAIN CONTErow product-listNT -->
    <section id="main-content">
        <!-- BEGIN WRAPPER-->
        <section class="wrapper">
            <!-- BEGIN ROW-->
            <div class="row">
                <div class="col-md-12">

                    <ol class="breadcrumb">
                        <li><a href="index.html" style="text-decoration:underline">首页</a></li>
                        <li>/</li>
                        <li><a href="tijiaofangan.html" style="text-decoration:underline">方案服务</a></li>
                        <li>/</li>
                        <li class="active">提交方案</li>
                    </ol>


                    <form action="scheme/insert" method="post" class="form-horizontal col-md-offset-1">
                        
                        <input type="hidden" name="userId" value="${u.userId }">
                        
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">方案名称：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="schemeName" style="border:1px;width: 310px;height: 30px" >
                            </div>
                        </div>
                        
                        
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">方案类型：</label>
                            <div class="col-sm-4">
                                <select name="typeName" class="form-control">
                                	<option value="">点击后选择方案类型--</option>
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
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">活动城市：</label>
                            <div class="col-sm-4">
                                <select name="schemeCity" class="form-control">
                                <option value="">点击后选择活动城市--</option>
                                    <option>北京</option>
                                    <option>上海</option>
                                    <option>深圳</option>
                                    <option>武汉</option>
                                    <option>杭州</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">方案周期：</label>
                            <div class="col-sm-4">
                                <select name="schemeDuration" class="form-control">
                                	<option value="">点击后选择方案周期--</option>
                                    <option value="1">小于30min</option>
                                    <option value="2">30min~1h</option>
                                    <option value="3">1h~2h</option>
                                    <option value="4">3h~4h</option>
                                    <option value="5">4h~5h</option>
                                    <option value="6">大于5h</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">参与人数：</label>
                            <div class="col-sm-4">
                                <select name="schemeNumber" class="form-control">
                                	<option value="">点击后选择参与人数--</option>
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
                        <div class="form-group" style="margin:40px 0">
                            <label class="col-sm-2 control-label">方案预算：</label>
                            <div class="col-sm-4">
                                <select name="schemeBudget" class="form-control">
                                	<option value="">点击后选择方案预算--</option>
                                    <option value="1">小于1k</option>
                                    <option value="2">1K~2k</option>
                                    <option value="3">2k~3k</option>
                                    <option value="4">3k~4k</option>
                                    <option value="5">4k~5k</option>
                                    <option value="6">大于5k</option>
                                </select>
                            </div>
                        </div>

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
</section>
<!-- END SECTION -->
<!-- BEGIN JS -->
<script src="<%=basePath%>js/jquery-1.8.3.min.js" ></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->
<script src="<%=basePath%>js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
<script src="<%=basePath%>js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
<script src="<%=basePath%>js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS -->
<script src="<%=basePath%>js/jquery.nicescroll.js" ></script><!-- NICESCROLL JS -->
<script src="<%=basePath%>js/respond.min.js" ></script><!-- RESPOND JS -->
<script src="<%=basePath%>js/jquery.sparkline.js"></script><!-- SPARKLINE JS -->
<script src="<%=basePath%>js/sparkline-chart.js"></script><!-- SPARKLINE CHART JS -->
<script src="<%=basePath%>js/common-scripts.js"></script><!-- BASIC COMMON JS -->
<script src="<%=basePath%>js/count.js"></script><!-- COUNT JS -->
<!--Morris-->
<script src="<%=basePath%>assets/morris.js-0.4.3/morris.min.js" ></script><!-- MORRIS JS -->
<script src="<%=basePath%>assets/morris.js-0.4.3/raphael-min.js" ></script><!-- MORRIS  JS -->
<script src="<%=basePath%>js/chart.js" ></script><!-- CHART JS -->
<!--Calendar-->
<script src="<%=basePath%>js/calendar/clndr.js"></script><!-- CALENDER JS -->
<script src="<%=basePath%>js/calendar/evnt.calendar.init.js"></script><!-- CALENDER EVENT JS -->
<script src="<%=basePath%>js/calendar/moment-2.2.1.js"></script><!-- CALENDER MOMENT JS -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script><!-- UNDERSCORE JS -->
<script src="<%=basePath%>assets/jquery-knob/js/jquery.knob.js" ></script><!-- JQUERY KNOB JS -->
<script >
    //knob
    $(".knob").knob();

</script>
<!-- END JS -->
</body>
</html>
