<%-- 
    Document   : hello
    Created on : 2020-03-17, 12:47:13
    Author     : wm41547
<h1>Cześć, ${imie}!</h1>

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <h1>Cześć, <c:out value="${imie}"/>!</h1>
        
        <h1>Cześć, ${person.firstName} ${person.lastName}!</h1>
        <br/>
        <a href="">mailto:${person.email}</a>
        
        <h2>
            <c:forEach items="${dniTygodnia}" var="dzien">
                <p>
                    ${dzien}
                </p>
            </c:forEach>
        </h2>
    </body>
</html>