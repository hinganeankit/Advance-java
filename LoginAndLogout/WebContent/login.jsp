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
<a href="login.html">Login</a> &nbsp;
<a href="profile.jsp">Profile</a> &nbsp;
<a href="updateProfile.html">Update profile</a> &nbsp;
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<%
String name=request.getParameter("uname");
String pass=request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/person","root","root");
PreparedStatement ps=con.prepareStatement("select * from loginfo where email=? and password=?");
ps.setString(1, name);
ps.setString(2, pass);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	out.print("Succesfully Login");
	HttpSession sess=request.getSession();
	sess.setAttribute("session_name", name);
	int id =rs.getInt(7);
	sess.setAttribute("session_id", id);
}
else{
	out.print("Login failed");
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request, response);
}
%>
</body>
</html>