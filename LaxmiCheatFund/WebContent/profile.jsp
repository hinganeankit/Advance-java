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
<style>
body {
 margin: 0;
 padding:0;
 font-family:sans-serif;
 background-image: url('bank.jpg');
 background-size:cover;
 background-position:center;
 }
 .main
 {
  width: 500px;
   box-shadow: 0 0 3px 0 rgba(0,0,0,0.3);
   background:aqua;
   padding: 20px;
   margin:2% auto 0;
   text-align: justify;
 }
 .heading2
 {
  text-align: center;
 }
</style>
</head>
<body>
<div class= "heading">
<h3>
<a href="index.html">Login</a> &nbsp;
<a href="profile.jsp">Profile</a> &nbsp;
<a href="UpdateProfile.html">Update Profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
</h3>
</div>
<div class=main>
<h3>
<div class= "heading2"><h2>Presonal Details</h2>
</div>
<%
HttpSession sess=request.getSession(false);
if(sess.getAttribute("session_name") !=null)
{
int name=(Integer)application.getAttribute("session_id");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");
PreparedStatement ps=con.prepareStatement("select * from profile where id=?");
ps.setInt(1, name);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	
	out.print("First Name :    ");
	out.print(rs.getString(1));
	out.print("<br>");
	out.print("Last Name  :    ");
	out.print(rs.getString(2));
	out.print("<br>");
	out.print("DOB        :    ");
	out.print(rs.getString(3));
	out.print("<br>");
	out.print("Gender :    ");
	out.print(rs.getString(4));
	out.print("<br>");
	out.print("Phone :    ");
	out.print(rs.getString(5));
	out.print("<br>");
	out.print("Address :    ");
	out.print(rs.getString(6));
	out.print("<br>");
	out.print("Email :    ");
	out.print(rs.getString(7));
	out.print("<br>");
	out.print("Aadhar Number :    ");
	out.print(rs.getString(8));
	out.print("<br>");
	
	int p=rs.getInt(10);
	sess.setAttribute("session_id", p);

}
}
else
{
	out.print("Login Again");
	RequestDispatcher rd=request.getRequestDispatcher("index.html");
	rd.include(request, response);
}

%>
</h3>
</div>

</body>
</html>