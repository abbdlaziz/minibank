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
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    /* The Modal (background) */
    .modal,
    .modal1,
    .modal2 {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0, 0, 0); /* Fallback color */
        background-color: rgba(0, 0, 0, 0); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        position: relative;
        top: 50px;
        background-color: #fefefe;
        margin: auto;
        padding: 0;
        border: 1px solid #888;
        width: 50%;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        -webkit-animation-name: animatetop;
        -webkit-animation-duration: 0.9s;
        animation-name: animatetop;
        animation-duration: 0.9s
    }

    /* Add Animation */
    @-webkit-keyframes animatetop {
        from {
            top: -300px;
            opacity: 0
        }
        to {
            top: 50px;
            opacity: 1
        }
    }

    @keyframes animatetop {
        from {
            top: -300px;
            opacity: 0
        }
        to {
            top: 50px;
            opacity: 1
        }
    }

    /* The Close Button */
    .close,
    .close1,
    .close2 {
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus,
    .close1:hover,
    .close1:focus,
    .close2:hover,
    .close2:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

    .modal-header {
        padding: 2px 16px;
        background-color: #00695c;
        color: white;
        width: 100%;

    }

    .modal-body {
        padding: 2px 16px;
    }

    .modal-footer {
        padding: 2px 16px;
        background-color: #00695c;
        color: white;
        width: 100%;
    }
</style>
<body class="hold-transition sidebar-mini">
<%@include file="navbar.jsp" %>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin: 90px;">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Bank Gunadarma</h1>
                </div>
<%--                <div class="col-sm-6">--%>
<%--                    <ol class="breadcrumb float-sm-right">--%>
<%--                        <li class="breadcrumb-item"><a href="#">Home</a></li>--%>
<%--                        <li class="breadcrumb-item active">Customer</li>--%>
<%--                    </ol>--%>
<%--                </div>--%>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-11">
                <c:choose>
                <c:when test="${mode == 'MODE_HOME'}">
                    <%--                        <div class="span9">--%>
                    <%--                            <div><H1><text-center>Welcome To PJI Bank</text-center></H1></div>--%>
                    <%--                            <img src="static/bank/bank1.jpg" class="img-thumbnail" alt="">--%>
                    <%--                            <p> <strong>PJI Bank, berdiri sejak tahun 1996 adalah jaringan bank dan grup jasa keuangan terbesar di Asia Tenggara,--%>
                    <%--                                dan beroperasi sebagai perbankan penting di Indonesia, Malaysia, dan Singapura.</strong></p>--%>
                    <%--                        </div>--%>

                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner row">
                        <div class="carousel-item active" style="margin-left: 80px">
                            <img class="d-block w-100" src="static/bank/bank1.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item " style="margin-left: 80px">
                            <img class="d-block w-100" src="static/bank/bank2.jpg" alt="Second slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
            </c:when>
            <c:when test="${mode ==  'MODE_NASABAH'}">
                <div class="card card-primary" style="margin-left: 90px">
                    <div class="card-header">
                        <h3 class="card-title" align="center">Add New Customer</h3>
                    </div>              <!-- /.card -->

                    <form role="form" method="POST" action="/save-nasabah">
<%--                        <p style="color:greenyellow" style="text-align:center">${success}</p>--%>
                        <div class="card-body">
                            <div class="form-group">
<%--                                <label>Customer Name</label>--%>
                                <input required class="form-control form-control-lg" name="name" value="${nasabah.name}"
                                       type="text" placeholder="Full Name">
                            </div>
                            <div class="form-group">
<%--                                <label>ID Card</label>--%>
                                <input required class="form-control form-control-lg" name="idCard"
                                       value="${nasabah.idCard}" type="text" placeholder="ID Card">
                            </div>
                            <div class="form-group">
<%--                                <label>Address</label>--%>
                                <input required class="form-control form-control-lg" name="address"
                                       value="${nasabah.address}" type="text-area" placeholder="Address">
                            </div>
                            <div class="form-group">
<%--                                <label>Birth Place</label>--%>
                                <input required class="form-control form-control-lg" name="birthPlace"
                                       value="${nasabah.birthPlace}" type="text" placeholder="Birth Place">
                            </div>
                            <div class="form-group">
                                <label>Birth Date</label>
                                <input required class="form-control form-control-lg" name="birthDate" type="Date"
                                       value="${nasabah.birthDate}" placeholder="input birth date">
                            </div>
                            <div class="form-group">
<%--                                <label>Mother's Name</label>--%>
                                <input required class="form-control form-control-lg" name="motherName"
                                       value="${nasabah.motherName}" type="text" placeholder="Mother's Name">
                            </div>
                            <div class="form-group">
                                <label>Gender</label>
                                <div class="form-check">
                                    <input class="form-check-input" name="gender" type="radio" value="M" required>
                                    <label class="form-check-label">Male</label><br>
                                    <input class="form-check-input" name="gender" type="radio" value="F" required>
                                    <label class="form-check-label">Female</label>
                                </div>
                            </div>
                            <div class="form-group">
<%--                                <label>Phone Number</label>--%>
                                <input required class="form-control form-control-lg" name="phoneNumber"
                                       value="${nasabah.phoneNumber}" type="text" placeholder="Phone Number">
                            </div>
                            <div class="form-group">
<%--                                <label>Account Type</label>--%>
                                <select class="form-control form-control-lg" name="accountType">
                                    <option value="">Choose Account Type</option>
                                    <option value="Savings">Savings</option>
<%--                                    <option value="Checking">Checking</option>--%>
                                </select>
                            </div>
                            <div class="form-group">
<%--                                <label>First Balance</label>--%>
                                <input class="form-control form-control-lg" name="balance"
                                                           value="${account.balance}"
                                                           type="text" placeholder="First Balance Amount">
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div align="center" class="card-header">
                            <button type="submit" id="btnSubmit" class="btn btn-success">Save Customer</button>
                            <div id="myAlert" class="alert alert-success collapse">
                                <a id="linkClose" href="#" class="close">&times;</a>
                                <strong>Data Saved!</strong> Your Data Saved Successfuly
                            </div>
                        </div>
                    </form>
                </div>
            </c:when>
            <c:when test="${mode=='MODE_UPDATE'}">
                <div class="card card-primary" style="margin-left: 70px">
                    <div class="card-header">
                        <h3 class="card-title" align="center">Edit Data Customer</h3>
                    </div>              <!-- /.card -->

                    <form role="form" method="POST" action="/updates-nasabah">
                        <div class="card-body">
                            <div class="form-group">
                            <input name="id" value="${nasabah.id}"
                                   type="hidden">
                            <input name="id" value="${nasabah.username}"
                                   type="hidden">
                            <input name="id" value="${nasabah.password}"
                                   type="hidden">
                            </div>
                            <div class="form-group">
                                <label>Customer Name</label>
                                <input required class="form-control form-control-lg" name="name" value="${nasabah.name}"
                                       type="text" placeholder="input customer name">
                            </div>
                            <div class="form-group">
                                <label>ID Card</label>
                                <input required class="form-control form-control-lg" name="idCard"
                                       value="${nasabah.idCard}" type="text" placeholder="input id card">
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input required class="form-control form-control-lg" name="address"
                                       value="${nasabah.address}" type="text-area" placeholder="input address">
                            </div>
                            <div class="form-group">
                                <label>Birth Place</label>
                                <input required class="form-control form-control-lg" name="birthPlace"
                                       value="${nasabah.birthPlace}" type="text" placeholder="input birth place">
                            </div>
                            <div class="form-group">
                                <label>Birth Date</label>
                                <input required class="form-control form-control-lg" name="birthDate" placeholder="input birth date" type="date"  value="${nasabah.birthDate}"/>
                            </div>
                            <div class="form-group">
                                <label>Mother's Name</label>
                                <input required class="form-control form-control-lg" name="motherName"
                                       value="${nasabah.motherName}" type="text" placeholder="input mother's name">
                            </div>
                            <div class="form-group">
                                <label>Gender</label>
                                <div class="form-check">
                                <c:if test="${nasabah.gender == 'M'}">
                                    <input disabled class="form-check-input" name="gender" type="radio" checked="true" value="M" required>
                                    <label class="form-check-label">Male</label><br>
                                    <input disabled class="form-check-input" name="gender" type="radio" value="F" required>
                                    <label class="form-check-label">Female</label>
                                    </c:if>
                                </div>
                                <div class="form-group">
                                <c:if test="${nasabah.gender == 'F'}">
                                <input disabled class="form-check-input" name="gender" type="radio" value="M" required>
                                <label class="form-check-label">Male</label><br>
                            <input disabled class="form-check-input" name="gender" type="radio" checked="true" value="F" required>
                            <label class="form-check-label">Female</label>
                            </c:if>
                            </div>
                                </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input required class="form-control form-control-lg" name="phoneNumber"
                                       value="${nasabah.phoneNumber}" type="text" placeholder="input phone number">
                            </div>
                        <!-- /.card-body -->
                        <div class="form-group ">
                            <input type="submit" class="btn btn-primary" value="Update" />
                        </div>
                        </div>
                    </form>
                </div>
            </c:when>
            <c:when test="${mode == 'MODE_ACCOUNT'}">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 align="center" class="card-title">Creating A New Account</h3>
                    </div>              <!-- /.card -->
                    <form role="form" method="POST" action="/save-account">
                        <div class="card-body">
                            <table class="table table-bordered table-striped">
                                <tr class="table100-head">
                                    <th class="column1" style="color: black; padding-right: 50px">Customer Name</th>
                                    <td class="column4"><font size="6">&nbsp${nasabah.name}</font></td>
                                    <input readonly required type="hidden"
                                           name="customerId" value="${nasabah.id}" class="span8">
                                </tr>
                                <tr class="table100-head">
                                    <th class="column1" style="color: black; padding-right: 50px">Account Type</th>
                                    <td class="column4">
                                        <select class="form-control form-control-lg" name="accountType">
                                        <option value="">Choose Account Type</option>
                                        <option value="Savings">Savings</option>
                                        <option value="Checking">Checking</option>
                                        <option value="Time Deposit">Time Deposit</option>

<%--                                        <option value="">Savings</option>--%>
<%--                                        <option value="">Checking</option>--%>
<%--                                        <option value="">Time Deposit</option>--%>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="table100-head">
                                    <th class="column1" style="color: black; padding-right: 50px">First Balance</th>
                                    <td class="column4"><input class="form-control form-control-lg" name="balance"
                                                               value="${account.balance}"
                                                               type="text" placeholder="Balance Amount"></td>
                                </tr>
                            </table>
                            <input class="form-control form-control-lg" type="hidden" name="accountNumber"
                                   value="${account.accountNumber}">
                                <%--                            <div class="control-group">--%>
                                <%--                                <label class="control-label">Nama Nasabah</label>--%>
                                <%--                                <div class="controls">--%>
                                <%--                                    <label align="center class=" control-label">${nasabah.name}</label>--%>
                                <%--                                    <input readonly required type="hidden" placeholder="Masukan jumlah saldo"--%>
                                <%--                                           name="customerId" value="${nasabah.id}" class="span8">--%>
                                <%--                                </div>--%>
                                <%--                            </div>--%>
                                <%--                                &lt;%&ndash;                            <div class="form-group">&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                <label>Account Type</label>&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                <select class="form-control" name="jenisaccount" tabindex="1" data-placeholder="Pilih Nasabah">&ndash;%&gt;&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                    <option value="">Saving</option>&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                    <option value="">Time Deposit</option>&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                    <option value="">Checking</option>&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                                </select>&ndash;%&gt;--%>
                                <%--                                &lt;%&ndash;                            </div>&ndash;%&gt;--%>
                                <%--                            <div class="form-group">--%>
                                <%--                                <label>Balance</label>--%>
                                <%--                                <input class="form-control form-control-lg" name="balance" value="${account.balance}"--%>
                                <%--                                       type="text" placeholder="input balance">--%>
                                <%--                            </div>--%>
                            <!-- /.card-body -->
                            <div class="card-footer" align="center">
                                <button href="/nasabah-view?id=${nasabah.id}" type="submit" class="btn btn-primary"
                                        align="center">
                                    Save Account
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </c:when>

            <c:when test="${mode == 'MODE_CUSTOMER'}">
                <div class="card-primary">
                    <div align="center" class="card-header" style="margin-left: 80px">
                        <h3 class="card-title">Data Customer</h3>
                    </div>
                    <!-- /.card-header -->

                    <div class="card-body table" style="margin-left: 50px">
                            <%--                                    <sql:setDataSource var="bank"--%>
                            <%--                                                       url="jdbc:mysql://localhost/bank"--%>
                            <%--                                                       driver="com.mysql.jdbc.Driver" user="root" password=""/>--%>
                            <%--                                    <sql:query var="sqlresult"--%>
                            <%--                                               sql="select * from trx_transaksi where jnstrx = 'Transfer'"--%>
                            <%--                                               dataSource="${bank}">--%>
                            <%--                                    </sql:query>--%>
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Account No</th>
                                <th>View</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>
                                    <% int i = 1;%>
                            <c:forEach var="nasabah" items="${nasabahs}">
                            <tr>
                                <td><%= i%><%i++;%></td>
                                <td>${nasabah.customerName}</td>
                                <td>${nasabah.address}</td>
                                <td>${nasabah.phoneNumber}</td>
                                <td>${nasabah.accountNumber}</td>
                                <td><a href="/nasabah-view?id=${nasabah.customerId}" class="btn btn-mini btn-info"><span
                                        class="fa fa-eye" title="view data"></span></a></td>
                                <td><a href="/update-nasabah?id=${nasabah.customerId}" class="btn btn-small btn-primary"><span
                                        class="fa fa-pencil" title="edit data"></span></a></td>
                                <td><a href="/delete-nasabah?id=${nasabah.customerId}" class="btn btn-small btn-danger"
                                       onclick="return confirm('Are you sure to delete?');">
                                    <span class="fa fa-trash" title="delete data"></span></a></td>
                            </tr>

                            </c:forEach>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
            </c:when>

            <c:when test="${mode == 'MODE_NASABAHVIEW'}">
            <div class="card" style="margin-left: 70px">
                <div class="card-header" >
                    <h3 class="card-title">Customer Information</h3>
                </div>
                <!-- /.card-header -->

                <div class="card-body table">
                    <table class="table table-bordered table-striped">
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Name</th>
                            <td class="column4">${nasabah.name}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">ID Card</th>
                            <td class="column4">${nasabah.idCard}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Address</th>
                            <td class="column4">${nasabah.address}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Birth Place
                            </th>
                            <td class="column4">${nasabah.birthPlace}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Birth Date
                            </th>
                            <td class="column4"><fmt:formatDate value="${nasabah.birthDate}"
                                                                pattern="E yyyy-MM-dd"/></td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Mother's Name</th>
                            <td class="column4">${nasabah.motherName}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Gender
                            </th>
                            <td class="column4">${nasabah.gender}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Phone Number
                            </th>
                            <td class="column4">${nasabah.phoneNumber}</td>
                        </tr>
                    </table>
                </div>
                  <div align="center">

    <div class="card-body table">
        <h3 class="card-title" align="center">Account List</h3>
        <table>
            <c:forEach var="account" items="${accounts}">
            <table class="table table-bordered table-striped">
                <tr class="table100-head">
                    <th class="column1">Account Number
                    </th>
                    <td class="column4">${account.accountNumber}</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1">Type
                    </th>
                    <td class="column4">${account.accountType} Account</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1">Balance
                    </th>
                    <td class="column4">
                        <fmt:formatNumber value="${account.balance}" type="currency"
                                                          currencySymbol="Rp. "/></td>
                </tr>
                </br>
            </table>
                </div>
                <div align="center">
                    <a class="btn btn-small btn-primary" id=myBtn value="Deposit" onclick="deposit()"
                       data="${accountNumber}">
                        <span class="fa fa-plus-circle">Deposit</span></a>
                    <a class="btn btn-small btn-primary" id=myBtn1 value="Withdraw" onclick="withdraw()"
                       data="${accountNumber}">
                        <span class="fa fa-plus-circle">Withdraw</span></a>
                    <a class="btn btn-small btn-primary" id=myBtn2 value="Transfer" onclick="transfer()"
                       data="${accountNumber}">
                        <span class="fa fa-plus-circle">Transfer</span></a>
                </div>
            </div>


                        </table>
                    </c:forEach>
                </table>
            </div>
        </div>

        </c:when>
        </c:choose>
        <!-- /.card -->
</div>
<!-- /.col -->
<!-- /.row -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->
<%@include file="footer.jsp" %>
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper --><!-- The Modal -->
<!-- The Modal -->

<!-- The Modal -->
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div align="center" class="modal-content" style="width: 50%;">
        <div class="modal-header">
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            <h2 align="center">Deposit</h2>
            <span class="close">&times;</span>
        </div>
        <form class="form-horizontal row-fluid" method="POST" action="save-deposit">
            <div class="form-group">
                <div class="control-group">
                    <input type="hidden" name="id" value="${deposit.customerId}"/>
                    <div class="control-group">
                        <label class="control-label">Account Number</label>
                        <input readonly id="norek" type="text" name="accountNumber" value="${account.accountNumber}">
                    </div>
                    <br>
                    <input type="hidden" name="activity" value="Deposit"/>
                    <div class="form-group">
                        <label class="control-label">Deposit Amount</label>
                        <input required placeholder="amount"
                               id="rupiah"
                               name="amount" value="${deposit.amount}" type="text">
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                </div>
                <br>
            </div>
            <%--            </div>--%>
        </form>
    </div>
</div>


<!-- The Modal -->
<div id="myModal1" class="modal1">
    <!-- Modal content -->
    <div align="center" class="modal-content" style="width: 50%;">
        <div class="modal-header">

            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
            <h2>Withdraw</h2>
            <span class="close1">&times;</span>

        </div>
        <form class="form-horizontal row-fluid" method="POST" action="save-withdraw">
            <div class="form-group">
                <div class="control-group">
                    <input type="hidden" name="id" value="${withdraw.customerId}"/>
                    <div class="control-group">
                        <label class="control-label">Account Number</label>
                        <input readonly id="norekb" type="text" name="accountNumber" value="${account.accountNumber}">

                    </div>
                    <br>
                    <input type="hidden" name="activity" value="Withdraw"/>
                    <div class="form-group">
                        <label class="control-label">Withdraw Amount</label>
                        <input required placeholder="Amount" id="rp"
                               type="text" name="amount" value="${withdraw.amount}">
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                </div>
                <br>
            </div>
            <%--            </div>--%>
        </form>
    </div>
</div>

<!-- The Modal -->
<div id="myModal2" class="modal2">
<!-- Modal content -->
<div align="center" class="modal-content" style="width: 50%;">
    <div class="modal-header">

        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
        <h2>Transfer</h2>
        <span class="close2">&times;</span>

    </div>
    <form class="form-horizontal row-fluid" method="POST" action="/save-transfer">
        <div class="form-group">
            <div class="control-group">
                <input type="hidden" name="id" value="${transfer.customerId}"/>
                <div class="control-group">
                    <label class="control-label">Account Number</label>
                    <input readonly id="norekc" type="text" name="accountNumber" value="${account.accountNumber}">

                </div>
                <br>
                <input type="hidden" name="activity" value="Transfer"/>
                <div class="form-group">
                    <label class="control-label">Transfer Amount</label>
                    <input required placeholder="Amount" id="idr" type="text" name="amount" value="${transfer.amount}">
                </div>
            </div>
            <div class="control-group">
                <label  class="control-label">to Account Number</label>
                <input placeholder="Recipient Account" required list="accountNumbers" name="recipientAccount" value="${transfer.recipientAccount}">
                <datalist id="accountNumbers">
                    <option value="">Account Number</option>
                    <%
                        try {
                            String Query = "select * from account";
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useSSL=false", "root", "");
                            Statement stm = conn.createStatement();
                            ResultSet rs = stm.executeQuery(Query);
                            while (rs.next()) {
                    %>
                    <option value="<%=rs.getInt("account_number")%>"><%=rs.getInt("account_number")%>
                    </option>
                    <%
                            }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                            out.println("Error" + ex.getMessage());
                        }
                    %>
                </datalist>
            </div>
            <br>
            <div class="form-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </div>
            <br>
        </div>
        <%--            </div>--%>
    </form>
</div>
</div>


<script>
    <%--<script>--%>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
        var e = document.getElementById("acclist");
        var inputnorek = document.getElementById("norek");
        var strUser = e.options[e.selectedIndex].value;
        inputnorek.value = strUser;
        // document.location.href = "/deposit?norek=" + strUser;
    };

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        };

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        };




    <%--</script>--%>

    <%--<script>--%>
    // Get the modal
    var modal1 = document.getElementById("myModal1");

    // Get the button that opens the modal
    var btn1 = document.getElementById("myBtn1");

    // Get the <span> element that closes the modal
    var span1 = document.getElementsByClassName("close1")[0];

    // When the user clicks the button, open the modal
    btn1.onclick = function () {
        modal1.style.display = "block";
        var e1 = document.getElementById("acclist");
        var inputnorek1 = document.getElementById("norekb");
        var strUser1 = e1.options[e1.selectedIndex].value;
        inputnorek1.value = strUser1;
        // document.location.href = "/deposit?norek=" + strUser;
    };

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event1) {
            if (event1.target == modal1) {
                modal1.style.display = "none";
            }
        };

        // When the user clicks on <span> (x), close the modal
        span1.onclick = function () {
            modal1.style.display = "none";
        };


    <%--<script>--%>
    // Get the modal
    var modal2 = document.getElementById("myModal2");

    // Get the button that opens the modal
    var btn2 = document.getElementById("myBtn2");

    // Get the <span> element that closes the modal
    var span2 = document.getElementsByClassName("close2")[0];

    // When the user clicks the button, open the modal
    btn2.onclick = function () {
        modal2.style.display = "block";
        var e2 = document.getElementById("acclist");
        var inputnorek2 = document.getElementById("norekc");
        var strUser2 = e2.options[e2.selectedIndex].value;
        inputnorek2.value = strUser2;
        // document.location.href = "/deposit?norek=" + strUser;
    };

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event2) {
            if (event2.target == modal2) {
                modal2.style.display = "none";
            }
        };

        // When the user clicks on <span> (x), close the modal
        span2.onclick = function () {
            modal2.style.display = "none";
        };



    <%--</script>--%>
    <%--<script>--%>

    function deposit() {
        var e = document.getElementById("acclist");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/deposit?accountNumber=" + strUser;
    }

    function withdraw() {
        var e = document.getElementById("acclist");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/withdraw?accountNumber=" + strUser;
    }

    function transfer() {
        var e = document.getElementById("acclist");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/transfer?accountNumber=" + strUser;
    }
