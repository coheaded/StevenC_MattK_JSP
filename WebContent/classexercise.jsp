<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise.html</title>
</head>
<body>
<% if((session.getAttribute("rows error") == null) && (session.getAttribute("columns error") == null))  
 		out.println("Please enter the dimensions of the desired table below:");
   else { 
			if(session.getAttribute("rows error") != null) 
				out.println(session.getAttribute("rows error"));
			else
				out.println(session.getAttribute("columns error"));
	
		} 
	session.setAttribute("rows error", null);
	session.setAttribute("columns error", null);
%>
<form method="post" action="createtable.jsp" name="table"><br>
<table style="text-align: left; width: 493px; height: 190px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 340px;">Enter your name<br>
</td>
<td style="vertical-align: top; width: 133px;"><input
name="name" value="name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 340px;">Enter number of
rows<br>
</td>
<td style="vertical-align: top; width: 133px;"><input
name="rows" value="potato"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 340px;">Enter number of
columns<br>
</td>
<td style="vertical-align: top; width: 133px;"><input
name="columns" value="cols"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 340px;"><input
name="Submit" value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top; width: 133px;"><input
name="Reset" value="Reset" type="reset"> </td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>


