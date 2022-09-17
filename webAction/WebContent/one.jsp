<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("uname") %>

<% request.setAttribute("mobile", 9999999999l); %>
<hr>
<%= request.getAttribute("mobile") %>

<% session.setAttribute("mobile",9898989898l); %>


<% application.setAttribute("redmi", 9876543210l); %>
<hr>
<b>
<a href="two.jsp"> NEXT </a>
</b>


</body>
</html>