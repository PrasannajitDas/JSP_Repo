<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String num1 = request.getParameter("number1");
	String num2 = request.getParameter("number2");

	String operation = request.getParameter("operation");
	if (operation.equals("Addition"))
		out.println(Integer.parseInt(num1) + Integer.parseInt(num2));
	else if (operation.equals("Subtraction"))
		out.println(Integer.parseInt(num1) - Integer.parseInt(num2));
	else if (operation.equals("Multiplication"))
		out.println(Integer.parseInt(num1) * Integer.parseInt(num2));
	else if (operation.equals("Division"))
		out.println(Integer.parseInt(num1) / Integer.parseInt(num2));
	%>
</body>
</html>