<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>createtable.html</title>
</head>
<body>
<% 
	String name = request.getParameter("name");
	int row = Integer.parseInt(request.getParameter("rows"));
	int columns = Integer.parseInt(request.getParameter("columns"));
	if(row <=0) {
		// request.getRequestDispactcher("classexercise.jsp").forward(request, response);
		session.setAttribute("rows error", "HELLO: " + name + ", PLEASE PROVIDE A NUMBER GREATER THAN 0 FOR ROWS");
		response.sendRedirect("classexercise.jsp");
	}
	else if(columns<=0){
		session.setAttribute("columns error", "HELLO: " + name + ", PLEASE PROVIDE A NUMBER GREATER THAN 0 FOR COLUMNS");
		response.sendRedirect("classexercise.jsp");}
	else{}
	
	out.print("Hello " + name + ". Here is your table!");
%>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"cellspacing="2">
	<tbody>
	<%for(int i =0; i<row;i++){ %>
		<tr>
		<%for (int j =0 ; j<columns; j++) {%>
			<td style="vertical-align: top;">
			<%out.print((i+1) +"," + (j+1)); %>
			<br>
			</td>
		<%}; %>
		</tr>
	<%}; %>
	</tbody>
</table>
</body>
</html>

