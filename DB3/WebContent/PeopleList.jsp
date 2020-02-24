<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>People Management Application</title>
</head>
<body>
    <center>
        <h1>People Management</h1>
        <h2>
            <a href="new">Add New People</a>
            &nbsp;&nbsp;&nbsp;
            <a href="list">List All People</a>
                	&nbsp;&nbsp;&nbsp;
            <a href="initDB">Initialize DB</a>
             
        </h2>
   </center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Current People</h2></caption>
        <tr>
        	<th>Username:</th>
        	<th>Password:</th>
            <th>First Name:</th>
            <th>Last Name:</th>
            <th>EMail: </th>
            <th>Edit / Delete</th>
        </tr>
        <c:forEach var="people" items="${listPeople}">
            <tr>
            	<td><c:out value="${people.username}"/></td>
                <td><c:out value="${people.password}"/></td>
                <td><c:out value="${people.firstname}"/></td>
                <td><c:out value="${people.lastname}"/></td>
                <td><c:out value="${people.email}"/></td>
                    
   
                                     <td>    <a href="edit?id=<c:out value='${people.getId()}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=<c:out value='${people.getId()}' />">Delete</a></td>  
            </tr>
        </c:forEach>
        </table>
    </div>   
</body>
</html>