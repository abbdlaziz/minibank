<%--
  Created by IntelliJ IDEA.
  User: anggun.agung
  Date: 6/12/2019
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <title>PJI Bank</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- ** Plugins Needed for the Project ** -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="static/customer/plugins/bootstrap/bootstrap.min.css">
    <!-- slick slider -->
    <link rel="stylesheet" href="static/customer/plugins/slick/slick.css">
    <!-- themefy-icon -->
    <link rel="stylesheet" href="static/customer/plugins/themify-icons/themify-icons.css">
    <!-- animation css -->
    <link rel="stylesheet" href="static/customer/plugins/animate/animate.css">
    <!-- aos -->
    <link rel="stylesheet" href="static/customer/plugins/aos/aos.css">
    <!-- venobox popup -->
    <link rel="stylesheet" href="static/customer/plugins/venobox/venobox.css">

    <!-- Main Stylesheet -->
    <link href="static/customer/css/style.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="static/customer/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="static/customer/images/favicon.ico" type="image/x-icon">

</head>
<body>


<%--<!-- header -->--%>
<%--<header class="fixed-top header">--%>
<%--    <!-- top header -->--%>
<%--    <div class="top-header py-2 bg-white">--%>
<%--        <div class="container">--%>
<%--            <div class="row no-gutters">--%>
<%--                <div class="col-lg-4 text-center text-lg-left">--%>
<%--                    <a class="text-color mr-3" href="callto:+443003030266"><strong>CALL</strong> +44 300 303 0266</a>--%>
<%--                    <ul class="list-inline d-inline">--%>
<%--                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-facebook"></i></a></li>--%>
<%--                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-twitter-alt"></i></a></li>--%>
<%--                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-linkedin"></i></a></li>--%>
<%--                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-instagram"></i></a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <!-- <div class="col-lg-8 text-center text-lg-right">--%>
<%--                  <ul class="list-inline">--%>
<%--                    <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="notice.html">notice</a></li>--%>
<%--                    <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="research.html">research</a></li>--%>
<%--                    <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="scholarship.html">SCHOLARSHIP</a></li>--%>
<%--                    <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#loginModal">login</a></li>--%>
<%--                    <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#signupModal">register</a></li>--%>
<%--                  </ul>--%>
<%--                </div> -->--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<!-- navbar -->
<div class="navigation w-100">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light p-0">
            <a class="navbar-brand" href="index.html"><img src="static/bank/logo.png" alt="logo"></a>
            <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
                    aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navigation">
                <ul class="navbar-nav ml-auto text-center">
                    <li class="nav-item @@home">
                        <a class="nav-link" href="/homecust">Home</a>
                    </li>
                    <li class="nav-item @@about">
                        <a class="nav-link" href="/customer-data">Info Account</a>
                    </li>
                    <li class="nav-item @@courses">
                        <a class="nav-link" href="/transfer-cust">Transfer</a>
                    </li>
                    <li class="nav-item @@courses">
                        <a class="nav-link" href="/logout-customer">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
