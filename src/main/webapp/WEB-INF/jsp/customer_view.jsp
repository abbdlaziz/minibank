<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: anggun.agung
  Date: 6/10/2019
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
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


<!-- header -->
<header class="fixed-top header">
    <!-- top header -->
    <div class="top-header py-2 bg-white">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-4 text-center text-lg-left">
                    <a class="text-color mr-3" href="callto:+443003030266"><strong>CALL</strong> +44 300 303 0266</a>
                    <ul class="list-inline d-inline">
                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-facebook"></i></a></li>
                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-twitter-alt"></i></a></li>
                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-linkedin"></i></a></li>
                        <li class="list-inline-item mx-0"><a class="d-inline-block p-2 text-color" href="#"><i class="ti-instagram"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-8 text-center text-lg-right">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#loginModal">login</a></li>
<%--                        <li class="list-inline-item"><a class="text-uppercase text-color p-sm-2 py-2 px-0 d-inline-block" href="#" data-toggle="modal" data-target="#signupModal">register</a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- navbar -->
    <div class="navigation w-100">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light p-0">
                <a class="navbar-brand" href="/customer-view"><img src="static/bank/logo.png" alt="logo"></a>
                <button class="navbar-toggler rounded-0" type="button" data-toggle="collapse" data-target="#navigation"
                        aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navigation">
                    <ul class="navbar-nav ml-auto text-center">
                        <li class="nav-item active">
                            <a class="nav-link" href="/customer-view">Home</a>
                        </li>
                        <li class="nav-item active @@about">
                            <a class="nav-link" href="/about">About</a>
                        </li>
                        <li class="nav-item active @@contact">
                            <a class="nav-link" href="/contact">CONTACT</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>
<!-- /header -->
<!-- Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Register</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="login">
                    <form action="#" class="row">
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupPhone" name="signupPhone" placeholder="Phone">
                        </div>
                        <div class="col-12">
                            <input type="text" class="form-control mb-3" id="signupName" name="signupName" placeholder="Name">
                        </div>
                        <div class="col-12">
                            <input type="email" class="form-control mb-3" id="signupEmail" name="signupEmail" placeholder="Email">
                        </div>
                        <div class="col-12">
                            <input type="password" class="form-control mb-3" id="signupPassword" name="signupPassword" placeholder="Password">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">SIGN UP</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content rounded-0 border-0 p-4">
            <div class="modal-header border-0">
                <h3>Login</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/login-customers" method="POST" class="row">
                    <div class="col-12">
                        <input type="text" class="form-control mb-3" value="${nasabah.username}" id="loginName" name="username" placeholder="Name">
                    </div>
                    <div class="col-12">
                        <input type="password" value="${nasabah.password}"class="form-control mb-3" id="loginPassword" name="password" placeholder="Password">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${mode == 'MODE_HOME_CUST'}">
<!-- hero slider -->
<section class="hero-section overlay bg-cover" data-background="static/customer/images/banner/banner-1.jpg">
    <div class="container">
        <div class="hero-slider">
            <!-- slider item -->
            <div class="hero-slider-item">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-white" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">Your bright future is our mission</h1>
                        <p class="text-muted mb-4" data-animation-out="fadeOutRight" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".4">we are present in the Indonesian community and have grown to become one of the largest banks in Indonesia.</p>
                    </div>
                </div>
            </div>
            <!-- slider item -->
            <div class="hero-slider-item">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-white" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">Your bright future is our mission</h1>
                        <p class="text-muted mb-4" data-animation-out="fadeOutUp" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".4">Supported by the strength of inter-branch networks, the breadth of ATM networks, and other electronic banking networks, anyone can enjoy the convenience and convenience of transactions offered by PJI.</p>
                    </div>
                </div>
            </div>
            <!-- slider item -->
            <div class="hero-slider-item">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-white" data-animation-out="fadeOutDown" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">Your bright future is our mission</h1>
                        <p class="text-muted mb-4" data-animation-out="fadeOutDown" data-delay-out="5" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".4">Comfort, security and reliability are our top priorities when providing financial services to all PJI customers.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /hero slider -->

