<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String fname=request.getParameter("fn");
String lname=request.getParameter("ln");
String dob=request.getParameter("dob");
String gname=request.getParameter("gen");
String pname=request.getParameter("ph");
String aname=request.getParameter("add");
String ename=request.getParameter("en");
String dname=request.getParameter("aad");
String wname=request.getParameter("pass");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","root");
PreparedStatement ps=con.prepareStatement("insert into profile (First_name,Last_name,DOB,Gender,Phone,Address,Email,Aadhar_Number,Password) values(?,?,?,?,?,?,?,?,?)");

ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, dob);
ps.setString(4, gname);
ps.setString(5, pname);
ps.setString(6, aname);
ps.setString(7, ename);
ps.setString(8, dname);
ps.setString(9, wname);
int i=ps.executeUpdate();
if(i==1)
{
	out.print("Signup Sucessfully<br>");
	
	
	RequestDispatcher rd=request.getRequestDispatcher("index.html");
	rd.include(request, response);
	
}

%>

</body>
</html>