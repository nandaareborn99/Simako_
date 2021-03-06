<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SIMAKO ( Sistem Management Risiko PT Perkebunan Nusantara Group )</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{ asset('assets/adminlte/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- IonIcons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('assets/adminlte/dist/css/adminlte.min.css') }}">
    <!-- Toastr -->
    <link rel="stylesheet" href="{{ asset('assets/adminlte/plugins/toastr/toastr.min.css') }}">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>


</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->

<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">

    <div id="message" class="d-none" data-message="{{ Session::get('message') }}" data-type="{{ Session::get('type') }}">
    </div>

    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button" onclick="closeMenu()"><i class="fas fa-bars"></i></a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ auth()->user()->name }}</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownId">
                        <a class="dropdown-item" href="{{ url('logout') }}">Logout</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color: #424F63">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link bg-white text-center p-0 m-0" style="height: 56px">
                <img src="{{ asset('assets/images/logo.png') }}" alt="SIMAKO Logo" id="logo" style="height: 100%">
                <img src="{{ asset('assets/images/icon.png') }}" alt="SIMAKO Logo" id="icon" style="height: 100%; display: none">
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent nav-flat" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link {{ request()->is('admin/beranda') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-home"></i>
                                <p>Beranda</p>
                            </a>
                        </li>
                        <li class="nav-item {{ request()->is('admin/master*') ? 'menu-open' : '' }}">
                            <a href="#" class="nav-link {{ request()->is('admin/master*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-th-list"></i>
                                <p>
                                    Data Master
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ url('admin/master/divisi') }}" class="nav-link  {{ request()->is('admin/master/divisi*') ? 'active' : '' }}">
                                        <i class="fa fa-circle nav-icon" aria-hidden="true" style="font-size: 15px"></i>
                                        <p>Data Divisi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ url('admin/master/bagian') }}" class="nav-link {{ request()->is('admin/master/bagian*') ? 'active' : '' }}">
                                        <i class="fa fa-circle nav-icon" aria-hidden="true" style="font-size: 15px"></i>
                                        <p>Data Bagian</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ url('admin/master/katalog') }}" class="nav-link">
                                        <i class="fa fa-circle nav-icon" aria-hidden="true" style="font-size: 15px"></i>
                                        <p>Data Katalog</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ url('admin/master/bidang') }}" class="nav-link">
                                        <i class="fa fa-circle nav-icon" aria-hidden="true" style="font-size: 15px"></i>
                                        <p>Data Bidang</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/risiko') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-tasks"></i>
                                <p>Profil Risiko</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-tasks"></i>
                                <p>Monitoring Risiko</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                               <i class="nav-icon fa fa-check" aria-hidden="true"></i>
                                <p>Verifikasi</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-star" aria-hidden="true"></i>
                                <p>Finalisasi</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-comment" aria-hidden="true"></i>
                                <p>Sendback</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-window-maximize" aria-hidden="true"></i>
                                <p>Grafik Risiko</p>

                            </a>
                        </li>

                    {{-- <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link">
                    <i class="nav-icon fa fa-indent"></i>
                    <p>Monitoring Risiko</p>
                    </a>
                    </li> --}}
                        <li class="nav-item {{ request()->is('admin/laporan*') ? 'menu-open' : '' }}">
                            <a href="#" class="nav-link {{ request()->is('admin/laporan*') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-file-alt"></i>
                                <p>
                                    Laporan
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="{{ url('admin/laporan/risiko') }}" class="nav-link">
                                     <i class="fa fa-circle nav-icon" aria-hidden="true" style="font-size: 15px"></i>
                                        <p>Form Profil Risiko</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-cogs"></i>
                                <p>pengaturan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-book" aria-hidden="true"></i>
                                <p>Pedoman Manajemen Risiko</p>
                            </a>
                        </li><li class="nav-item">
                            <a href="{{ url('admin/beranda') }}" class="nav-link  {{ request()->is('admin/risiko*') ? 'active' : '' }}">
                                <i class="nav-icon fa fa-th-list"></i>
                                <p>Identifikasi Peluang (ISO 9001:2015) </p>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            2021 &copy;.Sistem Manajemen Resiko PT Perkebunan Nusantara Group.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="{{ asset('assets/adminlte/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset('assets/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- AdminLTE -->
    <script src="{{ asset('assets/adminlte/dist/js/adminlte.js') }}"></script>
    <!-- Toastr -->
    <script src="{{ asset('assets/adminlte/plugins/toastr/toastr.min.js') }}"></script>

    <script>
        var sidebar = true;

        function closeMenu() {
            if (sidebar) {
                $('#logo').hide();
                $('#icon').show();
                sidebar = false;
            } else {
                $('#logo').show();
                $('#icon').hide();
                sidebar = true;
            }
        }


        $(document).ready(function() {
            var message = $('#message').attr('data-message');
            var type = $('#message').attr('data-type');
            if (message) {
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": true,
                    "positionClass": "toast-bottom-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "2000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
                toastr[type](message);
            }
        })

    </script>

</body>

</html>
