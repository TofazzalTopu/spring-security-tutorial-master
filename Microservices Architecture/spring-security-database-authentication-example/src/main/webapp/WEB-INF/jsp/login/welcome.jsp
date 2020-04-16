<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title> Welcome </title>
</head>
<body>

<jsp:include page="../common/header.jsp"/>

<div class="container">
    <div class="row">
        <ul>
            <li><h3> Go to the <a href="/index" th:href="@{/index}"> Index pages</a></h3></li>
        </ul>
    </div>
    <div class="row">

        <div class="col-md-6 col-md-offset-3">
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>

                <h2>Welcome ${pageContext.request.userPrincipal.name} | <a
                        onclick="document.forms['logoutForm'].submit()">Logout</a>
                </h2>
            </c:if>
        </div>
    </div>
</div>
<jsp:include page="../common/footer.jsp"/>

</body>
</html>
