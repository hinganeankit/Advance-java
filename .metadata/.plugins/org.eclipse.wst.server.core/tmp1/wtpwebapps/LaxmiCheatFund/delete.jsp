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
<a href="Index.html">SignIn</a> &nbsp;
<a href="profile.jsp">Profile</a> &nbsp;
<a href="updateProfile.html">Update Profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<%
HttpSession sess=request.getSession(false);
if(sess.getAttribute("session_id") !=null)
{
int p=(int)sess.getAttribute("session_id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");
PreparedStatement ps=con.prepareStatement("delete from profile where id=?");
ps.setInt(1, p);
int i=ps.executeUpdate();
if(i==1)
{
	out.print("<h2>Profile Deleted Successfully</h2>");
}
}
else
{
	out.print("Please Relogin");
	RequestDispatcher rd=request.getRequestDispatcher("index.html");
	rd.include(request, response);
}
%>

</body>
</html>