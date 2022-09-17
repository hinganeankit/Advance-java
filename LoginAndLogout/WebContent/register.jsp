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
String ename=request.getParameter("en");
String pass=request.getParameter("ps");
String phone=request.getParameter("ph");
String dob=request.getParameter("dob");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/person","root","root");
PreparedStatement ps=con.prepareStatement("insert into loginfo (First_name,Last_name,Email,Password,Phone,DoB) values(?,?,?,?,?,?)");
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, ename);
ps.setString(4, pass);
ps.setString(5, phone);
ps.setString(6, dob);
int i=ps.executeUpdate();
if(i==1)
{
	out.print("Register Sucessfully<br>");
	
	
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request, response);
	
}

%>

</body>
</html>