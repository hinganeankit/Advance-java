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
<a href="updateProfile.html">Update profile</a>&nbsp; 
<a href="delete.jsp">Delete Profile</a> &nbsp;
<a href="showAllProfile.jsp">Show All Profile</a> &nbsp;
<a href="logout.jsp">Logout</a> <br> <br>
<%
HttpSession sess=request.getSession(false);
if(sess !=null)
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/person","root","root");
PreparedStatement ps=con.prepareStatement("select * from loginfo");
ResultSet rs=ps.executeQuery();
%>
<table border="2px" align="left" cellpadding="5px" cellspacing="2px">
<caption>Profile Detail</caption>
<thead>
<tr>
<th>First_Name</th>
<th>Last_Name</th>
<th>Email</th>
<th>Phone</th>
<th>DoB</th>
<th>ID</th>
</tr>
</thead>
<tbody>

<%
while(rs.next())
{
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getInt(7)+"</td></tr>");
}
}
else
{
	out.print("Login Again");
	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	rd.include(request, response);
}


%>

</tbody>
</table>

</body>
</html>