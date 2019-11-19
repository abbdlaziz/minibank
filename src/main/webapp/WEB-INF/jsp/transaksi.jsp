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
    <title>Customer</title>
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
<%@include file="navbar.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Customer</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Customer</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-11">
                <c:choose>
            <c:when test="${mode == 'MODE_DEPOSIT'}">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Add Account</h3>
                    </div>              <!-- /.card -->
                    <form role="form" method="POST" action="save-deposit">
                        <div class="card-body">
                            <input class="form-control form-control-lg" type="hidden" name="idtrx" value="${deposit.idtrx}">
                            <div class="form-group">
                                <label>Choose Account</label>
                                <select class="form-control"required name="norek" tabindex="1" data-placeholder="Pilih Rekening">
                                    <option value="">Pilih Norekening</option>
                                    <%
                                        try
                                        {
                                            String Query="select * from account";
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                            Statement stm=conn.createStatement();
                                            ResultSet rs=stm.executeQuery(Query);
                                            while(rs.next())
                                            {
                                    %>
                                    <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                    </option>
                                    <%
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            ex.printStackTrace();
                                            out.println("Error"+ex.getMessage());
                                        }
                                    %>
                                </select>
                                <input type="hidden" name="jnstrx" value="Deposit"/>
                                <div class="form-group">
                                    <label>Ammount</label>
                                    <input class="form-control form-control-lg" name="jmltrx" value="${deposit.jmltrx}" type="text" placeholder="input deposit ammount">
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </c:when>
            <c:when test="${mode == 'MODE_WITHDRAW'}">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Withdraw</h3>
                    </div>              <!-- /.card -->
                    <form role="form" method="POST" action="save-withdraw">
                        <div class="card-body">
                            <input class="form-control form-control-lg" type="hidden" name="idtrx" value="${withdraw.idtrx}">
                            <div class="form-group">
                                <label>Choose Account</label>
                                <select class="form-control"required name="norek" tabindex="1" data-placeholder="Pilih Rekening">
                                    <option value="">Pilih Norekening</option>
                                    <option value="">Pilih Norekening</option>

                                    <%
                                        try
                                        {
                                            String Query="select * from account";
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                            Statement stm=conn.createStatement();
                                            ResultSet rs=stm.executeQuery(Query);
                                            while(rs.next())
                                            {
                                    %>
                                    <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                    </option>
                                    <%
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            ex.printStackTrace();
                                            out.println("Error"+ex.getMessage());
                                        }
                                    %>
                                </select>
                                <input type="hidden" name="jnstrx" value="Withdraw"/>
                                <div class="form-group">
                                    <label>Ammount</label>
                                    <input class="form-control form-control-lg" name="jmltrx" value="${withdraw.jmltrx}" type="text" placeholder="input deposit ammount">
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </c:when>
            <c:when test="${mode == 'MODE_TRANSFER'}">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Transfer</h3>
                    </div>              <!-- /.card -->
                    <form role="form" method="POST" action="save-transfer">
                        <div class="card-body">
                            <input class="form-control form-control-lg" type="hidden" name="idtrx" value="${transfer.idtrx}">
                            <div class="form-group">
                                <label>Choose Sender Account</label>
                                <select class="form-control"required name="norek" tabindex="1" data-placeholder="Pilih Rekening">
                                    <option value="">Pilih Norekening</option>

                                    <%
                                        try
                                        {
                                            String Query="select * from account";
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                            Statement stm=conn.createStatement();
                                            ResultSet rs=stm.executeQuery(Query);
                                            while(rs.next())
                                            {
                                    %>
                                    <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                    </option>
                                    <%
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            ex.printStackTrace();
                                            out.println("Error"+ex.getMessage());
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Choose Receipient Account</label>
                                <select class="form-control"required name="norek2" tabindex="1" data-placeholder="Pilih Rekening">
                                    <option value="">Pilih Norekening</option>

                                    <%
                                        try
                                        {
                                            String Query="select * from account";
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false","root","");
                                            Statement stm=conn.createStatement();
                                            ResultSet rs=stm.executeQuery(Query);
                                            while(rs.next())
                                            {
                                    %>
                                    <option value="<%=rs.getInt("norek")%>"><%=rs.getInt("norek")%>
                                    </option>
                                    <%
                                            }
                                        }
                                        catch (Exception ex)
                                        {
                                            ex.printStackTrace();
                                            out.println("Error"+ex.getMessage());
                                        }
                                    %>
                                </select>
                            </div>
                            <input type="hidden" name="activity" value="Transfer"/>
                            <div class="form-group">
                                <label>Ammount</label>
                                <input class="form-control form-control-lg" name="jmltrx" value="${transfer.jmltrx}" type="text" placeholder="input transfer ammount">
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </c:when>
                </c:choose>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
        <!-- /.row -->
    </section>

    <!-- /.content -->

    <!-- /.content-wrapper -->
    <%@include file="footer.jsp"%>

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

        $('#btnSubmit').click(function () {
            $('#myAlert').show('fade');

            setTimeout(function () {
                $('#myAlert').hide('fade');
            }, 2000);
        });

        $('#linkClose').click(function () {
            $('#myAlert').hide('fade');
        });

    });
</script></div>
</body>
</html>

