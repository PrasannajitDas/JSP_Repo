<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
String id=request.getParameter("id");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "Das@2023#");
PreparedStatement ps=con.prepareStatement("select * from student where id=?");
ps.setInt(1, Integer.parseInt(id));
ResultSet rs=ps.executeQuery();
rs.next();
%>

<form action="updateinfo.jsp">
enter id: <input type="number" name="id" value="<%=rs.getInt(1)%>" readonly="true"><br>
enter name: <input type="text" name="name" value="<%=rs.getString(2)%>"><br>
enter age: <input type="number" name="age" value="<%=rs.getInt(3)%>"><br>
<input type="submit">
</form>
</body>
</html>