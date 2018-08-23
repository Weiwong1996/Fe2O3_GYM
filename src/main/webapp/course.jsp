<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>消息中心</title>
<link href="css/bootstrap.min.css" title="" rel="stylesheet" />
<link title="" href="css/style.css" rel="stylesheet" type="text/css" />
<link title="blue" href="css/dermadefault.css" rel="stylesheet"
	type="text/css" />
<link title="green" href="css/dermagreen.css" rel="stylesheet"
	type="text/css" disabled="disabled" />
<link title="orange" href="css/dermaorange.css" rel="stylesheet"
	type="text/css" disabled="disabled" />
<link href="css/templatecss.css" rel="stylesheet" title=""
	type="text/css" />
<script src="script/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="script/jquery.cookie.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="icon" href="img/logo001.png" type="image/x-icon">
</head>

<body>
	<nav class="nav navbar-default navbar-mystyle navbar-fixed-top">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand mystyle-brand"><span
				class="glyphicon glyphicon-home"></span></a>
		</div>
		<div>
			<!-- 天气 -->
			<li text-color="black"><iframe class="navbar-brand" width="370"
					scrolling="no" height="18" frameborder="0" allowtransparency="true"
					src="http://i.tianqi.com/index.php?c=code&id=1&color=%23C6C6C6&icon=1&wind=0&num=2&site=12

"></iframe>
			</li>
		</div>
		<ul class="nav navbar-nav pull-right">
			<li class="li-border"><a href="#" class="mystyle-color"> <span
					class="glyphicon glyphicon-bell"></span> <span class="topbar-num">0</span>
			</a></li>
			<li class="li-border dropdown"><a href="#" class="mystyle-color"
				data-toggle="dropdown"> <span class="glyphicon glyphicon-search"></span>
					搜索课程
			</a>
				<div class="dropdown-menu search-dropdown">
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button type="button" class="btn btn-default">搜索</button>
						</span>
					</div>
				</div></li>
			<li class="dropdown li-border"><a href="#"
				class="dropdown-toggle mystyle-color sublist-icon glyphicon glyphicon-user"
				data-toggle="dropdown">用户注销<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="home.jsp">退出</a></li>
				</ul></li>
			<li class="dropdown"><a href="#"
				class="dropdown-toggle mystyle-color" data-toggle="dropdown">换肤<span
					class="caret"></span></a>
				<ul class="dropdown-menu changecolor">
					<li id="blue"><a href="#">蓝色</a></li>
					<li class="divider"></li>
					<li id="green"><a href="#">绿色</a></li>
					<li class="divider"></li>
					<li id="orange"><a href="#">橙色</a></li>
				</ul></li>
		</ul>
		</div>
	</nav>
	<div class="down-main">
		<div class="left-main left-off">
			<div class="sidebar-fold">
				<span class="glyphicon glyphicon-menu-hamburger"></span>
			</div>
			<div class="subNavBox">
				<div class="sBox">
					<div class="subNav sublist-down">
						<span class="title-icon glyphicon glyphicon-chevron-down"></span><span
							class="sublist-title">用户中心</span>
					</div>
					<ul class="navContent" style="display: block">
						<li>
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />账号管理
							</div> <a href="users/returnUserIndex?uid=${users.uid}"><span
								class="sublist-icon glyphicon glyphicon-user"></span><span
								class="sub-title">账号管理</span></a>
						</li>
						<li>
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />定制管理
							</div> <a href="customization/show1?uid=${users.uid}"><span
								class="sublist-icon glyphicon glyphicon-user"></span><span
								class="sub-title">定制管理</span></a>
						</li>
						<li class="active">
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />课程详情
							</div> <span class="sublist-icon glyphicon glyphicon-user"></span><span
							class="sub-title">课程详情</span>
						</li>
					</ul>
				</div>

			</div>
		</div>
		<div class="right-product right-off">
			<div class="container-fluid">
				<div class="info-center">
					<div class="page-header">
						<div class="pull-left">
							<h4>课程中心</h4>
						</div>
					</div>
					<div class="info-center-title">
						<span class="padding-large-right manage-title pull-left"> <a
							class="active" href="#">全部消息</a>
						</span> <span class="padding-large-right pull-left"><a href="#">已读消息(0)</a></span>
						<span class="pull-left"><a href="#">未读消息(0)</a></span>
					</div>
					<div class="clearfix"></div>
					<div class="table-margin">
						<table class="table table-bordered table-header">
							<thead>
								<tr>
									<td class="w5">课程ID</td>
									<td class="w15">课程名</td>
									<td class="w50">课程介绍</td>
									<td class="w15">授课教练ID</td>
									<td class="w15">开课时间</td>
									<td class="w15">开课天</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="c" items="${clist}">
									<tr>
										<td>${c.couid}</td>
										<td>${c.couname}</td>
										<td>${c.couintroduce}</td>
										<td>${c.cid}</td>
										<td>${c.coutime}</td>
										<td>${c.coudaytime}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="show-page hidden">
					<ul>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			/*换肤*/
			$(".dropdown .changecolor li").click(function() {
				var style = $(this).attr("id");
				$("link[title!='']").attr("disabled", "disabled");
				$("link[title='" + style + "']").removeAttr("disabled");

				$.cookie('mystyle', style, {
					expires : 7
				}); // 存储一个带7天期限的 cookie 
			})
			var cookie_style = $.cookie("mystyle");
			if (cookie_style != null) {
				$("link[title!='']").attr("disabled", "disabled");
				$("link[title='" + cookie_style + "']").removeAttr("disabled");
			}
			/*左侧导航栏显示隐藏功能*/
			$(".subNav")
					.click(
							function() {
								/*显示*/
								if ($(this).find("span:first-child").attr(
										'class') == "title-icon glyphicon glyphicon-chevron-down") {
									$(this).find("span:first-child")
											.removeClass(
													"glyphicon-chevron-down");
									$(this).find("span:first-child").addClass(
											"glyphicon-chevron-up");
									$(this).removeClass("sublist-down");
									$(this).addClass("sublist-up");
								}
								/*隐藏*/
								else {
									$(this)
											.find("span:first-child")
											.removeClass("glyphicon-chevron-up");
									$(this).find("span:first-child").addClass(
											"glyphicon-chevron-down");
									$(this).removeClass("sublist-up");
									$(this).addClass("sublist-down");
								}
								// 修改数字控制速度， slideUp(500)控制卷起速度
								$(this).next(".navContent").slideToggle(300)
										.siblings(".navContent").slideUp(300);
							})
			/*左侧导航栏缩进功能*/
			$(".left-main .sidebar-fold")
					.click(
							function() {

								if ($(this).parent().attr('class') == "left-main left-full") {
									$(this).parent().removeClass("left-full");
									$(this).parent().addClass("left-off");

									$(this).parent().parent().find(
											".right-product").removeClass(
											"right-full");
									$(this).parent().parent().find(
											".right-product").addClass(
											"right-off");

								} else {
									$(this).parent().removeClass("left-off");
									$(this).parent().addClass("left-full");

									$(this).parent().parent().find(
											".right-product").removeClass(
											"right-off");
									$(this).parent().parent().find(
											".right-product").addClass(
											"right-full");

								}
							})

			/*左侧鼠标移入提示功能*/
			$(".sBox ul li").mouseenter(function() {
				if ($(this).find("span:last-child").css("display") == "none") {
					$(this).find("div").show();
				}
			}).mouseleave(function() {
				$(this).find("div").hide();
			})
		})
	</script>
</body>
</html>

