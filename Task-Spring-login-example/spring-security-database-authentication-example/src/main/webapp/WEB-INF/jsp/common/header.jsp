<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">


    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <%--<link href="${contextPath}/resources/css/footer.css" rel="stylesheet">--%>
</head>

<body>

<nav class="navbar navbar-inverse align-content-lg-center navbar-fixed-top">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed"
                            data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                            aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        Spring Security Login System </a>
                </div>
            </div>
        </div>
    </div>
</nav>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/4.3.1/twitter-bootstrap/bootstrap.bundle.min.js"></script>


<script type="text/javascript">

    $(document).ready(function () {
        console.log("ready");
        $("#showHide").hide();
        $("#showMore").click(function () {
            $("#showHide").show();
        });
    });
</script>

</body>
</html>