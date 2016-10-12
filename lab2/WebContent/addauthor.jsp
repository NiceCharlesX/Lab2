<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>添加作者</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js.js"></script>
</head>
<body background="3.jpg">

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <form action="addAuthor" method="get">
        <table align="center" width="30%" border="1">
            <tr>
                <th width="30%">AuthorID：</th>
                <td width="70%"><input name="AuthorID" type="text"
                    value="<%=request.getParameter("AuthorID")%>" readonly="readonly">不可更改</td>
            </tr>
            <tr>
                <th>Name：</th>
                <td><input name="Name" type="text"></td>
            </tr>
            <tr>
                <th>Age：</th>
                <td><input name="Age" type="text"></td>
            </tr>
            <tr>
                <th>Country：</th>
                <td><input name="Country" type="text"></td>
            </tr>
            <tr>
                <th colspan="2"> <input type="submit" value="增加"
                    style="width: 50px;"> </th>
            </tr>
        </table>
    </form>
   
</body>
</html>