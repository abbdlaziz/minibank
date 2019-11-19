<%--
  Created by IntelliJ IDEA.
  User: abdul.aziz
  Date: 27/05/2019
  Time: 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title>admin | home</title>
    <link href="static/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/admin/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/login-admin-super" class="navbar-brand">Admin</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            </ul>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${mode=='MODE_LOGINADMIN' }">
        <div class="container text-center">
            <h3>Admin Login</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="/login-admin">
                <c:if test="${not empty error }">
                    <div class= "alert alert-danger">
                        <c:out value="${error }"></c:out>
                    </div>
                </c:if>
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password }" />
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Login" />
                </div>
            </form>
        </div>
    </c:when>
</c:choose>
<script src="static/admin/js/jquery-1.11.1.min.js"></script>
<script src="static/admin/js/bootstrap.min.js"></script>
</body>
</html>