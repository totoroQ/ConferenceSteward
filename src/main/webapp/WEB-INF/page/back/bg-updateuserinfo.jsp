<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<link rel="stylesheet" href="<%=basePath%>bg-css/reset.css" >
    <link rel="stylesheet" href="<%=basePath%>bg-css/content.css" >
    <link href="<%=basePath%>bg-css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath%>bg-css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>bg-css/button.css" rel="stylesheet">
<style>
        .a{
            margin-top: 20px;
        }
    </style>
</head>
  <body marginwidth="0" marginheight="0">
<div>
    <div class="public-nav">您当前的位置：<a href="index.html">管理首页</a>><a href="">会员</a>>&nbsp;&nbsp;&nbsp;个人信息管理</div>
    <div class="public-content">
        <div class="public-content-header">
            <h3 style="font-size:15px;font-weight:bold;">会管家会员</h3>
        </div>
        <div class="public-content-cont">
            <form data-toggle="validator" class="form-horizontal" id="defaultForm" name="defaultForm" action="user/updatebg" method="post">
                <div class="form-group " >
                    <label for="username" class=" control-label " >用户名：</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="username" name="userName" value="${u.userName }" placeholder="">
                        <input type="hidden" name="userId" value="${u.userId }">
                    </div>
                </div>
                <div class="form-group ">
                    <label for="password" class=" control-label">密码：</label>
                    <div class="col-sm-3">
                        <input type="password" class="form-control" id="password" name="userPassword" value="${u.userPassword }" placeholder="">
                    </div>
                </div>
                <div class="form-group ">
                    <label for="age" class=" control-label">年龄：</label>
                    <div class="col-sm-3">
                        <input type="number" class="form-control" id="age" name="userAge" value="${ u.userAge}" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                     <label class="col-sm-2 control-label">性别：</label>
                            <div class="col-sm-3">
                                <select name="userSex" class="form-control">
                                    <option>${u.userSex }</option>
                                    <option>男</option>
                                    <option>女</option>
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
                <div class="form-group">
                    <label for="email" class=" control-label">邮箱:</label>
                    <div class="col-sm-3">
                        <input type="email" class="form-control" id="email" name="userEmail" value="${u.userEmail }" placeholder="">
                    </div>
                </div>
                <div class="form-group form-inline">
                    <div class="col-md-10 col-md-offset-1">
                        <input type="submit" class="button button-glow button-rounded button-raised button-primary"/>
                        <input type="reset" class="button button-glow button-border button-rounded button-primary"/>
                    </div>
                </div>
            </form>
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
            </nav> -->
        </div>
    </div>
</div>
<script src="kingediter/kindeditor-all-min.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#editor_id');
    });

</script>
<!-- <script type="text/javascript">
    $(document).ready(function() {
        // Generate a simple captcha
        function randomNumber(min, max) {
            return Math.floor(Math.random() * (max - min + 1) + min);
        };
        $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));


</script> -->
</body>
</html>