</header>
<!-- /header -->
<!-- Modal -->
<%--<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">--%>
<%--    <div class="modal-dialog modal-lg" role="document">--%>
<%--        <div class="modal-content rounded-0 border-0 p-4">--%>
<%--            <div class="modal-header border-0">--%>
<%--                <h3>Register</h3>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- page title -->
<%--<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">--%>
<%--    <div class="container">--%>
<%--&lt;%&ndash;        <div class="row">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <div class="col-md-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <ul class="list-inline custom-breadcrumb">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <p class="text-lighten">Do you have other questions? Don't worry, there aren't any dumb questions. Just fill out the form below and we'll get back to you as soon as possible.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--    </div>--%>
<%--</section>--%>
<!-- /page title -->
<c:choose>
    <c:when test="${mode == 'MODE_HOME_CUST2'}">
        <!-- contact -->
        <section class="section bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <img class="img-fluid w-100 mb-4" src="static/bank/bank1.jpg" alt="about image">
                        <h2 class="section-title"></h2>
                        <p>"Always by Your Side"</p>

                        <p> Established since 1957, we are present in the Indonesian community and have grown to become
                            one of the largest banks in Indonesia. For almost 60 years we have never stopped offering a
                            variety of banking solutions that answer the financial needs of customers from various walks
                            of life.

                            Through a variety of quality and targeted products and services, PJI's financial solutions
                            support personal financial planning and the development of business customers. Supported by
                            the strength of inter-branch networks, the breadth of ATM networks, and other electronic
                            banking networks, anyone can enjoy the convenience and convenience of transactions offered
                            by PJI.

                            In accordance with the commitment "Always by Your Side", we will continue to strive to
                            maintain the trust and expectations of customers and stakeholders. Winning the trust to
                            provide the best solution for the financial needs of customers is an honor and pride for
                            PJI.

                            In accordance with the Decree of the Minister of Finance of the Republic of Indonesia
                            no.42855 / U.M.II dated March 14, 1957 concerning permits to conduct bank business</p>
                    </div>
                </div>
            </div>
        </section>
    </c:when>
    <c:when test="${mode == 'MODE_TRANSFERCUST'}">
        <!-- contact -->
        <section class="section bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="section-title">Transfer</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7 mb-4 mb-lg-0">
                        <form method="GET" action="save-transfercust">
                            <input class="form-control form-control-lg" type="hidden" name="id" value="${transfer.id}">
                            <input readonly type="text" class="form-control mb-3" name="accountNumber"
                                   value="${accountNumber}" placeholder="Account Sender">
                            <input type="hidden" class="form-control mb-3" name="activity"
                                   value="Transfer">
                            <input  type="text" class="form-control mb-3" name="recipientAccount"
                                   value="${transfer.recipientAccount}" placeholder="Account Receipient">
                            <input type="text" class="form-control mb-3" name="amount" value="${transfer.amount}"
                                   placeholder="Amount">
                            <!-- <input type="text" class="form-control mb-3" id="subject" name="subject" placeholder="Subject">
                            <textarea name="message" id="message" class="form-control mb-3" placeholder="Your Message"></textarea> -->
                            <button type="submit" class="btn btn-primary">SEND</button>
                            <div id="myAlert1" class="alert alert-success collapse">
                                <a id="linkClose1" href="#" class="close">&times;</a>
                                <strong>Sent!</strong>
                            </div>

                        </form>
                    </div>
                    <!--  <div class="col-lg-5">
                       <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit recusandae voluptates doloremque veniam temporibus porro culpa ipsa, nisi soluta minima saepe laboriosam debitis nesciunt. Dolore, labore. Accusamus nulla sed cum aliquid exercitationem debitis error harum porro maxime quo iusto aliquam dicta modi earum fugiat, vel possimus commodi, deleniti et veniam, fuga ipsum praesentium. Odit unde optio nulla ipsum quae obcaecati! Quod esse natus quibusdam asperiores quam vel, tempore itaque architecto ducimus expedita</p>
                       <a href="tel:+8802057843248" class="text-color h5 d-block">+880 20 5784 3248</a>
                       <a href="mailto:yourmail@email.com" class="mb-5 text-color h5 d-block">yourmail@email.com</a>
                       <p>71 Shelton Street<br>London WC2H 9JQ England</p>
                     </div> -->
                </div>
            </div>
        </section>
    </c:when>
    <c:when test="${mode == 'MODE_DATACUST'}">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Data Customer</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body table">
                <sql:setDataSource var="bank"
                                   url="jdbc:mysql://localhost/bank"
                                   driver="com.mysql.jdbc.Driver" user="root" password=""/>
                <sql:query var="sqlresult"
                           sql="select * from md_customer where id='${sessionScope.id}'"
                           dataSource="${bank}">
                </sql:query>
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Id Card</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Birth Place</th>
                        <th>Birth Date</th>
                        <th>Mother Name</th>
                        <th>Gender</th>
                    </tr>
                    </thead>
                    <tbody>
                            <% int i = 1;%>
                    <c:forEach var="nasabah" items="${nasabahs}">
                    <tr>
                        <td><%= i%><%i++;%></td>
                        <td>${nasabah.idCard}</td>
                        <td>${nasabah.name}</td>
                        <td>${nasabah.address}</td>
                        <td>${nasabah.phoneNumber}</td>
                        <td>${nasabah.birthPlace}</td>
                        <td>${nasabah.birthDate}</td>
                        <td>${nasabah.motherName}</td>
                        <td>${nasabah.gender}</td>
                    </tr>
                    </c:forEach>
                    </tfoot>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </c:when>

    <c:when test="${mode == 'MODE_VIEWDATACUST'}">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Customer Information</h3>
            </div>
            <!-- /.card-header -->

            <div class="card-body table">
                <table class="table table-bordered table-striped">
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Name</th>
                        <td class="column4">${sessionScope.name}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">ID Card</th>
                        <td class="column4">${sessionScope.idCard}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Address</th>
                        <td class="column4">${sessionScope.address}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Birth Place
                        </th>
                        <td class="column4">${sessionScope.birthPlace}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Birth Date
                        </th>
                        <td class="column4"><fmt:formatDate value="${sessionScope.birthDate}"
                                                            pattern="E yyyy-MM-dd"/></td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Mother's Name</th>
                        <td class="column4">${sessionScope.motherName}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Gender
                        </th>
                        <td class="column4">${sessionScope.gender}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Phone Number
                        </th>
                        <td class="column4">${sessionScope.phoneNumber}</td>
                    </tr>
                </table>

            </div>
        </div>
        <br>

        <div align="center">
            <div align="left"> &nbsp&nbsp&nbsp&nbsp&nbsp<a onclick="transfer()"
                                  data="${accountNumber}" class="btn btn-small btn-primary" value="Transfer">
                <span class="fa fa-plus-circle">Transaction Report</span></a>
            </div>
            <label>Choose Account</label>
            <br>
            <select id="acclist">
                <c:forEach var="account" items="${accounts}">
                    <option id="deposit" value="${account.accountNumber}">${account.accountNumber}</option>
                </c:forEach>
            </select>
            <br>
            <div>
                <a onclick="transfer()"
                   data="${accountNumber}" class="btn btn-small btn-primary" value="Transfer">
                    <span class="fa fa-plus-circle">Transfer</span></a>
            </div>

        </div>
        <div class="card-body table">
            <c:forEach var="account" items="${accounts}">
                <table class="table table-bordered table-striped">
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Account Number
                        </th>
                        <td class="column4">${account.accountNumber}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Type
                        </th>
                        <td class="column4">${account.accountType} Account</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Jumlah Saldo
                        </th>
                        <td class="column4"><fmt:formatNumber value="${account.balance}" type="currency"
                                                              currencySymbol="Rp. "/></td>
                    </tr>
                    </br>
                </table>
            </c:forEach>
        </div>
        </div>
    </c:when>
