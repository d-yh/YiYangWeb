<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<script src="<%=basePath %>resource/js/jquery-1.12.0.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>resource/css/semantic.css">
<script src="<%=basePath %>resource/js/semantic.js"></script>
<style>
	作者：冻豆腐
链接：https://www.zhihu.com/question/38051439/answer/74703778
来源：知乎
著作权归作者所有，转载请联系作者获得授权。

html,body{
            width: 100%;
            height: 100%;
        }
        body{
            background-color: azure;
        }
        .parent{
            width: 50%;
            height: 100%;
            background-color: orangered;
            text-align: center;
        }
        .child{
            width: 100px;
            height: 200px;
            background-color: cadetblue;
            display: inline-block;
            vertical-align: middle;
        }
        i{
            display: inline-block;
            height: 100%;
            vertical-align: middle;
        }
</style>
<body>
  	 <div class="parent">
        <div class="child"></div>
        <i></i>
    </div>
</body>
</html>

