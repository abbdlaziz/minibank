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
        <a href="/welcome" class="navbar-brand">Home</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/register">New Registration</a></li>
                <li><a href="/show-users">All Users</a></li>
            </ul>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${mode=='MODE_HOME' }">
        <div class="container" id="homediv">
            <div class="jumbotron text-center">
                <h1>Welcome to Tecno-tab</h1>
                <h3>Subscribe my channel to support me</h3>
            </div>
        </div>

    </c:when>

    <c:when test="${mode=='MODE_REGISTER' }">
        <div class="container text-center">
            <h3>New Registration</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id }" />
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Email</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="email"
                               value="${user.email }" />
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
                    <input type="submit" class="btn btn-primary" value="Register" />
                </div>
            </form>
        </div>
    </c:when>
    <c:when test="${mode=='ALL_USERS' }">
        <div class="container text-center" id="tasksDiv">
            <h3>All Users</h3>
            <hr>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>UserName</th>
                        <th>Email</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users }">
                        <tr>
                            <td>${user.iduser}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td><a href="/delete-user?id=${user.iduser }"><span
                                    class="glyphicon glyphicon-trash"></span></a></td>
                            <td><a href="/edit-user?id=${user.iduser }"><span
                                    class="glyphicon glyphicon-pencil"></span></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </c:when>

    <c:when test="${mode=='MODE_UPDATE' }">
        <div class="container text-center">
            <h3>Update User</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id }" />
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">First Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="firstname"
                               value="${user.email }" />
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
                    <input type="submit" class="btn btn-primary" value="Update" />
                </div>
            </form>
        </div>
    </c:when>
</c:choose>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/admin/js/jquery-1.11.1.min.js"></script>
<script src="static/admin/js/bootstrap.min.js"></script>
</body>
</html>