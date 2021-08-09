
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="header"></div>
            <jsp:include page="Menu.jsp"/>
            <div class="main">
                <c:if test="${percen>=50}">
                    <div class="title">Your score <span class="score">${score}(${percen}%) - Passed</span></div>
                </c:if>
                <c:if test="${percen<50}">
                    <div class="title">Your score <span style="color: red;">${score}(${percen}%) - Failed</span></div>
                </c:if>
                <div class="title">Take another test <a href="take-quiz" class="back">Start</a></div>

            </div>
        </div>
    </body>
</html>
