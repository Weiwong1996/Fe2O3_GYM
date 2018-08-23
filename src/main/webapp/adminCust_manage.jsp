<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>Customization Management</title>
<link rel="icon" href="img/logo001.png" type="image/x-icon">

<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.10.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
			//显示出全部定制
			 window.onload=(function(){
			  	$.ajax({
					type:"get",
					url:"customization/allCust",
					contentType:"application/json",
					data:{
						
					},
					dataType:"json", 
					success: function(data){
						//console.log(data);
						var info = ""; 
						$.each(data, function(i,n) {
							var cusid = data[i].cusid;
							var cuscontent = data[i].cuscontent;
							var uid = data[i].uid;
							var cid = data[i].cid;
							var cusprice = data[i].cusprice;
							
								
							var b='<a href="customization/delCustomization?cusid='+cusid+'" class="btn btn-danger">删除</a>';
							var Custlist = "<tr><th>"+cusid+"</th><th>"+cuscontent+"</th><th>"+uid+"</th><th>"+cid+"</th><th>"+cusprice+"</th><th>"+b+"</th></tr>";
							$("#info tr:eq(0)").after(Custlist);	
						});
					},
					 async:true 
				});
			});  
		
</script>

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
					<li><iframe class="navbar-brand" width="370" scrolling="no"
							height="18" frameborder="0" allowtransparency="true"
							src="http://i.tianqi.com/index.php?c=code&id=1&color=%23C6C6C6&icon=1&wind=0&num=2&site=12"></iframe>
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
					<!-- adminCtrl/coachManage -->
					<button class="btn btn-default btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" role="button">
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
						class="btn btn-primary btn-lg dropdown-toggle" type="button"
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
					<li class="active">定制</li>
					<li class="active">用户定制列表</li>
				</ol>

				<div class="panel panel-default">
					<div class="panel-heading">搜索</div>
					<div class="panel-body">
						<form role="form" class="form-inline">
							<div class="form-group">
								<label for="name">编号</label> <input type="text"
									class="form-control" name="user_id" placeholder="请输入会员编号">
							</div>

							<div class="form-group">
								<button id="search" type="button" class="btn btn-primary">开始搜索</button>
							</div>
						</form>
					</div>
				</div>
				<!-- 列表展示  -->
				<div class="table-responsive">
					<table id="info" class="table table-striped ">
							<tr>
								<th>定制编号</th>
								<th>定制内容</th>
								<th>会员编号</th>
								<th>教练编号</th>
								<th>定制价格</th>
								<th>操作</th>
							</tr>
						<!-- <tbody>
							<tr>
								<td>15</td>
								<td><img src="img/coin01.png" class="img-thumbnail"
									style="height: 30px;" /></td>
								<td>无花果</td>
								<td>无花果</td>
								<td>安安</td>
								<td>
									<div class="btn-group">
										<a href="" class="btn btn-default">修改</a><a href=""
											class="btn btn-danger">删除</a>
									</div>

								</td>
							</tr>

						</tbody> -->
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
	<script type="text/javascript">
	//按ID查找用户
	$("#search").click(function(){
		var userid=$("input[name=user_id]").val();
		console.log(userid);
		console.log(userid+"-----------------");
	  	$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/customization/findCust",
			contentType:"application/json",
			data:{
				"userid":userid,
			},
			dataType:"json", 
			success: function(data){
				console.log("-----------------");
				console.log(data);
				 $("#info tr:gt(0)").html(""); 
				 $.each(data, function(i,n) {
						var cusid = data[i].cusid;
						var cuscontent = data[i].cuscontent;
						var uid = data[i].uid;
						var cid = data[i].cid;
						var cusprice = data[i].cusprice;						
						var b='<a href="customization/delCustomization?cusid='+cusid+'" class="btn btn-danger">删除</a>';
						var Cust = "<tr><th>"+cusid+"</th><th>"+cuscontent+"</th><th>"+uid+"</th><th>"+cid+"</th><th>"+cusprice+"</th><th>"+b+"</th></tr>";
						$("#info tr:eq(0)").after(Cust);	
					});
			},
			async:true
		});
	});
	</script>
	
</body>

</html>

