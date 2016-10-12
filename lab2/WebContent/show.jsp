<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理界面</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js.js"></script>
</head>
<body background="7.jpg"> 
<font face="华文新魏" style="font-size: 20px">
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <center>
        <div>
        <tr>
            书籍信息
        </tr>
            <table align="center" width="80%" border=1>
                <tr>
                    <th>ISBN(PK)</th>
                    <th>Title</th>
                    <th>AuthorID(FK)</th>
                    <th>Publisher</th>
                    <th>PublishDate</th>
                    <th>Price</th>
                </tr>
    		<tr><td><%=request.getParameter("ISBN")%></td><td>《<s:property value="Title"/>》</td><td><s:property value="AuthorID"/></td><td><s:property value="Publisher"/></td><td><s:property value="PublishDate"/></td><td><s:property value="Price"/></td></tr>

            </table>
        </div>
        <tr>作者信息</tr>
    <table align="center" width="80%" border=1>
                <tr>
                    <th>AuthorID(FK)</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Country</th>
                </tr>
    		<tr><td><s:property value="AuthorID"/></td><td><s:property value="Name"/></td><td><s:property value="Age"/></td><td><s:property value="Country"/></td></tr>
    		
            </table>
</font>
</body>
</html>