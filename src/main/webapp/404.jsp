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
<link rel="icon" href="img/logo001.png" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">   
<title>页面走丢了...</title>
</head>
<body>
<div>
<img src="img/404.jpg" height="100%" width="100%" />
</div>
</body>
</html>