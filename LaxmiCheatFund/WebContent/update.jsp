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
<a href="UpdateProfile.html">Update profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<% 

HttpSession sess=request.getSession(false);
if(sess.getAttribute("session_id") != null)
{
String pname=request.getParameter("pname");
String ename=request.getParameter("ename");
String aname=request.getParameter("aname");
String pass=request.getParameter("pass");
int p=(int)sess.getAttribute("session_id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");
PreparedStatement ps=con.prepareStatement("update profile set Phone=?,Email=?,Address=?,Password=? where id=?");
ps.setString(1,pname);
ps.setString(2,ename);
ps.setString(3,aname);
ps.setString(4,pass);
ps.setInt(5,p);
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