﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Admin</title>
<link rel="icon" href="img/logo001.png" type="image/x-icon">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/css.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="adminCtrl/admin"> <img
					src="img/coin01.png" height="100%" />
				</a>
				<div class="navbar-header">
					<a class="navbar-brand" title="logoTitle" href="#">Fe₂O₃ GYM</a>


				</div>
			</div>

			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<!-- <ul class="nav navbar-nav">
					<li class="active"><a class="icon-bar" href="#">用户管理</a></li>
					<li><a href="#">教练管理</a></li>
					<li><a href="#">定制管理</a></li>
					<li><a href="#">反馈管理</a></li>
					<li><a href="#">活动管理</a></li>
					<li><a href="#">新闻管理</a></li>
				</ul> -->
				<ul class="nav navbar-nav navbar-right">
					<!-- 天气 -->
					<li><iframe class="navbar-brand" width="290" scrolling="no"
							height="18" frameborder="0" allowtransparency="true"
							src="http://i.tianqi.com/index.php?c=code&id=1&color=%23C6C6C6&icon=1&wind=1&num=1&site=12"></iframe>
					</li>
					<li><a>欢迎您,admin</a></li>
					<li><a href="home.jsp">安全退出</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="btn-group-vertical col-sm-2 " role="group">
				<div class="btn-group">
					<button onclick="javascript:location.href='adminCtrl/userManage'"
						class="btn btn-default btn-lg dropdown-toggle" type="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="img/coin07.png" height="100%" /> 用户管理
					</button>
				</div>

				<div class="btn-group">
					<!-- adminCtrl/coachManage   onclick="javascript:location.href='adminCtrl/coachManage'" -->
					<button class="btn btn-default btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<img src="img/coin10.png" height="100%" /> 教练管理<span
							class="caret"> </span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="adminCtrl/coachManage">所有教练</a></li>
						<li><a href="adminCtrl/coachAdd">添加教练</a></li>
					</ul>
				</div>

				<div class="btn-group">
					<button onclick="javascript:location.href='adminCtrl/custManage'"
						class="btn btn-default btn-lg dropdown-toggle" type="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="img/coin03.png" height="100%" /> 定制管理
					</button>
				</div>

				<div class="btn-group">
					<button class="btn btn-primary btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<img src="img/coin11.png" height="100%" /> 课程管理<span
							class="caret"> </span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="adminCtrl/courseManage">所有课程</a></li>
						<li><a href="adminCtrl/courseAdd">添加课程</a></li>
					</ul>
				</div>

				<div class="btn-group">
					<button class="btn btn-default btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<img src="img/coin15.png" height="100%" /> 活动管理<span
							class="caret"> </span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="adminCtrl/actManage">活动列表</a></li>
						<li><a href="adminCtrl/actAdd">添加活动</a></li>
					</ul>
				</div>

				<div class="btn-group">
					<button class="btn btn-default btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<img src="img/update.png" height="100%" /> 新闻管理<span
							class="caret"> </span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="adminCtrl/newsManage">所有新闻</a></li>
						<li><a href="adminCtrl/newsAdd">编辑新闻</a></li>
					</ul>
				</div>

			</div>
			<div class="col-sm-10">
				<ol class="breadcrumb">
					<li class="active">课程</li>
					<li class="active">添加课程</li>
				</ol>
			</div>

			<div class="col-sm-10">
				<div class="table-responsive">
					<div id="pageAll">
						<!-- <div class="pageTop">
							<div class="page">
								<img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;&nbsp;</span>&nbsp;新增教练
							</div>
						</div> -->
						<div class="page ">
							<div class="banneradd bor">
								<div class="baTopNo">
									<span>添加新课程</span>
								</div>

								<form class="form-horizontal" action="course/addCourse" method="post">
								
								<div class="form-group">
										<label class="col-sm-2 control-label">课程名称</label>
										<div class=" col-sm-10">
											<input name="couname" type="text" class="form-control" placeholder="输入课程名">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label">课程介绍</label>
										<div class=" col-sm-10">
											<input name="couintroduce" type="text" class="form-control" placeholder="课程介绍">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label">课程时段</label>
										<div class=" col-sm-10">
											<input name="coutime" type="text" class="form-control" placeholder="输入课程时段">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">课程时间</label>
										<div class=" col-sm-10">
											<input name="coudaytime" type="text" class="form-control" placeholder="输入课程时间">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label">课程教练ID</label>
										<div class=" col-sm-10">
											<input name="cid" type="text" class="form-control" placeholder="输入课程的教练的ID">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-2 control-label">图片介绍</label>
										<div class="col-sm-10">
											<input name="coupicpath" class="form-control" type="file" name="uploadFile"
												id="uploadFile" value="上传" />
										</div>
									</div>
							
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-primary">提交<tton>
								</div>
							</div>
							</form>
							</div>


						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

</body>

</html>