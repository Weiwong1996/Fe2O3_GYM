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
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
		
		var _h = 0;
		  function SetH(o) {
		   _h = o.scrollTop
		   SetCookie("a", _h)
		  }
		  window.onload = function () {
		   document.getElementById("x").scrollTop = GetCookie("a");//页面加载时设置scrolltop高度
		  }
		  function SetCookie(sName, sValue) {
		   document.cookie = sName + "=" + escape(sValue) + "; ";
		  }
		  function GetCookie(sName) {
		   var aCookie = document.cookie.split("; ");
		   for (var i = 0; i < aCookie.length; i++) {
		    var aCrumb = aCookie[i].split("=");
		    if (sName == aCrumb[0])
		     return unescape(aCrumb[1]);
		   }
		   return 0;
		  }

		



</script>
<!-- //for-mobile-apps -->
<link href="css2/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css2/font-awesome.min.css" rel="stylesheet" type="text/css"
	media="all">
<link type="text/css" rel="stylesheet" href="css2/cm-overlay.css" />
<!-- //overlay-->
<link rel="stylesheet" href="css2/owl.carousel.css" type="text/css"
	media="all" />
<!-- Owl-Carousel-CSS -->
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
<!--fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900"
	rel="stylesheet">
<!--//fonts-->
<style type="text/css">

