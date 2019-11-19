<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: anggun.agung
  Date: 6/13/2019
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose><c:when test="${mode == 'MODE_REPORTALL'}">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Report All Transaction</h3>
        </div>
        <!-- /.card-header -->

        <div class="card-body table">
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

<script>
    window.print();
</script>
</body>

</html>
