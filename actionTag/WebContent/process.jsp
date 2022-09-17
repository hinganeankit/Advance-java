<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: red;font: italic;">
<%= request.getParameter("uname") %>
</h1>

<%
request.getRequestDispatcher("one.jsp").include(request, response);
%>

</body>
</html>