<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>添加书籍</title>
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
    <form action="Add" method="get">
        <table align="center" width="50%" border="1">
            <tr>
                <th width="30%">ISBN：</th>
                <td width="70%"><input name="ISBN" type="text"></td>
            </tr>
            <tr>
                <th>Title：</th>
                <td><input name="Title" type="text"></td>
            </tr>
            <tr>
                <th>AuthorID：</th>
                <td><input name="AuthorID" type="text"></td>
            </tr>
            <tr>
                <th>Publisher：</th>
                <td><input name="Publisher" type="text"></td>
            </tr>
            <tr>
                <th>PublishDate：</th>
                <td><input name="PublishDate" type="text"></td>
            </tr>
            <tr>
                <th>Price：</th>
                <td><input name="Price" type="text"></td>
            </tr>
            <tr>
                <th colspan="2"> <input type="submit" value="增加"
                    style="width: 50px;"> </th>
            </tr>
        </table>
    </form>
    
   
</body>
</html>