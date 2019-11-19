<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
            </li>
        </ul>

    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4" style="width: 300px">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
            <img src="static/bank/gundar.png"
                 class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">Bank Gunadarma</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="https://cdn1.iconfinder.com/data/icons/mix-color-4/502/Untitled-1-512.png" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">Teller</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" style="margin-right:20px">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="/home" class="nav-link">
                            <i class="nav-icon fa fa-dashboard"></i>
                            <p style="color: #dee2e6;">
                                Home
                                <span class="right badge badge-danger"></span>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-list-alt"></i>
                            <p style="color: #dee2e6;">
                               Data Customer
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="/customer-list" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Customer List</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/input-customer" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Create Data Customer</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fa fa-list-alt"></i>
                            <p style="color: #dee2e6;">
                                Report Transaction
                                <i class="right fa fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="/report-deposit" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Summary Deposit</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/report-withdraw" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Summary Withdraw</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/report-transfer" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Summary Transfer</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/report-all" class="nav-link">
                                    <i class="fa fa-circle-o nav-icon"></i>
                                    <p style="color: #dee2e6;">Report All</p>
                                </a>
                            </li>
                        </ul>
                    <li class="nav-item">
                        <a href="/logout" class="nav-link">
                            <i class="nav-icon fa fa-sign-out"></i>
                            <p style="color: #dee2e6;">
                                Logout
                                <span class="right badge badge-danger"></span>
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>
