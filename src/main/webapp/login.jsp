<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    <meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="<%=basePath %>resource/js/jquery-1.12.0.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>resource/css/semantic.css">
	<script src="<%=basePath %>resource/js/semantic.js"></script>
	<link rel="stylesheet" type="text/css" href="resource/css/style.css">

  </head>
  
  <body>
  	<form class="box login">
  		<img src="resource/images/logo.jpg">
  		<div class="loginDiv"> 		
  			<div class="ui left icon input">
			  <input type="text" placeholder="请输入用户名">
			  <i class="User icon"></i>
			</div>			
  		</div>  		
  		<div class="loginDiv"> 			
  			<div class="ui left icon input">
			  <input type="password" placeholder="请输入密码">
			  <i class="Lock icon"></i>
			</div>		
  		</div>
  		<div class="checkDiv">
  			<div class="ui toggle checkbox">
			  <input type="checkbox" name="public">
			  <label>记住密码</label>
			</div>			
  		</div> 		  
  		<div class="loginDiv">
  			<button class="ui primary button">登录 </button>
  		</div>	  		
  	</form>
  </body>
</html>