<!-- banner-feature -->
<section class="bg-gray">
    <div class="container-fluid p-0">
        <div class="row no-gutters">
            <div class="col-xl-4 col-lg-5 align-self-end">
                <img class="img-fluid w-100" src="static/bank/business.jpg" alt="banner-feature">
            </div>
            <div class="col-xl-8 col-lg-7">
                <div class="row feature-blocks bg-gray justify-content-between">
                    <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
                        <i class="ti-book mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
                        <h3 class="mb-xl-4 mb-lg-3 mb-4">TRUST</h3>
                        <p>Build good faith and thought among stakeholders in sincere and open relationships based on reliability.</p>
                    </div>
                    <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
                        <i class="ti-blackboard mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
                        <h3 class="mb-xl-4 mb-lg-3 mb-4">INTEGRITY</h3>
                        <p>Every moment of thinking, saying and behaving admirably, maintaining dignity and upholding the professional code of ethics.</p>
                    </div>
                    <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
                        <i class="ti-agenda mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
                        <h3 class="mb-xl-4 mb-lg-3 mb-4">PROFESIONALISM</h3>
                        <p>Committed to work thoroughly and accurately on the basis of the best competence with full responsibility.</p>
                    </div>
                    <div class="col-sm-6 col-xl-5 mb-xl-5 mb-lg-3 mb-4 text-center text-sm-left">
                        <i class="ti-write mb-xl-4 mb-lg-3 mb-4 feature-icon"></i>
                        <h3 class="mb-xl-4 mb-lg-3 mb-4">CUSTOMER FOCUS</h3>
                        <p>Always make customers the main partners that are mutually beneficial to grow sustainably.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /banner-feature -->
<!-- courses -->
<section class="section-sm">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="d-flex align-items-center section-title justify-content-between">
                    <h2 class="mb-0 text-nowrap mr-3">Our Product</h2>
                    <div class="border-top w-100 border-primary d-none d-sm-block"></div>
                    <div>
                        <a href="courses.html" class="btn btn-sm btn-primary-outline ml-sm-3 d-none d-sm-block">see all</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- course list -->
        <div class="row justify-content-center">
            <!-- course item -->
            <div class="col-lg-4 col-sm-6 mb-5">
                <div class="card p-0 border-primary rounded-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/bank/saving.png" alt="course thumb">
                    <div class="card-body">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                            <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                        </ul>
                        <a href="course-single.html">
                            <h4 class="card-title">Savings</h4>
                        </a>
                        <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna.</p>
                        <a href="course-single.html" class="btn btn-primary btn-sm">Apply now</a>
                    </div>
                </div>
            </div>
            <!-- course item -->
            <div class="col-lg-4 col-sm-6 mb-5">
                <div class="card p-0 border-primary rounded-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/bank/deposit.jpg" alt="course thumb">
                    <div class="card-body">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                            <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                        </ul>
                        <a href="">
                            <h4 class="card-title">Investation</h4>
                        </a>
                        <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna.</p>
                        <a href="course-single.html" class="btn btn-primary btn-sm">Apply now</a>
                    </div>
                </div>
            </div>
            <!-- course item -->
            <div class="col-lg-4 col-sm-6 mb-5">
                <div class="card p-0 border-primary rounded-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/bank/banking.jpg" alt="course thumb">
                    <div class="card-body">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><i class="ti-calendar mr-1 text-color"></i>02-14-2018</li>
                            <li class="list-inline-item"><a class="text-color" href="#">Humanities</a></li>
                        </ul>
                        <a href="">
                            <h4 class="card-title">I-Banking</h4>
                        </a>
                        <p class="card-text mb-4"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna.</p>
                        <a href="course-single.html" class="btn btn-primary btn-sm">Apply now</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /course list -->
        <!-- mobile see all button -->
        <div class="row">
            <div class="col-12 text-center">
                <a href="courses.html" class="btn btn-sm btn-primary-outline d-sm-none d-inline-block">sell all</a>
            </div>
        </div>
    </div>
</section>
<!-- /courses -->

<!-- cta -->
<section class="section bg-primary">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h6 class="text-white font-secondary mb-0">Click to Login the I-Banking</h6>
                <h2 class="section-title text-white">Internet Banking</h2>
                <a href="#" data-toggle="modal" data-target="#loginModal" class="btn btn-secondary">Login</a>
            </div>
        </div>
    </div>
</section>
<!-- /cta -->

<!-- success story -->
<section class="section bg-cover" data-background="images/backgrounds/success-story.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-sm-4 position-relative success-video">
                <a class="play-btn venobox" href="https://youtu.be/nA1Aqp0sPQo" data-vbtype="video">
                    <i class="ti-control-play"></i>
                </a>
            </div>
            <div class="col-lg-6 col-sm-8">
                <div class="bg-white p-5">
                    <h2 class="section-title">Our Corporate Social Responsibility</h2>
                    <div class="col-lg-6 col-sm-8">
                            <p>In line with PJI’s core values of caring for the well-being of its staff, the community and the environment, PJI recently formalised its corporate social responsibility (CSR) programme. Over the years,PJI employees have been giving their time, skills, and money to support various causes. Regardless of the extent and magnitude of giving, every little contribution matters.

                                PJI is dedicated to contributing to the well-being of the community and the environment through our efforts in shaping a sustainable and friendly built environment.</p>
                    </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- /success story -->

