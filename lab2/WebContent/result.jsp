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
<body background="9.jpg">
<font face="华文新魏" style="font-size: 20px">
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <div>
    <center>
        <span style="font-size:30px;">该作者所著全部图书题目</span>
    </center>
            <table align="center" width="80%">
                <tr>
                    <th>ISBN(PK)</th>
                    <th>Title</th>
                    <th>AuthorID(FK)</th>
                    <th>Publisher</th>
                    <th>PublishDate</th>
                    <th>Price</th>
                </tr>
               <s:iterator value="#request.list" var="BookInfo" status="status">
               <tr><td><s:property value="#BookInfo.ISBN" /></td>
               <td><s:property value="#BookInfo.Title" /></td>
               <td><s:property value="#BookInfo.AuthorID" /></td>
			   <td><s:property value="#BookInfo.Publisher" /></td>
			   <td><s:property value="#BookInfo.PublishDate" /></td>
			   <td><s:property value="#BookInfo.Price" /></td></tr>
			   </s:iterator>
            </table>
       </div>
</font>
</body>
</html>