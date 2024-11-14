<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <title>{{ $title ?? 'Administrator' }} | {{ config('app.name') }}</title>
    @include('Parts.Meta')
    @include('Parts.Topscript')
</head>

<body>
    <!-- Begin page -->
    <div id="layout-wrapper">

        @include('Parts.Topbar')
        @livewire('parts.left-sidebar-admin')
        {{-- @include('Parts.leftsidebar') --}}
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">

                <!-- start page title -->
                @include('Parts.Pagetitle')
                <!-- end page title -->


                <div class="container-fluid">

                    <div class="page-content-wrapper app">

                        @yield('content')
                    </div>


                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            @include('Parts.Footer')
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->
    <!-- Right Sidebar -->
    @include('Parts.Rightsidebar')
    <!-- /Right-bar -->
    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>
    @include('Parts.Bottomscript')
    {{-- @livewire('admin.bottomscript') --}}
</body>

</html>