</c:choose>
<!-- /.card -->
</div>
<!-- /.col -->
<!-- /.row -->
</section>
<!-- /contact -->

<!-- gmap -->
<!-- <section class="section pt-0">
 Google Map -->
<!--  <div id="map_canvas" data-latitude="51.507351" data-longitude="-0.127758"></div> -->
<!-- </section> -->
<!-- /gmap -->

<!-- footer -->
<div class="footer bg-footer section border-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-8 mb-5 mb-lg-0">
                <!-- logo -->
                <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" src="static/bank/pji.jpeg"
                                                              alt="logo"></a>
                <ul class="list-unstyled">
                    <li class="mb-2">Jl. Boulevard Raya No.1, Klp. Gading Tim., Kec. Klp. Gading, Kota Jkt Utara, Daerah
                        Khusus Ibukota Jakarta 14240A
                    </li>
                    <li class="mb-2">Phone: +62 21 22452355</li>
                    <li class="mb-2">Fax: +62 21 24520984</li>
                    <li class="mb-2">www.pji-solutions.com</li>
                </ul>
            </div>
            <!-- company -->
            <%--            <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">--%>
            <%--                <h4 class="text-white mb-5">COMPANY</h4>--%>
            <%--                <ul class="list-unstyled">--%>
            <%--                    <li class="mb-3"><a class="text-color" href="/about">About Us</a></li>--%>
            <%--                    <li class="mb-3"><a class="text-color" href="/contact">Contact</a></li>--%>
            <%--                </ul>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>

<!-- copyright -->
<div class="copyright py-4 bg-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-7 text-sm-left text-center">
                <p class="mb-0">Copyright
                    <script>
                        var CurrentYear = new Date().getFullYear()
                        document.write(CurrentYear)
                    </script>
                    © PJI Bank <a href="https://themefisher.com">PJIBank.com</a></p>
                . All Rights Reserved.
            </div>
            <div class="col-sm-5 text-sm-right text-center">
                <ul class="list-inline">
                    <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i
                            class="ti-facebook text-primary"></i></a></li>
                    <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i
                            class="ti-twitter-alt text-primary"></i></a></li>
                    <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i
                            class="ti-instagram text-primary"></i></a></li>
                    <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i
                            class="ti-dribbble text-primary"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</footer>
<!-- /footer -->
<script>
    function transfer() {
        var e = document.getElementById("acclist");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/transfer-cust?accountNumber=" + strUser;
    }

    $('#btnSubmit1').click(function () {
        $('#myAlert1').show('fade');

        setTimeout(function () {
            $('#myAlert1').hide('fade');
        }, 2000);
    });

    $('#linkClose1').click(function () {
        $('#myAlert1').hide('fade');
    });
</script>
<!-- jQuery -->
<script src="static/customer/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="static/customer/plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="static/customer/plugins/slick/slick.min.js"></script>
<!-- aos -->
<script src="static/customer/plugins/aos/aos.js"></script>
<!-- venobox popup -->
<script src="static/customer/plugins/venobox/venobox.min.js"></script>
<!-- mixitup filter -->
<script src="static/customer/plugins/mixitup/mixitup.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="static/customer/plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="static/customer/js/script.js"></script>

</body>
</html>