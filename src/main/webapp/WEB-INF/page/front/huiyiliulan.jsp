<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Olive Enterprise">
    <!-- END META -->

    <!-- BEGIN SHORTCUT ICON -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>
        会议套餐
    </title>
    <!-- BEGIN STYLESHEET-->
    <link href="<%=  basePath %>css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=  basePath %>css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=  basePath %>assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
    <link href="<%=  basePath %>css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <link href="<%=  basePath %>css/style-responsive.css" rel="stylesheet"><!-- THEME RESPONSIVE CSS -->
    <link href="<%=  basePath %>assets/morris.js-0.4.3/morris.css" rel="stylesheet"><!-- MORRIS CHART CSS -->
    <!--dashboard calendar-->
    <link href="<%=  basePath %>css/clndr.css" rel="stylesheet"><!-- CALENDER CSS -->
 
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
                        <li><a href="huiguanjiaketang.html" style="text-decoration:underline">会议浏览</a></li>
                        <li>/</li>
                        <li class="active">会议浏览列表</li>
                    </ol>

                    <form class="form-inline" style="padding:20px 70px;">
                        <div class="form-group">
                            <select class="form-control">
                                <option>全部会议</option>
                                <option>研讨会</option>
                                <option>座谈会</option>
                                <option>专题讨论会</option>
                                <option>辩论会</option>
                                <option>全体大会</option>
                                <option>论坛</option>
                                <option>学术讨论会</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>


                    <div class="row product-list" style="padding:1px 50px;">
                     <c:forEach items="${conferenceList}"  var="conference">
                        <div class="col-md-4" style="width:350px;padding:10px 30px;">
                            <section class="panel">
                                <div class="pro-img-box">
                                    <img src="${ctx}/img/${conference.conferencePicture}" alt="" height="200" width="200">
                                </div>
                                <div class="panel-body text-center">
                                    <h4 >${conference.conferenceName}</h4>
                                    <a href="${ctx}/conference/detailConference?conferenceId=${conference.conferenceId}" >查看</a>
                                    <a href="#" >预定</a>
                                    <a href="#" >收藏</a>
                                </div>
                            </section>
                        </div>
					 </c:forEach>

                    <!-- <nav aria-label="Page navigation" style="text-align: center">
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
 -->

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
<script src="<%=  basePath %>js/jquery-1.8.3.min.js" ></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->
<script src="<%=  basePath %>js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
<script src="<%=  basePath %>js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
<script src="<%=  basePath %>js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS -->
<script src="<%=  basePath %>js/jquery.nicescroll.js" ></script><!-- NICESCROLL JS -->
<script src="<%=  basePath %>js/respond.min.js" ></script><!-- RESPOND JS -->
<script src="<%=  basePath %>js/jquery.sparkline.js"></script><!-- SPARKLINE JS -->
<script src="<%=  basePath %>js/sparkline-chart.js"></script><!-- SPARKLINE CHART JS -->
<script src="<%=  basePath %>js/common-scripts.js"></script><!-- BASIC COMMON JS -->
<script src="<%=  basePath %>js/count.js"></script><!-- COUNT JS -->
<!--Morris-->
<script src="<%=  basePath %>assets/morris.js-0.4.3/morris.min.js" ></script><!-- MORRIS JS -->
<script src="<%=  basePath %>assets/morris.js-0.4.3/raphael-min.js" ></script><!-- MORRIS  JS -->
<script src="<%=  basePath %>js/chart.js" ></script><!-- CHART JS -->
<!--Calendar-->
<script src="<%=  basePath %>js/calendar/clndr.js"></script><!-- CALENDER JS -->
<script src="<%=  basePath %>js/calendar/evnt.calendar.init.js"></script><!-- CALENDER EVENT JS -->
<script src="<%=  basePath %>js/calendar/moment-2.2.1.js"></script><!-- CALENDER MOMENT JS -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script><!-- UNDERSCORE JS -->
<script src="<%=  basePath %>assets/jquery-knob/js/jquery.knob.js" ></script><!-- JQUERY KNOB JS -->
<script >
    //knob
    $(".knob").knob();

</script>
<!-- END JS -->
</body>
</html>


