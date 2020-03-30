<%-- 
    Document   : personList
    Created on : 2020-03-17, 14:44:59
    Author     : wm41547
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laboratorium 4 - Person List</title>
        <style>
            table, th, td {border: 1px solid black; border-collapse: collapse;}
        </style>
    </head>
    <body>
        <h1>Person List</h1>
        
        <table>
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
            </tr>
            
            <c:forEach items="${personList}" var="p">
                <tr>
                <td>${p.getFirstName()}</td>
                <td>${p.getLastName()}</td>
                <td>${p.getEmail()}</td>
            </tr>
            </c:forEach>
        </table>
        <h3>${sessionScope.timer}</h3>
    </body>
</html>
