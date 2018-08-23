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
<script type="text/javascript"
	src="<%=basePath%>js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
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
							</div> <a href="users/returnUserIndex?uid=${uid}"><span
								class="sublist-icon glyphicon glyphicon-user"></span><span
								class="sub-title">账号管理</span></a>
						</li>
						<li class="active">
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />定制管理
							</div> <span class="sublist-icon glyphicon glyphicon-user"></span><span
							class="sub-title">定制管理</span>
						</li>
						<li>
							<div class="showtitle" style="width: 100px;">
								<img src="img/leftimg.png" />课程详情
							</div> <a href="course/show?uid=${uid}"><span
								class="sublist-icon glyphicon glyphicon-user"></span><span
								class="sub-title">课程详情</span></a>
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
							<h4>定制管理</h4>
						</div>
					</div>
					<div class="info-center-title">
						<span class="padding-large-right manage-title pull-left"><a
							class="active" href="#">全部消息</a></span> <span
							class="padding-large-right pull-left"><a
							href="customization/myCustomization?uid=${uid}">我的定制</a></span>
					</div>
					<div class="clearfix"></div>
					<div class="table-margin">
						<form action="customization/addCustomization?uid=${uid}"
							method="post">
							<table id="detail">
								<tr>
									<td>定制内容</td>
									<td id="rigth"><textarea cols="100" rows="5"
											name="custontent"></textarea></td>
								</tr>
								<tr>
									<td>选择私人教练</td>
									<td id="rigth"><select name="coach">
											<c:forEach var="c" items="${clist}">
												<option>${c.cname}</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<td>私教费用/每节</td>
									<!-- <td id="rigth" name="price"> -->
									<td><input type="text" name="price" readonly="readonly"
										size="5" /> 元</td>
								</tr>

								<tr>
									<td>选择课程数</td>
									<td id="rigth"><select name="count">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
											<option>7</option>
											<option>8</option>
											<option>9</option>
											<option>10</option>
									</select></td>
								</tr>

								<tr>
									<td>总价</td>
									<td id="rigth"><input type="text" name="tprice"
										readonly="readonly" size="5" /> 元</td>
								</tr>

								<tr>
									<td></td>
									<td id="rigth"><input type="submit" value="提交"></td>
								</tr>
							</table>
						</form>
						<script type="text/javascript">
							$(function() {
								$("select[name=coach]").change(
										function() {
											var coachName = $(this).val();
											//alert($(this).val());
											$.get("customization/getPrice", {
												cname : coachName
											}, function(data) {
												//data----json格式的字符串
												//字符串转换为 json格式
												console.log(data);
												data = JSON.parse(data);
												$("input[name=price]").val(
														data.cprice);
											});
										});

								$("select[name=count]").change(function() {
									var count = $(this).val();
									var price = $("input[name=price]").val();
									$.get("customization/gettPrice", {
										tcount : count,
										cprice : price
									}, function(data) {
										data = JSON.parse(data);
										$("input[name=tprice]").val(data);
									});

								});

							});
						</script>
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
