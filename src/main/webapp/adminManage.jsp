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
<title>Admin</title>
<script type="text/javascript"
	src="<%=basePath%>js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/json2.js"></script>
<link rel="icon" href="img/logo001.png" type="image/x-icon">

<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
    /* $("form").submit(); */
  });  
});
</script>

<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 88);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 35%;
	width: 30%;
	height: 55%;
	padding: 25px;
	border: 1px solid black;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}

.imgs {
	width: 100px;
	height: 100px;
}

.trfontsize td {
	font-size: 24px;
	font-weight: bold;
	line-height: 10px;
}

.img-thumbnail {
	width:125px;
}
</style>




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
						class="btn btn-primary btn-lg dropdown-toggle" type="button"
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
					<button class="btn btn-default btn-lg dropdown-toggle"
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
					<li class="active">用户管理</li>
					<li class="active">用户列表</li>
				</ol>

				<div class="panel panel-default">
					<div class="panel-heading">搜索</div>
					<div class="panel-body">
						<form role="form" class="form-inline"
							action="adminCtrl/selectUsers">
							<div class="form-group">
								<label for="name">编号</label> <input type="text" id="userid"
									class="form-control" name="userid" placeholder="请输入编号" />
							</div>

							<div class="form-group">
								<button id="search" type="submit" class="btn btn-primary">开始搜索</button>
							</div>
						</form>
					</div>
				</div>
				<!--
                        列表展示
                    -->
				<div class="table-responsive">
					<table class="table table-striped ">
						<thead>
							<tr>
								<th>编号</th>
								<th>头像</th>
								<th>用户名</th>
								<th>性别</th>
								<th>是否有定制</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="u" items="${ulist}">
								<tr class="trfontsize">
									<td>${u.uid }</td>
									<td><img src="${u.upicpath}" class="imgs" /></td>
									<td>${u.uname }</td>
									<td>男</td>
									<td>${u.isplaned }</td>
									<td>
										<div class="btn-group">
											<a href="javascript:void(0)"
												onclick="document.getElementById('light1').style.display='block';show2(${u.uid});
        								document.getElementById('fade').style.display='block'"
												class="btn btn-default">修改</a><a href="javascript:void(0)"
												onclick="document.getElementById('light').style.display='block';show1(${u.uid});
        								document.getElementById('fade').style.display='block'"
												class="btn btn-default">詳細</a>
											<%-- <a href="javascript:void(0)" onclick="show1(${u.uid})" class="btn btn-default">详细</a> --%>
											<a href="adminCtrl/deleteUsers?uid=${u.uid}"
												class="btn btn-danger">删除</a>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<ul class="pagination" style="float: right;">
					<li><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1</a></li>
					<li class="disabled"><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="light" class="white_content">
		<div class="page ">
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>详细信息</span>
				</div>

				<form method="get" class="form-horizontal"
					action="adminCtrl/editUser?uid=${u.uid}">
					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uname" id="uname">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">年龄</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uage" id="uage">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">身高</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uheight"
								id="uheight">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">体重</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uweight"
								id="uweight">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">会员卡期限</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="utimelit"
								id="utimelit">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">头像</label>
						<div class="col-sm-10">
							<img class="img-thumbnail" id="upicpath" name="upicpath" />
						</div>
					</div>

					<div class="form-group">

						<div class="col-sm-offset-2 col-sm-10">
							<a href="javascript:void(0)"
								onclick="document.getElementById('light').style.display='none';
		document.getElementById('fade').style.display='none'"
								class="btn btn-default">关闭</a>
						</div>
					</div>
					<!-- <div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="submit" onclick = "document.getElementById('light').style.display='none';
		document.getElementById('fade').style.display='none'" class="btn btn-default"/></div>
								</div> -->
				</form>
			</div>
		</div>
	</div>

	<div id="light1" class="white_content">
		<div class="page ">
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>修改信息</span>
				</div>

				<form method="get" class="form-horizontal"
					action="adminCtrl/editUser?uid=${u.uid}">

					<div class="form-group">
						<label class="col-sm-2 control-label">姓名</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uname" id="uname">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">年龄</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uage" id="uage">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">身高</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uheight"
								id="uheight">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">体重</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="uweight"
								id="uweight">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">会员卡期限</label>
						<div class=" col-sm-10">
							<input type="text" class="form-control" name="utimelit"
								id="utimelit">
						</div>
					</div>

					<!-- <div class="col-sm-offset-2 col-sm-10">
									<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';
		document.getElementById('fade').style.display='none'" class="btn btn-default" >关闭</a></div>
								</div> -->


					<input type="text" class="form-control" name="uid" id="uid"
						style="display: none">
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button
								onclick="javascript:document.getElementById('light1').style.display='none';
		document.getElementById('fade').style.display='none'"
								class="btn btn-default">修改</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function show1(uid){
		//  ${pageContext.request.contextPath}  ===> http://localhost:8087/ssm
			$.ajax("${pageContext.request.contextPath}/adminCtrl/testRequestBody",// 发送请求的URL字符串。
					{
						dataType : "json", // 预期服务器返回的数据类型。
						type : "post", //  请求方式 POST或GET
						contentType : "application/json", //  发送信息至服务器时的内容编码类型
						// 发送到服务器的数据。
						data : JSON.stringify({
							uid : uid,
							tname : "Spring MVC"
						}),
						async : true, // 默认设置下，所有请求均为异步请求。如果设置为false，则发送同步请求
						// 请求成功后的回调函数。
						success : function(data) {
							  console.log(data);
								$("#light input").val(""); //清空数据 
								var upicpath = data.upicpath;
								$("#light input[name=uname]").val(data.uname);
								$("#light input[name=uage]").val(data.uage);
								$("#light input[name=uheight]").val(data.uheight);
								$("#light input[name=uweight]").val(data.uweight);
								$("#light input[name=utimelit]").val(data.utimelit);
								$('#light .img-thumbnail').attr('src',upicpath);
						},
						// 请求出错时调用的函数
						error : function() {
							alert("数据发送失败");
						}
					});
		}
</script>

	<script type="text/javascript">
		function show2(uid){
		//  ${pageContext.request.contextPath}  ===> http://localhost:8087/ssm
			$.ajax("${pageContext.request.contextPath}/adminCtrl/testRequestBody",// 发送请求的URL字符串。
					{
						dataType : "json", // 预期服务器返回的数据类型。
						type : "post", //  请求方式 POST或GET
						contentType : "application/json", //  发送信息至服务器时的内容编码类型
						// 发送到服务器的数据。
						data : JSON.stringify({
							uid : uid,
							tname : "Spring MVC"
						}),
						async : true, // 默认设置下，所有请求均为异步请求。如果设置为false，则发送同步请求
						// 请求成功后的回调函数。
						success : function(data) {
							  console.log(data);
								$("#light1 input").val(""); //清空数据 
								$("#light1 input[name=uname]").val(data.uname);
								$("#light1 input[name=uage]").val(data.uage);
								$("#light1 input[name=uheight]").val(data.uheight);
								$("#light1 input[name=uweight]").val(data.uweight);
								$("#light1 input[name=utimelit]").val(data.utimelit);
								$("#light1 input[name=uid]").val(data.uid);
						},
						// 请求出错时调用的函数
						error : function() {
							alert("数据发送失败");
						}
					});
		}
</script>
	<div id="fade" class="black_overlay"></div>
</body>
</html>