<!-- blog -->
<section class="section pt-0">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="section-title">Latest News</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <!-- blog post -->
            <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/customer/images/blog/post-1.jpg" alt="Post thumb">
                    <div class="card-body">
                        <!-- post meta -->
                        <ul class="list-inline mb-3">
                            <!-- post date -->
                            <li class="list-inline-item mr-3 ml-0">June 5, 2019</li>
                            <!-- author -->
                            <li class="list-inline-item mr-3 ml-0">By Jonathon</li>
                        </ul>
                        <a href="">
                            <h4 class="card-title">Buka Rekening Online Sekarang dan Dapatkan Tiket Masuk Big Bang Surabaya</h4>
                        </a>
<%--                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>--%>
<%--                        <a href="blog-single.html" class="btn btn-primary btn-sm">read more</a>--%>
                    </div>
                </div>
            </article>
            <!-- blog post -->
            <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/customer/images/blog/post-2.jpg" alt="Post thumb">
                    <div class="card-body">
                        <!-- post meta -->
                        <ul class="list-inline mb-3">
                            <!-- post date -->
                            <li class="list-inline-item mr-3 ml-0">May 20, 2019</li>
                            <!-- author -->
                            <li class="list-inline-item mr-3 ml-0">By Jonathon Drew</li>
                        </ul>
                        <a href="">
                            <h4 class="card-title">Tunaikan Zakat Dengan Scan QR Code Baznas di PJI mobile</h4>
                        </a>
<%--                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>--%>
<%--                        <a href="blog-single.html" class="btn btn-primary btn-sm">read more</a>--%>
                    </div>
                </div>
            </article>
            <!-- blog post -->
            <article class="col-lg-4 col-sm-6 mb-5 mb-lg-0">
                <div class="card rounded-0 border-bottom border-primary border-top-0 border-left-0 border-right-0 hover-shadow">
                    <img class="card-img-top rounded-0" src="static/customer/images/blog/post-3.jpg" alt="Post thumb">
                    <div class="card-body">
                        <!-- post meta -->
                        <ul class="list-inline mb-3">
                            <!-- post date -->
                            <li class="list-inline-item mr-3 ml-0">June 1, 2019</li>
                            <!-- author -->
                            <li class="list-inline-item mr-3 ml-0">By Alex Pitt</li>
                        </ul>
                        <a href="">
                            <h4 class="card-title">Libur Lebaran Masih Bisa Transaksi Keuangan bersama PJI</h4>
                        </a>
<%--                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicin</p>--%>
<%--                        <a href="blog-single.html" class="btn btn-primary btn-sm">read more</a>--%>
                    </div>
                </div>
            </article>
        </div>
    </div>
