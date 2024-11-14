    <!-- JAVASCRIPT -->
    <script src="{{ asset('/assets/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('/assets/libs/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('/assets/libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('/assets/libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('/assets/libs/node-waves/waves.min.js') }}"></script>
    @if (Route::is('admin.pegawai'))
        @include('Admin.Parts.PegawaiDetailModal')
        @include('Admin.Parts.PegawaiEditModal')
        @include('Admin.Parts.PegawaiTableScript')
    @endif
    @if (Route::is('admin.jabatan') ||
            Route::is('admin.pegawai') ||
            Route::is('admin.kantor') ||
            Route::is('admin.pengguna') ||
            Route::is('admin.perusahaan'))
        <!-- DataTables -->
        <!-- Required datatable js -->
        <script src="{{ asset('/assets/libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
        <!-- Buttons examples -->
        <script src="{{ asset('/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/jszip/jszip.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/pdfmake/build/pdfmake.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/pdfmake/build/vfs_fonts.js') }}"></script>
        <script src="{{ asset('/assets/libs/datatables.net-buttons/js/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/datatables.net-buttons/js/buttons.print.min.js') }}"></script>
        <script src="{{ asset('/assets/libs/datatables.net-buttons/js/buttons.colVis.min.js') }}"></script>
        <!-- Datatable init js -->
        <script src="{{ asset('/assets/js/pages/datatables.init.js') }}"></script>
    @endif

    <!-- apexcharts -->
    {{-- <script src="{{ asset('/assets/libs/apexcharts/apexcharts.min.js') }}"></script> --}}

    <!-- Plugins js-->
    <script src="{{ asset('/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js') }}"></script>
    <script src="{{ asset('/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js') }}">
    </script>
    {{-- <script src="{{ asset('assets/js/pages/form-validation.init.js') }}"></script> --}}
    {{-- <script src="{{ asset('/assets/js/pages/dashboard.init.js') }}"></script> --}}


    <script src="{{ asset('/assets/js/app.js') }}"></script>
    <script src="{{ asset('/assets/js/custom.js') }}"></script>
