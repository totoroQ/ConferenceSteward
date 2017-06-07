<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewpoint" content="width=device-width,inital-scale=1">
    <base href="<%=basePath%>">
    
    <title>会员个人信息</title>
    
    <!-- BEGIN STYLESHEET-->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath%>css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath%>assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
    <link href="<%=basePath%>css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <link href="<%=basePath%>css/style-responsive.css" rel="stylesheet"><!-- THEME RESPONSIVE CSS -->
    <link href="<%=basePath%>assets/morris.js-0.4.3/morris.css" rel="stylesheet"><!-- MORRIS CHART CSS -->
    <!--dashboard calendar-->
    <link href="<%=basePath%>css/clndr.css" rel="stylesheet"><!-- CALENDER CSS -->
    <script src="<%=basePath%>js/html5shiv.js"></script>
    <script src="<%=basePath%>js/respond.min.js"></script>
    
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
                        <li class="active">个人信息</li>
                    </ol>


                    <form action="user/update" method="post" class="form-horizontal col-md-offset-1">
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">姓名：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="userName" value="${u.userName }" style="border:1px;width: 310px;height: 30px" >
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">年龄：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="userAge" value="${u.userAge }" style="border:1px; width: 310px;height: 30px">
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">性别：</label>
                            <div class="col-sm-4">
                                <select name="userSex" class="form-control">
                                    <option>${u.userSex }</option>
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin:60px 0">
                            <label class="col-sm-2 control-label">邮箱：</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="userEmail" value="${u.userEmail }" style="border:1px;width: 310px;height: 30px" >
                            	<input type="hidden" name="userId" value="${u.userId }">
                            	<input type="hidden" name="userPassword" value="${u.userPassword }">
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