</section>

        <!-- /blog -->
    </c:when>

    <c:when test="${mode == 'MODE_ABOUT'}">
        <!-- page title -->
        <section class="page-title-section overlay" data-background="static/customer/images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">About Us</a></li>
                            <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
                        </ul>
                        <p class="text-lighten"> Established since 1957, we are present in the Indonesian community and have grown to become one of the largest banks in Indonesia.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- about -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                    <img class="img-fluid w-100 mb-4" src="static/bank/bank1.jpg" alt="about image">
                    <h2 class="section-title">ABOUT OUR JOURNY</h2>
                    <p>"Always by Your Side"</p>

                    <p>  Established since 1957, we are present in the Indonesian community and have grown to become one of the largest banks in Indonesia. For almost 60 years we have never stopped offering a variety of banking solutions that answer the financial needs of customers from various walks of life.

                        Through a variety of quality and targeted products and services, PJI's financial solutions support personal financial planning and the development of business customers. Supported by the strength of inter-branch networks, the breadth of ATM networks, and other electronic banking networks, anyone can enjoy the convenience and convenience of transactions offered by PJI.

                        In accordance with the commitment "Always by Your Side", we will continue to strive to maintain the trust and expectations of customers and stakeholders. Winning the trust to provide the best solution for the financial needs of customers is an honor and pride for PJI.

                        In accordance with the Decree of the Minister of Finance of the Republic of Indonesia no.42855 / U.M.II dated March 14, 1957 concerning permits to conduct bank business</p>
                        <h2 class="section-title">VISION AND MISSION</h2>
                        <p> Comfort, security and reliability are our top priorities when providing financial services to all PJI customers. We are determined to continue to be leaders in the national banking industry that contribute greatly to the Indonesian economy.</p>

                    </div>
                </div>
            </div>
        </section>
        <!-- /about -->

        <!-- funfacts -->
        <section class="section-sm bg-primary">
            <div class="container">
                <div class="row">
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="60">0</h2>
                            <h5 class="text-white">TEACHERS</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="50">0</h2>
                            <h5 class="text-white">COURSES</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="1000000">0</h2>
                            <h5 class="text-white">CUSTOMERS</h5>
                        </div>
                    </div>
                    <!-- funfacts item -->
                    <div class="col-md-3 col-sm-6 mb-4 mb-md-0">
                        <div class="text-center">
                            <h2 class="count text-white" data-count="3737">0</h2>
                            <h5 class="text-white">SATISFIED CLIENT</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /funfacts -->

        <!-- success story -->
        <section class="section bg-cover" data-background="images/backgrounds/success-story.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-4 position-relative success-video">
                        <a class="play-btn venobox" href="https://youtu.be/nA1Aqp0sPQo" data-vbtype="video">
                            <i class="ti-control-play"></i>
                        </a>
                    </div>
                    <div class="col-lg-6 col-sm-8">
                        <div class="bg-white p-5">
                            <h2 class="section-title">Our Corporate Social Responsibility</h2>
                            <p>In line with PJI’s core values of caring for the well-being of its staff, the community and the environment, PJI recently formalised its corporate social responsibility (CSR) programme. Over the years,PJI employees have been giving their time, skills, and money to support various causes. Regardless of the extent and magnitude of giving, every little contribution matters.

                                PJI is dedicated to contributing to the well-being of the community and the environment through our efforts in shaping a sustainable and friendly built environment.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /success story -->

    </c:when>


    <c:when test="${mode == 'MODE_CONTACT'}">
        <!-- page title -->
        <section class="page-title-section overlay" data-background="static/customer/images/backgrounds/page-title.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <ul class="list-inline custom-breadcrumb">
                            <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>
                            <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
                        </ul>
                        <p class="text-lighten"> Established since 1957, we are present in the Indonesian community and have grown to become one of the largest banks in Indonesia.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /page title -->

        <!-- about -->
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <img class="img-fluid w-100 mb-4" src="static/bank/contact.png" alt="about image">
                        <h2 class="section-title">CONTACT US</h2>
                        <p> Jl. Boulevard Raya No.1, Klp. Gading Tim., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240A</p>
                        <p>Phone: +62 21 22452355</p>
                        <p>Fax: +62 21 24520984</p>
                        <p></p>www.pji-solutions.com</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- /about -->
        <!-- /success story -->
    </c:when>
</c:choose>
<!-- footer -->
<footer>
    <!-- newsletter -->
    <div class="newsletter">
        <div class="container">
            <div class="row">
                <div class="col-md-9 ml-auto bg-primary py-5 newsletter-block">
                    <h3 class="text-white">Subscribe Now</h3>
                    <form action="#">
                        <div class="input-wrapper">
                            <input type="email" class="form-control border-0" id="newsletter" name="newsletter" placeholder="Enter Your Email...">
                            <button type="submit" value="send" class="btn btn-primary">Join</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- footer content -->
    <div class="footer bg-footer section border-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-8 mb-5 mb-lg-0">
                    <!-- logo -->
                    <a class="logo-footer" href="index.html"><img class="img-fluid mb-4" src="static/bank/pji.jpeg" alt="logo"></a>
                    <ul class="list-unstyled">
                        <li class="mb-2">Jl. Boulevard Raya No.1, Klp. Gading Tim., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240A</li>
                        <li class="mb-2">Phone: +62 21 22452355</li>
                        <li class="mb-2">Fax: +62 21 24520984</li>
                        <li class="mb-2">www.pji-solutions.com</li>
                    </ul>
                </div>
                <!-- company -->
                <div class="col-lg-2 col-md-3 col-sm-4 col-6 mb-5 mb-md-0">
                    <h4 class="text-white mb-5">COMPANY</h4>
                    <ul class="list-unstyled">
                        <li class="mb-3"><a class="text-color" href="/about">About Us</a></li>
                        <li class="mb-3"><a class="text-color" href="/contact">Contact</a></li>
                    </ul>
                </div>
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
                        © PJI Bank <a href="https://themefisher.com">PJIBank.com</a></p> . All Rights Reserved.
                </div>
                <div class="col-sm-5 text-sm-right text-center">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i class="ti-facebook text-primary"></i></a></li>
                        <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i class="ti-twitter-alt text-primary"></i></a></li>
                        <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i class="ti-instagram text-primary"></i></a></li>
                        <li class="list-inline-item"><a class="d-inline-block p-2" href="http://www.jatis.com/"><i class="ti-dribbble text-primary"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /footer -->

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
