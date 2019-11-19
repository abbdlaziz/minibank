<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link type="text/css" href="static/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="static/assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="static/assets/css/theme.css" rel="stylesheet">
    <link type="text/css" href="static/assets/images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<%@include file="navbar.jsp"%>
<c:choose>
    <c:when test="${mode == 'MODE_HOME'}">
        <div class="span9">
            <div class="content">
                <div class="module">
                    <div class="module-head">
                        <div class="container" id="homeDiv">
                            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="static\bank\bank1.jpg" class="d-block w-100" alt="..."></a>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="static\bank\bank2.jpg" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                                   data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                                   data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                                <%--            <div class="jumbotron text-center">--%>
                                <%--                <h1>Welcome to Task Manager</h1>--%>
                                <%--            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:when>
    <c:when test="${mode == 'MODE_REPORTD'}">
        <div class="span9">
            <div class="content">
                <div class="module">
                    <div class="module-head">
                        <h3>Laporan Transaksi Deposit</h3>
                    </div>
                    <div class="module-body table">
                        <sql:setDataSource var="bank"
                                           url="jdbc:mysql://localhost/bank"
                                           driver="com.mysql.jdbc.Driver" user="root" password=""/>
                        <sql:query var="sqlresult"
                                   sql="select * from trx_transaksi  where jnstrx = 'Deposit'"
                                   dataSource="${bank}">
                        </sql:query>
                        <table cellpadding="0" cellspacing="0" border="0"
                               class="datatable-1 table table-bordered table-striped	 display"
                               width="100%">
                            <thead>
                            <tr>
                                <th>Id Transaksi</th>
                                <th>No Rekening</th>
                                <th>Jenis Transaksi</th>
                                <th>Jumlah</th>
                                <th>Sisa Saldo</th>
                                <th>Tanggal Deposit</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="row" items="${sqlresult.rows}">
                                <tr>
                                    <td><c:out value="${row.idtrx}"/></td>
                                    <td><c:out value="${row.norek}"/></td>
                                    <td><c:out value="${row.jnstrx}"/></td>
                                    <td>Rp. <c:out value="${row.jmltrx}"/></td>
                                    <td>Rp. <c:out value="${row.sisasaldo}"/></td>
                                    <td><c:out value="${row.tgltrx}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div><!--/.module-->

                <br/>

            </div><!--/.content-->
        </div>
        <!--/.span9-->
    </c:when>

    <c:when test="${mode == 'MODE_REPORTW'}">
        <div class="span9">
            <div class="content">
                <div class="module">
                    <div class="module-head">
                        <h3>Laporan Transaksi Withdraw</h3>
                    </div>
                    <div class="module-body table">
                        <sql:setDataSource var="bank"
                                           url="jdbc:mysql://localhost/bank"
                                           driver="com.mysql.jdbc.Driver" user="root" password=""/>
                        <sql:query var="sqlresult"
                                   sql="select * from trx_transaksi  where jnstrx = 'Withdraw'"
                                   dataSource="${bank}">
                        </sql:query>
                        <table cellpadding="0" cellspacing="0" border="0"
                               class="datatable-1 table table-bordered table-striped display"
                               width="100%">
                            <thead>
                            <tr>
                                <th>Id Transaksi</th>
                                <th>No Rekening</th>
                                <th>Jenis Transaksi</th>
                                <th>Jumlah</th>
                                <th>Sisa Saldo</th>
                                <th>Tanggal Withdraw</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="row" items="${sqlresult.rows}">
                                <tr>
                                    <td><c:out value="${row.idtrx}"/></td>
                                    <td><c:out value="${row.norek}"/></td>
                                    <td><c:out value="${row.jnstrx}"/></td>
                                    <td>Rp. <c:out value="${row.jmltrx}"/></td>
                                    <td>Rp. <c:out value="${row.sisasaldo}"/></td>
                                    <td><c:out value="${row.tgltrx}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div><!--/.module-->

                <br/>

            </div><!--/.content-->
        </div>
        <!--/.span9-->
    </c:when>
    <c:when test="${mode == 'MODE_REPORTTRANS'}">
        <div class="span9">
            <div class="content">
                <div class="module">
                    <div class="module-head">
                        <h3>Laporan Transaksi Transfer</h3>
                    </div>
                    <div class="module-body table">
                        <sql:setDataSource var="bank"
                                           url="jdbc:mysql://localhost/bank"
                                           driver="com.mysql.jdbc.Driver" user="root" password=""/>
                        <sql:query var="sqlresult"
                                   sql="select * from trx_transaksi  where jnstrx = 'Transfer'"
                                   dataSource="${bank}">
                        </sql:query>
                        <table cellpadding="0" cellspacing="0" border="0"
                               class="datatable-1 table table-bordered table-striped	 display"
                               width="100%">
                            <thead>
                            <tr>
                                <th>Id Transaksi</th>
                                <th>Norek Pengirim</th>
                                <th>Jenis Transaksi</th>
                                <th>Jumlah Transfer</th>
                                <th>Sisa Saldo</th>
                                <th>Norek Penerima</th>
                                <th>Tanggal Transfer</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="row" items="${sqlresult.rows}">
                                <tr>
                                    <td><c:out value="${row.idtrx}"/></td>
                                    <td><c:out value="${row.norek}"/></td>
                                    <td><c:out value="${row.jnstrx}"/></td>
                                    <td>Rp. <c:out value="${row.jmltrx}"/></td>
                                    <td>Rp. <c:out value="${row.sisasaldo}"/></td>
                                    <td><c:out value="${row.norek2}"/></td>
                                    <td><c:out value="${row.tgltrx}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div><!--/.module-->

                <br/>

            </div><!--/.content-->
        </div>
        <!--/.span9-->
    </c:when>
    <c:when test="${mode == 'MODE_REPORTALL'}">
        <div class="span9">
            <div class="content">
                <div class="module">
                    <div class="module-head">
                        <h3>Laporan Transaksi</h3>
                    </div>
                    <div class="module-body table">
                        <table cellpadding="0" cellspacing="0" border="0"
                               class="datatable-1 table table-bordered table-striped display"
                               width="100%">
                            <thead>
                            <tr>
                                <th>Id Transaksi</th>
                                <th>Norek Pengirim</th>
                                <th>Jenis Transaksi</th>
                                <th>Jumlah</th>
                                <th>Sisa Saldo</th>
                                <th>Norek Penerima</th>
                                <th>Tanggal Transaksi</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="all" items="${alls}">
                                <tr>
                                    <td>${all.idtrx}</td>
                                    <td>${all.norek}</td>
                                    <td>${all.jnstrx}</td>
                                    <td>Rp. ${all.jmltrx}</td>
                                    <td>Rp. ${all.sisasaldo}</td>
                                    <td>${all.norek2}</td>
                                    <td>${all.tgltrx}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div><!--/.module-->

                <br/>

            </div><!--/.content-->
        </div>
        <!--/.span9-->
    </c:when>
</c:choose>
</div>
</div><!--/.container-->
</div><!--/.wrapper-->

<div class="footer">
    <div class="container">
        <b class="copyright">&copy; 2019 Pji Bank</b>
    </div>
</div>

<script src="static/assets/scripts/jquery-1.9.1.min.js"></script>
<script src="static/assets/scripts/jquery-ui-1.10.1.custom.min.js"></script>
<script src="static/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="static/assets/scripts/datatables/jquery.dataTables.js"></script>
<script>
    $(document).ready(function () {
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass("btn-group datatable-pagination");
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    });
</script>
</body>
</html>