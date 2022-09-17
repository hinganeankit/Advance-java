<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="red">

<h2>  Second Page</h2>

<%= session.getAttribute("mobile") %>

<br>

<h1>

<%= application.getAttribute("redmi") %>
</h1>

</body>
</html>