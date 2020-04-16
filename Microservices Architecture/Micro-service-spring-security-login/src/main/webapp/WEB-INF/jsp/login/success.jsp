<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-md-12 col-md-offset-3">

            <h2> You see success page </h2>

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>

                <ul>
                    <li><h3> Go to the <a href="/index" th:href="@{/index}"> Index pages</a></h3></li>
                </ul>
            </c:if>

            <ul>
                <h2>Welcome: ${pageContext.request.userPrincipal.name} | <a
                        onclick="document.forms['logoutForm'].submit()">Logout</a>
                </h2>
            </ul>
        </div>
    </div>


</div>
</body>
</html>
