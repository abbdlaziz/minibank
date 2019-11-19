<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: anggun.agung
  Date: 6/2/2019
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Report Transaction</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="static/new/plugins/datatables/dataTables.bootstrap4.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="static/new/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<%@include file="navbar.jsp" %>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid" style="margin-left: 50px">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Tables</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Data Tables</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <!-- /.card -->
                <c:choose>
                    <c:when test="${mode == 'MODE_REPORTD'}">
                        <div class="card" style="margin-left: 50px">
                            <div class="card-header">
                                <h3 class="card-title">Report Deposit Transaction</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body table" style="margin-left: 10px">
                                <sql:setDataSource var="bank"
                                                   url="jdbc:mysql://localhost/bank"
                                                   driver="com.mysql.jdbc.Driver" user="root" password=""/>
                                <sql:query var="sqlresult"
                                           sql="select * from trx_transaction where activity = 'Deposit' and transaction_date >= current_date "
                                           dataSource="${bank}">
                                </sql:query>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Transaction Id</th>
                                        <th>Account Number</th>
                                        <th>Activity</th>
                                        <th>Amount</th>
                                        <th>Left Balance</th>
                                        <th>Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${sqlresult.rows}">
                                    <tr>
                                        <td><c:out value="${row.id}"/></td>
                                        <td><c:out value="${row.account_number}"/></td>
                                        <td><c:out value="${row.activity}"/></td>
                                        <td>Rp. <c:out value="${row.amount}"/></td>
                                        <td>Rp. <c:out value="${row.left_balance}"/></td>
                                        <td><c:out value="${row.transaction_date}"/></td>
                                    </tr>
                                    </c:forEach>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </c:when>
                    <c:when test="${mode == 'MODE_REPORTW'}">
                        <div class="card"style="margin-left: 50px">
                            <div class="card-header">
                                <h3 class="card-title">Report Withdraw Transaction</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body table" style="margin-left: 10px">
                                <sql:setDataSource var="bank"
                                                   url="jdbc:mysql://localhost/bank"
                                                   driver="com.mysql.jdbc.Driver" user="root" password=""/>
                                <sql:query var="sqlresult"
                                           sql="select * from trx_transaction  where activity = 'Withdraw' and transaction_date >= current_date "
                                           dataSource="${bank}">
                                </sql:query>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Transaction Id</th>
                                        <th>Account Number</th>
                                        <th>Activity</th>
                                        <th>Amount</th>
                                        <th>Left Balance</th>
                                        <th>Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${sqlresult.rows}">
                                    <tr>
                                        <td><c:out value="${row.id}"/></td>
                                        <td><c:out value="${row.account_number}"/></td>
                                        <td><c:out value="${row.activity}"/></td>
                                        <td>Rp. <c:out value="${row.amount}"/></td>
                                        <td>Rp. <c:out value="${row.left_balance}"/></td>
                                        <td><c:out value="${row.transaction_date}"/></td>
                                    </tr>
                                    </c:forEach>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </c:when>
                    <c:when test="${mode == 'MODE_REPORTTRANS'}">
                        <div class="card"style="margin-left: 50px">
                            <div class="card-header">
                                <h3 class="card-title">Report Transfer Transaction</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body table" style="margin-left: 10px">
                                <sql:setDataSource var="bank"
                                                   url="jdbc:mysql://localhost/bank"
                                                   driver="com.mysql.jdbc.Driver" user="root" password=""/>
                                <sql:query var="sqlresult"
                                           sql="select * from trx_transaction where activity = 'Transfer' and transaction_date >= current_date "
                                           dataSource="${bank}">
                                </sql:query>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Transaction Id</th>
                                        <th>Account Number</th>
                                        <th>Activity</th>
                                        <th>Amount</th>
                                        <th>Left Balance</th>
                                        <th>Recipient Account</th>
                                        <th>Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${sqlresult.rows}">
                                    <tr>
                                        <td><c:out value="${row.id}"/></td>
                                        <td><c:out value="${row.account_number}"/></td>
                                        <td><c:out value="${row.activity}"/></td>
                                        <td>Rp. <c:out value="${row.amount}"/></td>
                                        <td>Rp. <c:out value="${row.left_balance}"/></td>
                                        <td><c:out value="${row.recipient_account}"/></td>
                                        <td><c:out value="${row.transaction_date}"/></td>
                                    </tr>
                                    </c:forEach>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </c:when>
                    <c:when test="${mode == 'MODE_REPORTALL'}">
                        <div class="card" style="margin-left: 70px">
                            <div class="card-header">
                                <h3 class="card-title">Report All Transaction</h3>
                            </div>
                            <!-- /.card-header -->

                            <div class="card-body table" style="margin-left: 10px">
                                <table id="example" class="table table-bordered table-striped">

                                    <thead>
                                    <tr>
                                        <th>Transaction Id</th>
                                        <th>Account Number</th>
                                        <th>Activity</th>
                                        <th>Amount</th>
                                        <th>Left Balance</th>
                                        <th>Recipient Account</th>
                                        <th>Date</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="all" items="${alls}">
                                    <tr>
                                            <%--                                            <td><%= i%><%i=+jmltrx;%></td>--%>
                                        <td>${all.id}</td>
                                        <td>${all.accountNumber}</td>
                                        <td>${all.activity}</td>
                                        <td>Rp. ${all.amount}</td>
                                        <td>Rp. ${all.leftBalance}</td>
                                        <td>${all.recipientAccount}</td>
                                        <td>${all.transactionDate}</td>
                                    </tr>
                                    </c:forEach>
                                    </tfoot>
                                    <%
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "");
                                            Statement st = con.createStatement();
                                            String strQuery = "SELECT SUM(left_balance) FROM trx_transaction";
                                            ResultSet rs = st.executeQuery(strQuery);
                                            String Countjml = "";
                                            while (rs.next()) {
                                                Countjml = rs.getString(1);
                                                out.println("Total jumlah transaksi:" + Countjml);
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>
                                </table>

                            </div>
                            <!-- /.card-body -->
                        </div>

                        <%--                        <div class="card">--%>
                        <%--                            <div class="card-header">--%>
                        <%--                                <h3 class="card-title">Report All Transaction</h3>--%>
                        <%--                            </div>--%>
                        <%--                            <!-- /.card-header -->--%>

                        <%--                            <div class="card-body table">--%>
                        <%--&lt;%&ndash;                                <a href="/report-print" class="btn btn-mini btn-info"><span class="fa fa-print" title="print data">Print</span></a></td>&ndash;%&gt;--%>
                        <%--                                <table id="example" class="table table-bordered table-striped" >--%>
                        <%--                                    <thead>--%>
                        <%--                                    <tr>--%>
                        <%--                                        <th>Id Transaksi</th>--%>
                        <%--                                        <th>Norek Pengirim</th>--%>
                        <%--                                        <th>Jenis Transaksi</th>--%>
                        <%--                                        <th>Jumlah</th>--%>
                        <%--                                        <th>Sisa Saldo</th>--%>
                        <%--                                        <th>Norek Penerima</th>--%>
                        <%--                                        <th>Tanggal Transaksi</th>--%>
                        <%--                                    </tr>--%>
                        <%--                                    </thead>--%>
                        <%--                                    <tbody>--%>
                        <%--                                    <c:forEach var="all" items="${alls}">--%>
                        <%--                                        <tr>--%>
                        <%--                                                &lt;%&ndash;                                            <td><%= i%><%i=+jmltrx;%></td>&ndash;%&gt;--%>
                        <%--                                            <td>${all.id}</td>--%>
                        <%--                                            <td>${all.accountNumber}</td>--%>
                        <%--                                            <td>${all.activity}</td>--%>
                        <%--                                            <td>Rp. ${all.amount}</td>--%>
                        <%--                                            <td>Rp. ${all.leftBalance}</td>--%>
                        <%--                                            <td>${all.recipientAccount}</td>--%>
                        <%--                                            <td>${all.transactionDate}</td>--%>
                        <%--                                        </tr>--%>
                        <%--                                    </c:forEach>--%>
                        <%--                                        &lt;%&ndash;                                        <p>Amount Transaction ${sqlresult.rows}</p>&ndash;%&gt;--%>
                        <%--                                    </tbody>--%>
                        <%--                                    <tfoot>--%>

                        <%--                                    </tfoot>--%>
                        <%--                                </table>--%>
                        <%--                                <%--%>
                        <%--                                    try {--%>
                        <%--                                        Class.forName("com.mysql.jdbc.Driver").newInstance();--%>
                        <%--                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "");--%>
                        <%--                                        Statement st = con.createStatement();--%>
                        <%--                                        String strQuery = "SELECT SUM(amount) FROM trx_transaksi";--%>
                        <%--                                        ResultSet rs = st.executeQuery(strQuery);--%>
                        <%--                                        String Countjml = "";--%>
                        <%--                                        while (rs.next()) {--%>
                        <%--                                            Countjml = rs.getString(1);--%>
                        <%--                                            out.println("Total jumlah transaksi:" + Countjml);--%>
                        <%--                                        }--%>
                        <%--                                    } catch (Exception e) {--%>
                        <%--                                        e.printStackTrace();--%>
                        <%--                                    }--%>
                        <%--                                %>--%>
                        <%--                            </div>--%>
                        <%--                            <!-- /.card-body -->--%>
                        <%--                        </div>--%>
                    </c:when>
                </c:choose>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="footer.jsp" %>
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="static/new/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="static/new/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="static/new/plugins/datatables/jquery.dataTables.js"></script>
<script src="static/new/plugins/datatables/dataTables.bootstrap4.js"></script>
<!-- SlimScroll -->
<script src="static/new/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="static/new/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="static/new/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="static/new/dist/js/demo.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
        $(document).ready(function () {
            $('#example').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'print'
                ]
            });
        });
    });
</script>
</body>
</html>