</script>
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
            $('#myAlert', '#myAlert1').show('fade');

            setTimeout(function () {
                $('#myAlert', '#myAlert1').hide('fade');
            }, 9000);
        });

        $('#linkClose', '#linkClose1').click(function () {
            $('#myAlert', '#myAlert1').hide('fade');
        });
        // $('#myModal').on('show.bs.modal', function (e) {
        //     $(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.idnasabah);
        // });

        // $(document).on("click", ".open-deleteDialog", function() {
        //     var ida = $(this).data('idnasabah');
        //     $(".modal-body #id").val(ida);
        //     // As pointed out in comments,
        //     // it is superfluous to have to manually call the modal.
        //     $('#delete').modal('show');
        // });

        $('a[href="#myModal"]').on('click', function () {
            var id = $(this).attr('data-id');
            $('input[name="idnasabah"]').val(idnasabah);
        });


    });
</script>
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
        var e = document.getElementById("acclist");
        var inputnorek = document.getElementById("norek");
        var strUser = e.options[e.selectedIndex].value;
        inputnorek.value = strUser;
        // document.location.href = "/deposit?norek=" + strUser;
    };

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    };

    var rupiah = document.getElementById("rupiah");
    var rp = document.getElementById("rp");
    var idr = document.getElementById("idr");
    rupiah.addEventListener("keyup", function(e) {
        // tambahkan 'Rp.' pada saat form di ketik
        // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
        rupiah.value = formatRupiah(this.value, "Rp. ");
    });
    rp.addEventListener("keyup", function(e) {
        // tambahkan 'Rp.' pada saat form di ketik
        // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
        rp.value = formatRupiah(this.value, "Rp. ");
    });
    idr.addEventListener("keyup", function(e) {
        // tambahkan 'Rp.' pada saat form di ketik
        // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
        idr.value = formatRupiah(this.value, "Rp. ");
    });
    /* Fungsi formatRupiah */
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, "").toString(),
            split = number_string.split(","),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang di input sudah menjadi angka ribuan
        if (ribuan) {
            separator = sisa ? "." : "";
            rupiah += separator + ribuan.join(".");
        }

        rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
        return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
    }

</script>
<script >
    var currency = deposit.amount;
    var number = Number(currency.replace(/[^0-9\.]+/g,""));
    alert(number);
</script>
</div>
</body>
</html>

