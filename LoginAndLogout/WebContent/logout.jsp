<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="login.html">Login</a> &nbsp;
<a href="profile.jsp">Profile</a> &nbsp;
<a href="updateProfile.html">Update profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<%
HttpSession sess=request.getSession(false);
sess.setAttribute("session_name", null);
sess.setAttribute("session_id", null);
sess.invalidate();
out.print("<h2>Logout Succesful</h2>");
%>
</body>
</html>