<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i>
            </a>

            <a class="brand" href="/home">
                PJI Bank
            </a>

            <div class="nav-collapse collapse navbar-inverse-collapse">
                <ul class="nav pull-right">
                    <li class="nav-user dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="menu-icon icon-user"></i>
                            <%--                            <img src="images/user.png" class="nav-avatar" />--%>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Your Profile</a></li>
                            <li><a href="#">Edit Profile</a></li>
                            <li><a href="#">Account Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div>
    </div><!-- /navbar-inner -->
</div>
<!-- /navbar -->


<div class="wrapper">
    <div class="container">
        <div class="row">
            <div class="span3">
                <div class="sidebar">

                    <ul class="widget widget-menu unstyled">
                        <li class="active">
                            <a href="/home">
                                <i class="menu-icon icon-dashboard"></i>
                                Beranda
                            </a>
                        </li>

                        <li>
                            <a class="collapsed" data-toggle="collapse" href="#togglePages">
                                <i class="menu-icon icon-list-ul"></i>
                                <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
                                Transaksi
                            </a>
                            <ul id="togglePages" class="collapse unstyled">
                                <li>
                                    <a href="/deposit">
                                        <%--                                        <i class="icon-transfer"></i>--%>
                                        Setor
                                    </a>
                                </li>
                                <li>
                                    <a href="/withdraw">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Tarik
                                    </a>
                                </li>
                                <li>
                                    <a href="/transfer">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Transfer
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a class="collapsed" data-toggle="collapse" href="#togglePages2">
                                <i class="menu-icon icon-list-ul"></i>
                                <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
                                Nasabah
                            </a>
                            <ul id="togglePages2" class="collapse unstyled">
                                <li>
                                    <a href="/input-customer">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Tambah Data Nasabah
                                    </a>
                                </li>
                                <li>
                                    <a href="/input-account">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Tambah Data Akun
                                    </a>
                                </li>
                                <li>
                                    <a href="/customer-list">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Data Nasabah
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li>
                            <a class="collapsed" data-toggle="collapse" href="#togglePages3">
                                <i class="menu-icon icon-list-ul"></i>
                                <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
                                Laporan Transaksi
                            </a>
                            <ul id="togglePages3" class="collapse unstyled">
                                <li>
                                    <a href="/report-deposit">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Laporan Transaksi Setor
                                    </a>
                                </li>
                                <li>
                                    <a href="/report-withdraw">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Laporan Transaksi Tarik
                                    </a>
                                </li>
                                <li>
                                    <a href="/report-transfer">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Laporan Transaksi Transfer
                                    </a>
                                </li>
                                <li>
                                    <a href="/report-all">
                                        <%--                                        <i class="icon-inbox"></i>--%>
                                        Semua Laporan
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="/logout">
                                <i class="menu-icon icon-signout"></i>
                                Logout
                            </a>
                        </li>
                    </ul><!--/.widget-nav-->

                </div><!--/.sidebar-->
            </div><!--/.span3-->