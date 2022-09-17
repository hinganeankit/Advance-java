<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>JSTL</h1>

	<br>

	<c:out value="${' Hi WELCOME TO JSTL' }"></c:out>

	<br>

	<c:set var="num" value="1000"></c:set>

	<hr>
	<b> <c:out value="${num }"></c:out>
	</b>


   <hr>
   
   <c:if test="${ num>500 }">
   
      <c:out value="${ 'NUM IS GREATER THAN 500' }"></c:out>
   
   </c:if>
   
   <br>
   
   <c:choose>
   
   
     <c:when test="${num>1000 }">
     
      <c:out value="${ 'NUM IS GREATER THAN 1000' }"></c:out>
     </c:when>
   
   <c:otherwise>
   
     <c:out value="${ 'NUM IS LESS THAN 1000' }"></c:out>
   </c:otherwise>
   
   
   </c:choose>
   
   
   
   <hr>
   

</body>
</html>