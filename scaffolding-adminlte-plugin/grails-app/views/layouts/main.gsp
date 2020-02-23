<!doctype html>
<html lang="en" class="no-js">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="daterangepicker/daterangepicker.css"/>
    <asset:stylesheet src="select2/select2.css"/>
    <asset:stylesheet src="adminlte.css"/>
    <asset:stylesheet src="summernote/summernote-bs4.css"/>
    <asset:stylesheet src="icheck-bootstrap/icheck-bootstrap.css"/>
    <asset:stylesheet src="adminlte-plugin-all.css"/>
    <asset:stylesheet src="adminlte-plugin-main.css"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap/bootstrap.bundle.js" />
    <asset:javascript src="daterangepicker/moment.min.js" />
    <asset:javascript src="daterangepicker/daterangepicker.js" />
    <asset:javascript src="select2/select2.full.js" />
    <asset:javascript src="summernote/summernote-bs4.js" />
    <asset:javascript src="adminlte.js" />

    <script>
      $(document).ready(function() {
            $('select').select2();
            $('.summernote').summernote({
                height: 250
            });
      });
    </script>
    <g:layoutHead/>
  </head>
  <body class="sidebar-mini layout-fixed ${session.toggle}">
    <div class="wrapper">
      <!-- Navbar -->
      <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <g:render template="/layouts/main/navbar_toggle_and_logout" />
      </nav>

      <!-- Main Sidebar Container -->
      <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <g:link uri="/" class="brand-link">
          <asset:image
              src="grails.svg"
              alt="Logo"
              class="brand-image img-circle"
              style="opacity: .8" />
          <span class="brand-text font-weight-light">
              <g:meta name="info.app.name"/>
          </span>
        </g:link>

        <!-- Sidebar -->
        <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <g:render template="/layouts/main/user_data" />
          </div>

          <!-- Sidebar Menu -->
          <nav class="mt-2">
            <g:render template="/layouts/main/sidebar_menu" />
          </nav>
        </div>
      </aside>

      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1 class="m-0 text-dark">
                    <g:pageProperty name="page.title" />
                </h1>
              </div><!-- /.col -->
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <g:pageProperty name="page.breadcrumb" />
                </ol>
              </div><!-- /.col -->
            </div><!-- /.row -->
          </div><!-- /.container-fluid -->
        </section>
        <!-- /.content-header -->

        <section class="content">
          <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
              <div class="col-md-12">
                <g:render template="/layouts/main/flash_messages" />
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                  <g:layoutBody/>
              </div>
            </div>
          </div>
        </section>

      </div>
    </div>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap/bootstrap.bundle.js" />

    <asset:javascript src="daterangepicker/moment.min.js" />
    <asset:javascript src="daterangepicker/daterangepicker.js" />
    <asset:javascript src="select2/select2.full.js" />
    <asset:javascript src="summernote/summernote-bs4.js" />
    <asset:javascript src="adminlte.js" />
  </body>
</html>
