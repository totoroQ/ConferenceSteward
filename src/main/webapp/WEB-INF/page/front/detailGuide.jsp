<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>会议套餐搜索    </title>
    <base href="${ctx}">
    <!-- BEGIN STYLESHEET-->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="${ctx}/css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="${ctx}/assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
    <link href="${ctx}/css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <link href="${ctx}/css/style-responsive.css" rel="stylesheet"><!-- THEME RESPONSIVE CSS -->
    <link href="${ctx}/assets/morris.js-0.4.3/morris.css" rel="stylesheet"><!-- MORRIS CHART CSS -->
    <!--dashboard calendar-->
    <link href="${ctx}css/clndr.css" rel="stylesheet"><!-- CALENDER CSS -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>
    <![endif]-->
    <!-- END STYLESHEET-->
</head>
<body>
<!-- BEGIN SECTION -->
<section id="container">
     <%@ include file="head.jsp" %>
    <!-- BEGIN MAIN CONTENT -->
    <!-- BEGIN MAIN CONTErow product-listNT -->
    <section id="main-content">
        <!-- BEGIN WRAPPER-->
        <section class="wrapper">

            <ol class="breadcrumb">
                <li><a href="index.html" style="text-decoration:underline">首页</a></li>
                <li>/</li>
                <li><a href="huiguanjiaketang.html" style="text-decoration:underline">会议攻略</a></li>
                <li>/</li>
                <li class="active">攻略详情</li>
            </ol>

            <!-- BEGIN ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <div class="panel-body">
                            <div class="pro-img-box">
                                <div class="col-md-4">
                                   <img src="${ctx }/upload/${guide.guidePicture}" alt=""  width="300" height="200">
                                </div>
                                <div class="col-md-8">
                                    <p style="font-size:17px;line-height:2em;">
                                        攻略名称：${guide.guideTitle}<br/>
            						    攻略类型：${guide.guideType}<br/>
                                        作者：${guide.guideAuthor}<br/>
                                        时间：${guide.guideTime}<br/>
                                        内容：${guide.guideContent}<br/>
                                    </p>
                                    <button class="btn btn-default" type="submit" style="float: right;margin: 10px">收藏</button>
                                    <button class="btn btn-default" type="submit" style="float: right;margin: 10px">预定</button>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- END ROW  -->


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
<script src="${ctx}/js/jquery-1.8.3.min.js" ></script><!-- BASIC JQUERY 1.8.3 LIB. JS -->
<script src="${ctx}/js/bootstrap.min.js" ></script><!-- BOOTSTRAP JS -->
<script src="${ctx}/js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
<script src="${ctx}/js/jquery.scrollTo.min.js" ></script><!-- SCROLLTO JS -->
<script src="${ctx}/js/jquery.nicescroll.js" ></script><!-- NICESCROLL JS -->
<script src="${ctx}/js/respond.min.js" ></script><!-- RESPOND JS -->
<script src="${ctx}/js/jquery.sparkline.js"></script><!-- SPARKLINE JS -->
<script src="${ctx}/js/sparkline-chart.js"></script><!-- SPARKLINE CHART JS -->
<script src="${ctx}/js/common-scripts.js"></script><!-- BASIC COMMON JS -->
<script src="${ctx}/js/count.js"></script><!-- COUNT JS -->
<!--Morris-->
<script src="${ctx}/assets/morris.js-0.4.3/morris.min.js" ></script><!-- MORRIS JS -->
<script src="${ctx}/assets/morris.js-0.4.3/raphael-min.js" ></script><!-- MORRIS  JS -->
<script src="${ctx}/js/chart.js" ></script><!-- CHART JS -->
<!--Calendar-->
<script src="${ctx}/js/calendar/clndr.js"></script><!-- CALENDER JS -->
<script src="${ctx}/js/calendar/evnt.calendar.init.js"></script><!-- CALENDER EVENT JS -->
<script src="${ctx}/js/calendar/moment-2.2.1.js"></script><!-- CALENDER MOMENT JS -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script><!-- UNDERSCORE JS -->
<script src="${ctx}/assets/jquery-knob/js/jquery.knob.js" ></script><!-- JQUERY KNOB JS -->
<script >
    //knob
    $(".knob").knob();

</script>
<!-- END JS -->
</body>
</html>

