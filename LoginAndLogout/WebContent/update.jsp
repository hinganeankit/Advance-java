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
<a href="updateProfile.html">Update profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<% 

HttpSession sess=request.getSession(false);
if(sess.getAttribute("session_id") != null)
{
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
int p=(int)sess.getAttribute("session_id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/person","root","root");
PreparedStatement ps=con.prepareStatement("update loginfo set First_name=?,Last_name=? where id=?");
ps.setString(1,fname);
ps.setString(2,lname);
ps.setInt(3,p);
int i=ps.executeUpdate();
if(i==1)
{
	out.print("<h2>Profile Update Successfully</h2>");

	
}
else
{
	out.println("Please Relogin");
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request, response);
	
}
}
%>>
</body>
</html>