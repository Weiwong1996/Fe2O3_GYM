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
<title>用户中心</title>
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
<script type="text/javascript"
	src="<%=basePath%>js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
<style type="text/css">
.filebtn {
	padding-left: 16px;
}

.sub {
	width: 72px;
	margin-left: 16px;
}

#bodysize {
	font-size: 14px;
	font-weight: bold;
}

#user {
	font-size: 23px;
	font-weight: bold;
	font-family: inherit;
}
</style>
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
		<div class="left-main left-full">
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
						<li class="active">
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />账号管理
							</div> <a><span
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
						<li>
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />课程详情
							</div> <a href="course/show?uid=${users.uid}"><span
								class="sublist-icon glyphicon glyphicon-user"></span><span
								class="sub-title">课程详情</span></a>
						</li>

					</ul>
				</div>
			</div>
		</div>
		<div class="right-product view-product right-full">
			<div class="container-fluid">
				<div class="manage account-manage info-center">
					<div class="page-header">
						<div class="pull-left">
							<h4>用户中心</h4>
						</div>
					</div>
					<dl class="account-basic clearfix">
						<dt class="pull-left">
							<p class="account-head">
								<img src="${users.upicpath}">
								<form action="users/upload?uid=${users.uid}"
								enctype="multipart/form-data" method="post">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;头像上传<input
									type="file" name="file" class="filebtn"></label>
								<p>
									<input type="submit" value="确定" class="sub">
								</p>
							</form>
							</p>
						</dt>
						<dd class="pull-left margin-large-left margin-small-top">
							<p class="text-small">
								<span class="show pull-left base-name">会员账号</span>:<span
									class="margin-left" id="user">${users.uname}</span>
							</p>
							<p class="text-small">
								<span class="show pull-left base-name">认证状态</span>: <span
									class="margin-left" id="user"><font color="green">已认证</font></span>
								<!-- <a class="margin-left text-main text-underline" href="#">立即认证</a> -->
							</p>
							<p class="text-small">
								<span class="show pull-left base-name">到期时间</span>:<span
									class="margin-left" id="user">${users.utimelit}</span>
							</p>
						</dd>
					</dl>
					<div class="account-basic clearfix">
						<span class="pull-left show text-small">您当前的账号安全程度</span>
						<div
							class="progress-bar pull-left margin-large-left margin-large-35">
							<div
								style="background: rgb(255, 153, 0) none repeat scroll 0% 0%; width: 180px;"
								data-width="100"></div>
						</div>
						<span class="pull-left show text-small">安全级别: <span
							style="color: rgb(255, 153, 0);" class="leval-safe">高</span></span>
					</div>
					<ul class="accound-bund">
						<li class="clearfix"><span class="bund-class">登录密码</span> <span
							class="w45">安全性高的密码可以使账号更安全，建议您定期更换密码，设置一个包含字母，符号或数字中至少两项且长度超过6位的密码。</span>
							<span class="pull-right margin-large-right"> <i
								class="glyphicon glyphicon-ok-circle pull-left"></i> <em
								class="margin-right text-green-deep">已设置</em> | <a href="#"
								data-panel="modify_pass" data-title="修改密码-修改密码"
								data-callback="$(&quot;#modify_pass&quot;).submit();"
								data-btn="下一步,取消" class="button-word1 margin-left btn_ajax_open">修改</a>

						</span></li>

						<li class="clearfix">
							<form method="post" action="users/wheight?uid=${users.uid}">
								<p>
									<font size="3">更新身高和体重</font>
								</p>
								<span class="bund-class">身高 <input type="text"
									placeholder="请输入身高" name="height">cm
								</span> <span class="bund-class">体重 <input type="text"
									placeholder="请输入体重" name="weight">kg
								</span> <input type="submit" value="更新" name="WHight">
							</form>
						</li>

						<li class="clearfix border-bottom-none" id="bodysize"><labl
								class="bund-class">您的BIM值为:<font size="5">${Bmi}</font></labl> <labl
								class="bund-class">您的身高值为:<font size="5">${users.uheight}</font>&nbsp;&nbsp;cm</labl>
							<labl class="bund-class">您的身高值为:<font size="5">${users.uweight}</font>&nbsp;&nbsp;kg</labl>
							<p class="bund-class">
								成人的BMI数值：<font color="yellow">过轻：</font>低于18.5
							</p>
							<p class="bund-class">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
									color="green">正常：</font>18.5-23.9
							</p>
							<p class="bund-class">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
									color="yellow">过重：</font>24-27
							</p>
							<p class="bund-class">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
									color="red">肥胖：</font>28-32
							</p>
							<p class="bund-class">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
									color="red">非常肥胖:</font> 高于32
							</p>
							<p class="bund-class">体质指数（BMI）=体重（kg）÷身高²（m）</p> <span
							class="pull-right margin-large-right"> </span></li>
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
	</script></
							body>
</html>
