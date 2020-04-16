<%--
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
--%>


<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<th:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <%--<meta name="author" content="">--%>

    <title> Login </title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>


<%--<div class="container">--%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand glyphicon-align-center" href="#">Registration and
                Login Module</a>
        </div>
    </div>
</nav>
<br>
<br>

<div class="container">

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h1>Login page</h1>
            <form method="POST" action="${contextPath}/login">
                <%--<form method="POST" action="${contextPath}/login" class="form-signin">--%>
                <%--<h2 class="form-heading">Log in</h2>--%>

                <%--<div class="form-group ${error != null ? 'has-error' : ''}">
                    <span>${message}</span>
                    <input name="username" type="text" class="form-control" placeholder="Username"
                           autofocus="true"/>
                    <input name="password" type="password" class="form-control" placeholder="Password"/>
                    <span>${error}</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                    <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
                </div>--%>

                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <span>${message}</span>
                    <br/>
                    <label for="username">Username</label>:
                    <input type="text"
                           id="username" name="username" class="form-control"
                           autofocus="autofocus" placeholder="Username"/>
                </div>
                <div class="form-group  ${error != null ? 'has-error' : ''}">
                    <label for="password">Password</label>:
                    <input type="password"
                           id="password" name="password" class="form-control"
                           placeholder="Password"/>
                </div>
                <span>${error}</span>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <input type="submit" name="login-submit" id="login-submit"
                                   class="form-control btn btn-primary" value="Log In"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
						<span>New user? <a href="/" href="@{/registration}">Register
								here</a></span>
                </div>

            </form>


        </div>
    </div>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