</style>
<link rel="icon" href="img/logo001.png" type="image/x-icon">
</head>
<body>
	<!-- <div id="x" style="height: 900px; overflow: scroll"
		onscroll="SetH(this)"> -->
		<div id="single">
			<!--home-->
			<div data-target="home" class="banner-w3ls" id="home">
				<!-- header -->
				<div class="header-inner">
					<h1 class="logo">
						<a href="javascript:void(0)"><span>健身房</span>Fe2O3铁馆</a>
					</h1>
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- navbar-header -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right" id="nav">
								<li><a href="index.html" data-anchor="active">首页</a></li>
								<li><a href="#" data-anchor="about">关于我们</a></li>
								<li><a href="#" data-anchor="classes">课程</a></li>
								<li><a href="#" data-anchor="clients">客户</a></li>
								<li><a href="#" data-anchor="gallery">展示</a></li>
								<li><a href="#" data-anchor="contact">登陆/注册</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</nav>
					<div class="clearfix"></div>
				</div>
				<!-- //header -->
				<div class="container">
					<!-- banner-slider -->
					<div class="w3l_banner_info">
						<div class="slider">
							<div class="callbacks_container">
								<ul class="rslides" id="slider3">
									<li>
										<div class="w3ls-info">
											<h4>完美的躯体需要不停的训练和专业的帮助</h4>
											<p>让我们的个性化定制服务使你变得健康.</p>
										</div>

									</li>
									<li>
										<div class="w3ls-info">
											<h4>改善你的身体曲线</h4>
											<p>让我们的个性化定制服务使你变得健康.</p>
										</div>

									</li>
									<li>
										<div class="w3ls-info">
											<h4>让身躯充满能量</h4>
											<p>让我们的个性化定制服务使你变得健康.</p>
										</div>

									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<!-- //banner-slider -->
					<p>
						<a href="#" data-anchor="about" class="btn-normal">关于我们</a>
					</p>
				</div>

			</div>
			<!--//home-->
			<!--about-->
			<div data-target="about" class="about" id="about">
				<div class="container">
					<h3 class="title-w3-agile">关于我们</h3>
					<div class="about-main">
						<div class="col-md-5 about-bgcolr-agileinfo">
							<div class="about-img-agileinfo"></div>
						</div>
						<div class="col-md-7 about-info-agileits">
							<h3 class="title-w3-agile-sub">
								关于 <span>健身房</span> 训练
							</h3>
							<p class="para-agileits-w3layouts">
								⛔&nbsp;&nbsp;&nbsp;必要的热身活动 <br>
								⛔&nbsp;&nbsp;&nbsp;极为必要的伸展运动<br>⛔&nbsp;&nbsp;&nbsp;避免超负荷的举重<br>⛔&nbsp;&nbsp;&nbsp;避免过激的运动<br>⛔&nbsp;&nbsp;&nbsp;水分的必要补充<br>⛔&nbsp;&nbsp;&nbsp;运动后的必要“冷却”
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="about-btm-wthree">
						<div class="col-md-3 about-w3-grids">
							<h4>宽敞的健身环境</h4>
							<p class="para-agileits-w3layouts">2000平方米超大健身面积，方便你的活动。全新一流健身设施，助力你的身材塑造</p>
						</div>
						<div class="col-md-3 about-w3-grids">
							<h4>友好的教练团队</h4>
							<p class="para-agileits-w3layouts">全明星教练团队，为你提供优质服务
								，我们保证耐心，细心，保护你的安全，带你快速入门</p>
						</div>
						<div class="col-md-3 about-w3-grids">
							<h4>免费的课程</h4>
							<p class="para-agileits-w3layouts">会员享有多达10项免费课程，如动感单车，健身操，女子搏击，瑜伽，搏击课程，汗蒸房等</p>
						</div>
						<div class="col-md-3 about-w3-grids">
							<h4>私人定制服务</h4>
							<p class="para-agileits-w3layouts">个性化健身定制服务，为你量身打造适合你的服务，让您期待你的改变，发现你的改变
							</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--//about-->
			<!--section3-->
			<div data-target="classes" class="classes" id="classes">
				<div class="container">
					<h3 class="title-w3-agile">免费课程</h3>
					<div class="classes_wrapper">
						<div class="row class_box">
							<c:forEach var="c" items="${clist}">
								<div class="col-md-6 classes-grid-w3ls" style="padding-bottom: 15px">
									<div class="class_right black">
										<h3>${c.couname}</h3>
										<p>${c.couintroduce}</p>
										<div class="class_img">
											<img src="img/${c.cpicpath }" style="height:75px;width: 75px "/>
											<div class="class_desc">
												<h5>${c.cname}</h5>
												<h4>${c.clevel}</h4>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="timings-agileits-w3layouts">
											<h6 class="clr-w3ls">开课时间</h6>
											<p>${c.coudaytime}|</p>
											<span>${c.coutime}</span>
										</div>
									</div>
									<div class="class_left img1">
										<img src="img/${c.coupicpath }" style="width: 252.52px;height: 265px">
									</div>
									<div class="clearfix"></div>
								</div>
							</c:forEach>
						</div>
						<p>
							<!-- 图片传参 -->
							<input type="image" src="images/左箭头.png"
								style="width: 50px; height: 50px"
								onclick="javascript:document.getElementById('last').click()" />
							<a id="last" href="course/Pageindex?currentPage=${currentPage-1}" ></a>
							<input type="image" src="images/右箭头.png"
								style="width: 50px; height: 50px"
								onclick="javascript:document.getElementById('next').click()" />
							<a id="next" href="course/Pageindex?currentPage=${currentPage+1}" ></a>
						</p>
					</div>
				</div>

			</div>
			<!--//section3-->
			<!--section4-->
			<div data-target="clients" class="clients" id="clients">
				<!-- dishes -->
				<div class="w3agile-spldishes">
					<div class="container">
						<h3 class="title-w3-agile">会员留言区</h3>
						<p class="para-agileits-w3layouts">了解会员们的想法.</p>
						<div class="spldishes-agileinfo">
							<div class="spldishes-grids">
								<!-- Owl-Carousel -->
								<div id="owl-demo"
									class="owl-carousel text-center agileinfo-gallery-row">
									<div class="item g1">
										<img class="lazyOwl" src="images/k1.png"  style="height: 253.33px;"
											title="Our latest gallery" alt="" />
										<div class="agile-dish-caption">
											<h4>张明远</h4>
											<span>这个健身房真是太适合我这个大肌霸 </span>
										</div>
									</div>
									<div class="item g1">
										<img class="lazyOwl" src="images/k2.png" style="height: 253.33px;"
											title="Our latest gallery" alt="" />
										<div class="agile-dish-caption">
											<h4>刘政栋</h4>
											<span>我觉得这个健身房的男教练真的好帅好强壮哦！ </span>
										</div>
									</div>
									<div class="item g1">
										<img class="lazyOwl" src="images/k3.png" id="pic" style="height: 253.33px;"
											title="Our latest gallery" alt="" />
										<div class="agile-dish-caption">
											<h4>林庆典</h4>
											<span>这是一个非常适合锻炼的健身房，教练和蔼可亲</span>
										</div>
									</div>
									<div class="item g1">
										<img class="lazyOwl" src="images/k4.png" id="pic" style="height: 253.33px;"
											title="Our latest gallery" alt="" />
										<div class="agile-dish-caption">
											<h4>郑添</h4>
											<span>Neque porro quisquam est qui dolorem Lorem ipsum
												dolor sit amet. </span>
										</div>
									</div>
									<div class="item g1">
										<img class="lazyOwl" src="images/k5.png" id="pic" style="height: 253.33px;"
										alt="" />
										<div class="agile-dish-caption">
											<h4>米兰达</h4>
											<span>Soda greatly greatly hydropower yes but but but but but but but d greatly the rustling whisper. </span>
										</div>
									</div>
									<div class="item g1">
										<img class="lazyOwl" src="images/k6.png" id="pic" style="height: 253.33px;"
											title="Our latest gallery" alt="" />
										<div class="agile-dish-caption">
											<h4>朴咪咪</h4>
											<span>이 정말 좋 은 봉 헬스 장 은정 밀 할 수 있 었 다.
