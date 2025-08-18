<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>@yield('page_title', 'Bienvenido a Auditoría ')</title>
    <meta name="description" content="@yield('page_description', setting('site.description'))">
    <meta name="keywords" content="beni, auditoria, bolivia, gobernacion, informes">

    <meta property="og:url"           content="@yield('page_url', url(''))" />
    <meta property="og:type"          content="blog" />
    <meta property="og:title"         content="@yield('page_title', 'Bienvenido a Auditoría oria')" />
    <meta property="og:description"   content="@yield('page_description', setting('site.description'))" />
    <meta property="og:image"         content="@yield('page_background', asset('images/site-banner.jpeg'))" />

    <!-- Favicons -->
    <?php $admin_favicon = Voyager::setting('admin.icon_image', ''); ?>
    @if($admin_favicon == '')
        <link rel="shortcut icon" href="{{ asset('images/icon.png') }}" type="image/png">
    @else
        <link rel="shortcut icon" href="{{ Voyager::image($admin_favicon) }}" type="image/png">
    @endif
    {{-- <link href="lp/assets/img/favicon.png" rel="icon">
    <link href="lp/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> --}}

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('lp/assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('lp/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lp/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('lp/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lp/assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lp/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('lp/assets/css/style.css') }}" rel="stylesheet">

    <!-- =======================================================
    * Template Name: BizLand - v3.3.0
    * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>{{ setting('site.phone') }}</span></i>
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="{{ setting('social.twitter') }}" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="{{ setting('social.facebook') }}" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="{{ setting('social.instagram') }}" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="{{ setting('social.youtube') }}" class="youtube"><i class="bi bi-youtube"></i></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

    <div class="logo">
        <!-- Uncomment below if you prefer to use an text logo -->
        <!-- <h1><a href="index.html">NewBiz</a></h1> -->
        <a href="https://beni.gob.bo">
          <?php $logo = Voyager::setting('site.logo', ''); ?>
          @if($logo == '')
            <img src="{{ asset('images/icon-alt.png') }}" alt="GADBENI" class="img-fluid">
          @else
            <img src="{{ Voyager::image($logo) }}" alt="GADBENI" class="img-fluid">
          @endif
        </a>
    </div>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a href="{{ url('') }}" class="nav-link scrollto active">Auditoría</a></li>
        <li><a href="https://siscor.ml" class="nav-link">SISCOR</a></li>
        <li><a href="#" class="nav-link">Turismo</a></li>
        <li><a href="#" class="nav-link">Agenda</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  @yield('content')

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Recibe novedades</h4>
            <p>Ingresa tu Email y recibe novedades acerca del Gobierno Autónomo del Beni</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscrirse">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <a href="#">
              <?php $logo = Voyager::setting('site.logo', ''); ?>
              @if($logo == '')
                <img src="{{ asset('images/icon-alt.png') }}" alt="GADBENI" style="height: 60px" class="img-fluid">
              @else
                <img src="{{ Voyager::image($logo) }}" alt="GADBENI" style="height: 60px" class="img-fluid">
              @endif
            </a>
            <p>
              {{ setting('site.address') }} <br>
              Santísima Trinidad - Beni - Bolivia <br><br>
              <strong>Telefono/Celular:</strong> {{ setting('site.phone') }}<br>
              <strong>Email:</strong> {{ setting('site.email') }}<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>GADBENI</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="https://beni.gob.bo">Inicio</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://siscor.ml">SISCOR</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Turismo</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Agenda</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Enlaces</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Proyectos</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Buzón de sugerencias</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Trabaja con nosotros</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Nuestras redes sociales</h4>
            <p>Echa un vistazo a nuestras redes sociales</p>
            <div class="social-links mt-3">
              <a href="{{ setting('social.twitter') }}" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="{{ setting('social.facebook') }}" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="{{ setting('social.instagram') }}" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="{{ setting('social.youtube') }}" class="youtube"><i class="bx bxl-youtube"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <a href="https://beni.gob.bo" target="_blank"><strong><span>GADBENI</span></strong></a>. Todos los derechos reservados
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
        Desarrollado por <a href="#">Unidad de Desarrollo de Software</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('lp/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/php-email-form/validate.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('lp/assets/vendor/waypoints/noframework.waypoints.js') }}"></script>

  <!-- Template Main JS File -->
  <script src="lp/assets/js/main.js"></script>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  @yield('css')

  @yield('script')

</body>

</html>