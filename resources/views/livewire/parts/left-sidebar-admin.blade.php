        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <div data-simplebar class="h-100">

                <div class="user-sidebar text-center">
                    <div class="dropdown">
                        <div class="user-img">
                            <img src="{{ url('./assets/images/users/avatar-3.jpg') }}" alt=""
                                class="rounded-circle">
                            <span class="avatar-online bg-success"></span>
                        </div>
                        <div class="user-info">
                            <h5 class="mt-3 font-size-16 text-white">{{ Auth::user()->name ?? 'User' }}</h5>
                            <span class="font-size-13 text-white-50">{{ session('user_email') ?? 'User@email.com' }}</span>
                        </div>
                    </div>
                </div>

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li class="menu-title">Menu</li>

                        <li>
                            <a href="{{ route('admin.dashboard') }}" class="waves-effect">
                                <i class="dripicons-home"></i><span
                                    class="badge rounded-pill bg-info float-end">3</span>
                                <span>Dashboard</span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="dripicons-network-3"></i>
                                <span>Master Data</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                {{-- <li><a href="{{ route('admin.jabatan') }}">Data Jabatan</a></li> --}}
                                {{-- <li><a href="{{ route('admin.kantor') }}">Data Kantor</a></li> --}}
                                {{-- <li><a href="{{ route('admin.pegawai') }}">Data Pegawai</a></li> --}}
                                <li><a href="{{ route('admin.pengguna') }}">Data Pengguna</a></li>
                                {{-- <li><a href="{{ route('admin.perusahaan') }}">Data Perusahaan</a> --}}
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="dripicons-mail"></i>
                                <span>Laporan</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                {{-- <li><a href="{{ route('admin.laporan') }}">Semua Laporan</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Kepatuhan</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Audit Internal</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Adm Kredit</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Pembukuan</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Teller</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Operasional</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. Marketing</a></li>
                                <li><a href="{{ route('admin.laporan') }}">Lap. IT</a></li> --}}
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->
