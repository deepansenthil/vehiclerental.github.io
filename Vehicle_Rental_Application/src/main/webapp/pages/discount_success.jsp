<%@page import="com.nttdata.training.domain.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discount Success</title>
</head>
<body>
<%
String context = request.getContextPath();
%>
<font color="green" size="20">${requestScope.success }</font>
<h3>Welcome ${requestScope.details.name }</h3>


</body>
</html>