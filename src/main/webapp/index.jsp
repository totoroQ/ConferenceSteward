<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>会管家</title>
	<link rel="stylesheet" href="<%=  basePath %>css/reset.css">
	<link rel="stylesheet" href="<%=  basePath %>css/public.css">
<title>Package增，删、改、查<</title>
<base href="${ctx}">
</head>
<body>
	<%-- <a href="${ctx}/package/packageList">Package增，删、改、查</a><br> --%>
	<%-- <a href="${ctx}/conference/conferenceList">Conference增，删、改、查</a><br> --%>
	
	<div class="public-header-warrp">
		<div class="public-header">
			<div class="content">
				<div class="public-header-logo"><a href=""><i>LOGO</i><h3>会管家后台管理</h3></a></div>
				<div class="public-header-admin fr">
					<p class="admin-name">会管家管理员 您好！</p>
					<div class="public-header-fun fr">
						<a href="" class="public-header-man">管理</a>
						<a href="" class="public-header-loginout">安全退出</a>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<!-- 内容展示 -->
	<div class="public-ifame mt20">
		<div class="content">
		<!-- 内容模块头 -->
			<!-- 左侧导航栏 -->
			<div class="public-ifame-leftnav">
				<div class="public-title-warrp">
					<div class="public-ifame-title ">
						<a href="">首页</a>
					</div>
				</div>
				<ul class="left-nav-list">
					<li class="public-ifame-item">
						<a href="javascript:">系统管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li class="active"><a href="<%=basePath %>/base/系统管理/config.html" target="content">网站配置</a></li>
								<li><a href="<%=basePath %>/base/系统管理/pass.html" target="content">修改管理员密码</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">会议攻略管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/base/huiguanjiaketang" target="content">会管家课堂</a></li>
								<li><a href="<%=basePath %>/base/huiguanjiaketang" target="content">会管家独家</a></li>
								<li><a href="<%=basePath %>/base/huiguanjiaketang" target="content">会管家分享</a></li>
								<li><a href="<%=basePath %>/base/huiguanjiaketang" target="content">会管家动态</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">会议浏览管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/conference/conferenceList" target="content">会议管理</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">会议类型管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/base/typeList" target="content">类型管理</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">方案服务模块</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/base/fanganguanli" target="content">方案管理</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">会议套餐管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>pack/packList" target="content">套餐管理</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">场地管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/base/spaceList" target="content">场地管理</a></li>
							</ul>
						</div>
					</li>
					<li class="public-ifame-item">
						<a href="javascript:">会员管理</a>
						<div class="ifame-item-sub">
							<ul>
								<li><a href="<%=basePath %>/base/huiyuanfanganguanli" target="content">方案管理</a></li>
								<li><a href="<%=basePath %>/base/huiyuanshoucangguanli" target="content">收藏管理</a></li>
								<li><a href="<%=basePath %>/base/huiyuandingdanguanli" target="content">订单管理</a></li>
								<li><a href="<%=basePath %>/base/gerenxinxiguanli" target="content">个人信息管理</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<!-- 右侧内容展示部分 -->
			<div class="public-ifame-content">
			<iframe name="content" src="${ctx}/base/main" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
			</div>
		</div>
	</div>
	<script src="${ctx}/js/jquery.min.js"></script>
	<script>
	$().ready(function(){
		var item = $(".public-ifame-item");
	
		for(var i=0; i < item.length; i++){
			$(item[i]).on('click',function(){
				$(".ifame-item-sub").hide();
				if($(this.lastElementChild).css('display') == 'block'){
					$(this.lastElementChild).hide()
					$(".ifame-item-sub li").removeClass("active");
				}else{
					$(this.lastElementChild).show();
					$(".ifame-item-sub li").on('click',function(){
						$(".ifame-item-sub li").removeClass("active");
						$(this).addClass("active");
					});
				}
			});
		}
	});
	</script>
</body>
</html>