이곳 의 형 棒棒 주 룩, 程力东 은정 밀 은 오 바 셋 접속 차단 을 묵 으려고 합 니 다. </span>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!-- //dishes -->
			</div>
			<!--//section4-->
			<!--section5-->
			<div data-target="gallery" class="gallery" id="gallery">
				<!-- gallery -->
				<div class="container">
					<h3 class="title-w3-agile">展示馆</h3>
					<div class="agileits_portfolio_grids">
						<div class="col-md-3 agileits_portfolio_grid">
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/1.jpg"> <img
									src="images/1.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/2.jpg"> <img
									src="images/2.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/3.jpg"> <img
									src="images/3.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-3 agileits_portfolio_grid">
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/4.jpg"> <img
									src="images/4.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/5.jpg"> <img
									src="images/5.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/6.jpg"> <img
									src="images/6.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-3 agileits_portfolio_grid">
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/7.jpg"> <img
									src="images/7.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/8.jpg"> <img
									src="images/8.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/9.jpg"> <img
									src="images/9.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-3 agileits_portfolio_grid">
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/10.jpg"> <img
									src="images/10.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/11.jpg"> <img
									src="images/11.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
							<div class="agileinfo_portfolio_grid hovereffect">
								<a class="cm-overlay" href="images/12.jpg"> <img
									src="images/12.jpg" alt=" " class="img-responsive">
									<div class="overlay">
										<h4>
											<span>健身房</span> Fe2O3铁馆
										</h4>
										<p>你的健身管理专家.</p>
									</div>
								</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //gallery -->
			</div>
			<!--//section5-->
			<!--section6-->
			<div data-target="contact" class="contact" id="contact">
				<!--membership-->
				<div class="plan">
					<h3 class="title-w3-agile">现在加入我们优惠更多</h3>

					<div class="read-w3ls">
						<a class="member-btn-agileits page-scroll" href="#myModal2"
							data-toggle="modal" data-hover="LOGIN">成为会员</a>
					</div>
				</div>
				<!-- modal -->
				<div class="modal about-modal w3-agileits fade" id="myModal2"
					tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body login-page ">
								<!-- login-page -->
								<div class="login-top sign-top">
									<div class="agileits-login">
										<h5>会员表单</h5>
										<form action="users/register" method="post">
											<div class="wthree-text">
												<h6>成为会员</h6>
												<ul>
													<li><label class="anim"> <input
															type="checkbox" class="checkbox"> <span>
																单独办卡 (8折优惠)</span>
													</label></li>
													<li><label class="anim"> <input
															type="checkbox" class="checkbox"> <span>
																两人办卡 (6折优惠)</span>
													</label></li>
													<li><label class="anim"> <input
															type="checkbox" class="checkbox"> <span>
																4人及以上办卡(每3人办卡免1人办卡费)</span>
													</label></li>
												</ul>
												<div class="clearfix"></div>
											</div>
											<h6>个人信息</h6>
											<input type="text" name="username" placeholder="姓名"
												required="" /> <input type="password" name="password"
												placeholder="密码" required="" /> <input type="text"
												name="age" placeholder="年龄" required="" />
												<input type="text" name="height" placeholder="身高/cm"
												required="" />
												<input type="text" name="weight" placeholder="体重/kg"
												required="" />
											<h6>支付方式</h6>
											<table width="300">
												<tr>
													<td align="center"><label class="anim"> <input
															type="radio" class="radio" name="radio"> <span>支付宝</span>
													</label></td>

													<td align="center"><label class="anim"> <input
															type="radio" class="radio" name="radio"> <span>微信钱包</span>
													</label></td>

													<td align="center"><label class="anim"> <input
															type="radio" class="radio" name="radio"> <span>线下支付</span>
													</label></td>

												</tr>

											</table>
											<div class="w3ls-submit">
												<input type="submit" value="注册">
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
						<!-- //login-page -->
					</div>
				</div>
				<!-- //modal -->
				<!--//membership-->
				<!--contact-->
				<div class="contact-w3layouts">
					<div class="container">
						<div class="col-md-6 contact-agileits-w3layouts-left">
							<h3 class="title-w3-agile-sub">
								<span>地址</span>
							</h3>

							<p class="sub">
								浙江杭州江干区下沙高教园区, 学林街 暴龙城市广场<span
									class="glyphicon glyphicon-map-marker icon" aria-hidden="true"></span>
							</p>
							<p class="sub">
								24小时营业<span class="glyphicon glyphicon-time icon"
									aria-hidden="true"></span>
							</p>
							<p class="add">
								<span>电话 :</span> +0 (020) 123-5338<span
									class="glyphicon glyphicon glyphicon-earphone icon"
									aria-hidden="true"></span>
							</p>
							<p class="add">
								<span>邮箱 :</span> <a class="mail" href="mailto:mail@example.com">info(at)example.com</a><span
									class="glyphicon glyphicon-envelope icon" aria-hidden="true"></span>
							</p>

						</div>
						<div class="col-md-6 mail-grid1-form ">
							<h3 class="title-w3-agile-sub">
								会员<span>登陆</span>
							</h3>
							<form method="get" action="users/login">
								<div class="form-group">
									<label for="username">用户名</label> <input name="username"
										type="text" class="form-control" id="user"
										placeholder="username">
								</div>
								<div class="form-group">
									<label for="password">密码</label> <input name="password"
										type="password" class="form-control" id="Password"
										placeholder="Password">
								</div>
								<div>
									<input type="submit" value="登陆" />
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!--//contact-->
				<!-- //footer -->
				<div class="footer-w3layouts">
					<div class="container">
						<div class="agile-copy">
							<p>Copyright &copy; 2018.Company name All rights reserved.</p>
						</div>
						<div class="agileits-social">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
								<li><a href="#"><i class="fa fa-vk"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //footer -->
			</div>
			<!--//section4-->
			<!--fonts-->
			<!-- vertical nav -->
			<div id="fp-nav" class="right" style="margin-top: -43.5px;">
				<ul>
					<li><a href="#" class="active" data-anchor="home"><span></span></a>
						<div class="fp-tooltip right">Home</div></li>
					<li><a href="#" data-anchor="about"><span></span></a>
						<div class="fp-tooltip right">About</div></li>
					<li><a href="#" data-anchor="classes"><span></span></a>
						<div class="fp-tooltip right">Classes</div></li>
					<li><a href="#" data-anchor="clients"><span></span></a>
						<div class="fp-tooltip right">Clients</div></li>
					<li><a href="#" data-anchor="gallery"><span></span></a>
						<div class="fp-tooltip right">Gallery</div></li>
					<li><a href="#" data-anchor="contact"><span></span></a>
						<div class="fp-tooltip right">Contact</div></li>
				</ul>
			</div>
		</div>
	
	<!-- Page loads faster -->
	<script type="text/javascript" src="js2/jquery-2.1.4.min.js"></script>

	<script src="js2/responsiveslides.min.js"></script>
	<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 3
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>
	<!-- Owl-Carousel-JavaScript -->
	<script src="js2/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 3,
				lazyLoad : true,
				autoPlay : true,
				pagination : true,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->
	<!-- //galley-effect-JavaScript -->
	<script src="js2/jquery.tools.min.js"></script>
	<script src="js2/jquery.mobile.custom.min.js"></script>

	<script src="js2/jquery.cm-overlay.js"></script>
	<script>
					$(document).ready(function(){
						$('.cm-overlay').cmOverlay();
					});
				</script>
	<!-- //galley-effect-JavaScript -->

	<script type="text/javascript" src="js2/jquery.easing.min.js"></script>
	<script src="js2/jquery.singlefull.js"></script>
	<script type="text/javascript">
    $(document).ready(function() {
        $("#single").singlefull({
            speed: 1000,
            loopScroll:true,
            loopTop:false,
            loopBottom:true
        });
        // Just a javascript alignment to the content
        function alignContent() {
            var windowHeight = $(window).height();

            $('.content-resizer').each(function() {
                contentHeight = $(this).height();
                $(this).css('top', (windowHeight / 2) - (contentHeight / 2));
            });

            $('.alt-img').html($("#img-example").attr('src'));
        }

        // Execute the function
        alignContent();

        // Bind the function to the window.onresize
        $(window).bind("resize", function() {
            alignContent();
        });


    });
    </script>
	<script type="text/javascript" src="js2/bootstrap-3.1.1.min.js"></script>
</body>
</html>