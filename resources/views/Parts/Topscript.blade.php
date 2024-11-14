<!-- App favicon -->
<link rel="shortcut icon" href="{{ url('./assets/images/favicon.ico') }}">

<!-- plugin css -->
<link href="{{ url('./assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}"
    rel="stylesheet" type="text/css" />

<!-- Bootstrap Css -->
<link href="{{ url('./assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
<!-- Icons Css -->
<link href="{{ url('./assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="{{ url('./assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />

@if (Route::is('admin.jabatan') ||
        Route::is('admin.pegawai') ||
        Route::is('admin.pengguna') ||
        Route::is('admin.perusahaan'))
    <!-- DataTables -->
    <link href="{{ url('./assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}"
        rel="stylesheet" type="text/css" />
    <link href="{{ url('./assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css') }}"
        rel="stylesheet" type="text/css" />
@endif
