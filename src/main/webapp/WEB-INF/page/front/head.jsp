<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
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
	<!-- BEGIN STYLESHEET-->
		<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
		<link href="<%=basePath%>css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
		<link href="<%=basePath%>assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON CSS -->
		<link href="<%=basePath%>css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
		<link href="<%=basePath%>css/style-responsive.css" rel="stylesheet"><!-- THEME RESPONSIVE CSS -->
		<link href="<%=basePath%>assets/morris.js-0.4.3/morris.css" rel="stylesheet"><!-- MORRIS CHART CSS -->
     <!--dashboard calendar-->
     <link href="<%=basePath%>css/clndr.css" rel="stylesheet"><!-- CALENDER CSS -->
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
      <!-- BEGIN HEADER -->
      <header class="header white-bg">
        <!-- SIDEBAR TOGGLE BUTTON -->
			<div class="sidebar-toggle-box">
			  <div  data-placement="right" class="fa fa-bars tooltips">
			  </div>
			</div>
        <!-- SIDEBAR TOGGLE BUTTON  END-->
        <a href="index.html" class="logo">
          <span>
            会管家
          </span>
        </a>
           <!-- START HEADER  NAV -->
        
        <nav class="nav notify-row" id="top_menu">
          
          <ul class="nav top-menu">
            <!-- START NOTIFY TASK BAR -->
            
            <li class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-tasks">
                </i>
                <span class="badge bg-success">
                  6
                </span>
              </a>
              
              <ul class="dropdown-menu extended tasks-bar">
                <li class="notify-arrow notify-arrow-blue">
                </li>
                <li>
                  <p class="blue">
                    You have 6 pending tasks
                  </p>
                </li>
                <li>
                  <a href="#">
                    <div class="task-info">
                      <div class="desc">
                        Dashboard v1.3
                      </div>
                      <div class="percent">
                        40%
                      </div>
                    </div>
                    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-success set-40" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" >
                        <span class="sr-only">
                          40% Complete (success)
                        </span>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="task-info">
                      <div class="desc">
                        Database Update
                      </div>
                      <div class="percent">
                        60%
                      </div>
                    </div>
                    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-warning set-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" >
                        <span class="sr-only">
                          60% Complete (warning)
                        </span>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="task-info">
                      <div class="desc">
                        Iphone Development
                      </div>
                      <div class="percent">
                        87%
                      </div>
                    </div>
                    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-info set-87" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" >
                        <span class="sr-only">
                          87% Complete
                        </span>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="task-info">
                      <div class="desc">
                        Mobile App
                      </div>
                      <div class="percent">
                        33%
                      </div>
                    </div>
                    <div class="progress progress-striped">
                      <div class="progress-bar progress-bar-danger set-33" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" >
                        <span class="sr-only">
                          33% Complete (danger)
                        </span>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="task-info">
                      <div class="desc">
                        Dashboard v1.3
                      </div>
                      <div class="percent">
                        45%
                      </div>
                    </div>
                    <div class="progress progress-striped active">
                      <div class="progress-bar set-45" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" >
                        <span class="sr-only">
                          45% Complete
                        </span>
                      </div>
                      
                    </div>
                  </a>
                </li>
                <li class="external">
                  <a href="#">
                    See All Tasks
                  </a>
                </li>
              </ul>
              
            </li>
            <!-- END NOTIFY TASK BAR -->
            
            <!-- START NOTIFY INBOX BAR -->
            
            <li id="header_inbox_bar" class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-envelope-o">
                </i>
                <span class="badge bg-important">
                  5
                </span>
              </a>
              <ul class="dropdown-menu extended inbox">
                <li class="notify-arrow notify-arrow-blue">
                </li>
                <li>
                  <p class="blue">
                    You have 5 new messages
                  </p>
                </li>
                <li>
                  <a href="#">
                    <span class="photo">
                      <img alt="avatar" src="./img/avatar-mini.jpg">
                    </span>
                    <span class="subject">
                      <span class="from">
                        Chintan Pandya
                      </span>
                      <span class="time">
                        Just now
                      </span>
                    </span>
                    <span class="message">
                      Hello, this is an example msg.
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="photo">
                      <img alt="avatar" src="./img/avatar-mini2.jpg">
                    </span>
                    <span class="subject">
                      <span class="from">
                        Parth Jani
                      </span>
                      <span class="time">
                        10 mins
                      </span>
                    </span>
                    <span class="message">
                      Hi, Bro how are you ?
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="photo">
                      <img alt="avatar" src="./img/avatar-mini3.jpg">
                    </span>
                    <span class="subject">
                      <span class="from">
                        Jay Bardolia
                      </span>
                      <span class="time">
                        3 hrs
                      </span>
                    </span>
                    <span class="message">
                      This is awesome dashboard.
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="photo">
                      <img alt="avatar" src="./img/avatar-mini4.jpg">
                    </span>
                    <span class="subject">
                      <span class="from">
                        Pruthvi Bardolia
                      </span>
                      <span class="time">
                        Just now
                      </span>
                    </span>
                    <span class="message">
                      Hello, this is metrolab
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    See all messages
                  </a>
                </li>
              </ul>
            </li>
            <!-- END NOTIFY INBOX BAR -->
            
            <!-- START NOTIFY NOTIFICATION BAR -->
            
            <li id="header_notification_bar" class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-bell-o">
                </i>
                <span class="badge bg-warning">
                  7
                </span>
              </a>
              <ul class="dropdown-menu extended notification">
                <li class="notify-arrow notify-arrow-blue">
                </li>
                <li>
                  <p class="blue">
                    You have 7 new notifications
                  </p>
                </li>
                <li>
                  <a href="#">
                    <span class="label label-danger">
                      <i class="fa fa-bolt">
                      </i>
                    </span>
                    Server #3 overloaded.
                    <span class="small italic">
                      34 mins
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="label label-warning">
                      <i class="fa fa-bell">
                      </i>
                    </span>
                    Server #10 not respoding.
                    <span class="small italic">
                      1 Hours
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="label label-danger">
                      <i class="fa fa-bolt">
                      </i>
                    </span>
                    Database overloaded 24%.
                    <span class="small italic">
                      4 hrs
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="label label-success">
                      <i class="fa fa-plus">
                      </i>
                    </span>
                    New user registered.
                    <span class="small italic">
                      Just now
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="label label-primary">
                      <i class="fa fa-bullhorn">
                      </i>
                    </span>
                    Application error.
                    <span class="small italic">
                      10 mins
                    </span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    See all notifications
                  </a>
                </li>
              </ul>
            </li>
            <!-- END NOTIFY NOTIFICATION BAR -->
            
          </ul>
          
          
        </nav>
		<!-- END HEADER NAV -->
        
		 <!-- START USER LOGIN DROPDOWN  -->
		
        <div class="top-nav ">
          <ul class="nav pull-right top-menu">
            <li>
              <input type="text" class="form-control search" placeholder="Search">
            </li>
            <li class="dropdown">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="img/avatar1_small.jpg">
                <span class="username">
                  ${u.userName}
                </span>
                <b class="caret">
                </b>
              </a>
              <ul class="dropdown-menu extended logout">
                <li class="log-arrow-up">
                </li>
                <li>
                  <a href="#">
                    <i class=" fa fa-suitcase">
                    </i>
                    Profile
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-cog">
                    </i>
                    Settings
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-bell-o">
                    </i>
                    Notification
                  </a>
                </li>
                <li>
                  <a href="login.html">
                    <i class="fa fa-key">
                    </i>
                    Log Out
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
		<!-- END USER LOGIN DROPDOWN  -->
      </header>
      <!-- END HEADER -->
      <!-- BEGIN SIDEBAR -->
      <aside>
        <div id="sidebar" class="nav-collapse">
          <ul class="sidebar-menu" id="nav-accordion">
            <li>
              <a href="index.html">
                <i class="fa fa-dashboard">
                </i>
                <span>
                  首页
                </span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="javascript:">
                <i class="fa fa-tasks">
                </i>
                <span>
                  会议攻略
                </span>
                <span class="label label-info span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="guide/guideList">
                   	 会议攻略浏览
                  </a>
                </li>
              </ul>
            </li>
           
            
              <li class="sub-menu">
              <a href="javascript:">
                <i class="fa fa-tasks">
                </i>
                <span>
                  会议浏览
                </span>
                <span class="label label-info span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="conference/showConferenceList">
                    会议浏览
                  </a>
                </li>
              </ul>
            </li>
            
            <li class="sub-menu">
              <a href="javascript:">
                <i class="fa fa-book">
                </i>
                <span>
                  方案服务
                </span>
                <span class="label label-info span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="scheme/toAddScheme">
                    提交方案		
                  </a>
                </li>
              </ul>
            </li>

            <li class="sub-menu">
              <a href="javascript:">
                <i class="fa fa-tasks">
                </i>
                <span>
                  会议套餐
                </span>
                <span class="label label-info span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="pack/showPackList">
                  <!-- <a href="pack/selectPackPage"> -->
                    会议套餐搜索
                  </a>
                </li>
              </ul>
            </li>
            <li class="sub-menu">
              <a href="javascript:">
                <i class="fa fa-th">
                </i>
                <span>
                  特价场地
                </span>
                <span class="label label-inverse span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="space/spaceList">
                    特价场地搜索
                  </a>
                </li>
              </ul>
            </li>
            <li class="sub-menu">
              <a href="javascript:">
                <i class=" fa fa-envelope">
                </i>
                <span>
                  会员
                </span>
                <span class="label label-danger span-sidebar">
                  4
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="${pageContext.request.contextPath}/scheme/selectSchemePageByuser?userId=${u.userId }">
                    我的方案
                  </a>
                </li>
                <li>
                  <a href="insider_mycollection.html">
                    我的收藏
                  </a>
                </li>
                <li>
                  <a href="insider_myorder.html">
                    我的订单
                  </a>
                </li>
                <li>
                  <a href="${pageContext.request.contextPath}/user/findById?userId=${u.userId }">
                    个人基本信息
                  </a>
                </li>
              </ul>
            </li>
            <li class="sub-menu">
              <a href="javascript:">
                <i class=" fa fa-bar-chart-o">
                </i>
                <span>
                  联系我们
                </span>
                <span class="label label-warning span-sidebar">
                  1
                </span>
              </a>
              <ul class="sub">
                <li>
                  <a href="base/contactUs">
                    联系方式
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </aside>
      <!-- END SIDEBAR -->
      
          


