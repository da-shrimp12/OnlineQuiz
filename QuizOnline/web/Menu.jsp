
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="menu">
    <img src="images/menu_bg.gif" alt=""/>
    <div class="all_menu">
		<c:if test="${sessionScope.user.role==null}">
            <a href="login">Home</a>
            <a href="login">Take Quiz</a>
            <a href="login">Make Quiz</a>
            <a href="login">Manage Quiz</a>
        </c:if>
        <c:if test="${sessionScope.user.role==1}">
            <a href="home">Home</a>
            <a href="take-quiz">Take Quiz</a>
            <a href="make-quiz">Make Quiz</a>
            <a href="manage-quiz">Manage Quiz</a>
            <a href="logout">Log out</a>
        </c:if>
        <c:if test="${sessionScope.user.role==2}">
            <a href="home">Home</a>
            <a href="take-quiz">Take Quiz</a>
			<a href="ErrorPage.jsp">Make Quiz</a>
            <a href="ErrorPage.jsp">Manage Quiz</a>
            <a href="logout">Log out</a>
        </c:if>
    </div>
</div>