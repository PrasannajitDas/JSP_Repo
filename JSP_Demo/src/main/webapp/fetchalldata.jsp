<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "Das@2023#");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student");
%>

<table cellPadding="20px" align="center" border="2px">

	<th>id</th>
	<th>name</th>
	<th>age</th>
	<th>delete</th>
	<th>edit</th>


	<%
	while(rs.next()){
	%>
	
	<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getInt(3) %></td>
	<td><a href="delete.jsp?id=<%= rs.getInt(1)%>">delete</a></td>
	<td><a href="editform.jsp?id=<%=rs.getInt(1)%>">edit</a></td>
	
	</tr>
	
	<%} %>
</table>

</body>
</html>