<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理界面</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js.js"></script>
</head>
<body id="index">
<font face="微软雅黑" style="font-size: 18px">
<h1>图书管理系统</h1>
<ul id="globalNav">
	<li><a href="mainlist.action" target="frameBord">图书目录</a></li>
	<li><a href="search.jsp" target="frameBord">查询作者著作</a></li>
	<li><a href="add.jsp" target="frameBord">添加图书</a></li>
</ul>
<iframe id="frameBord" name="frameBord" frameborder="0" width="100%" height="100%" src="mainlist.action"></iframe>
</font>
</body>
</html>