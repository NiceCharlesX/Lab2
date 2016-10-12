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

    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <form action="update" method="get">
        <table align="center" width="30%" border="1">
             <tr>
                <th width="30%">ISBN：</th>
                <td width="70%"><input name="ISBN" type="text" value="<s:property value="ISBN"/>" readonly="readonly"></input>
                </td>
            </tr>
            <tr>
                <th>Title：</th>
                <td><input name="Title" type="text" value="<s:property value="Title"/>">
                </input></td>
            </tr>
            <tr>
                <th>AuthorID：</th>
                <td><input name="AuthorID" type="text"
                    value="<s:property value="AuthorID"/>">
                    </input></td>
            </tr>
            <tr>
                <th>Publisher：</th>
                <td><input name="Publisher" type="text"
                    value="<s:property value="Publisher"/>">
                    </input></td>
            </tr>
            <tr>
                <th>PublishDate：</th>
                <td><input name="PublishDate" type="text"
                    value="<s:property value="PublishDate"/>">
                    </input></td>
            </tr>
            <tr>
                <th>Price：</th>
                <td><input name="Price" type="text"
                    value="<s:property value="Price"/>">
                    </input></td>
            </tr>
            <tr>
                <th colspan="2"> <input type="submit" value="修改"
                    style="width: 50px;">
                    </input></th>
            </tr>
        </table>
    </form>
</body>
</html>