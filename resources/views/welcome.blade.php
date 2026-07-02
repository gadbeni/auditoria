@extends('layouts.master')

@section('content')
  <!-- ======= Hero Section ======= -->
  @php
    $site_banner = Voyager::setting('site.banner', '');
  @endphp
  @php
    $total_informes = \App\Models\Publication::whereNull('deleted_at')->count();
    $total_years    = $years->count();
    $total_officials = \App\Models\Official::whereNull('deleted_at')->count();
  @endphp
  <section id="hero" class="d-flex align-items-center" style='background: url("{{ $site_banner ? Voyager::image($site_banner) : asset('images/site-banner.jpeg') }}") center center;'>
    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <span class="hero-kicker"><i class="bi bi-patch-check-fill"></i> Gobierno Autónomo Departamental del Beni</span>
      <h1>Bienvenido a <span>{{ setting('site.title') }}</span></h1>
      <h2>{{ setting('site.description') }}</h2>
      <div class="d-flex align-items-center flex-wrap">
        <a href="#featured-services" class="btn-get-started scrollto">Explorar informes</a>
        <a href="https://www.youtube.com/watch?v=LMZoMUov9LQ" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span class="text-white">Ver Video</span></a>
      </div>

      <div class="hero-stats">
        <div class="stat"><strong>{{ $total_informes }}</strong><span>Informes publicados</span></div>
        <div class="stat"><strong>{{ $total_years }}</strong><span>Gestiones disponibles</span></div>
        <div class="stat"><strong>{{ $total_officials }}</strong><span>Autoridades</span></div>
      </div>
    </div>
  </section><!-- End Hero -->

  <!-- ======= Accesos rápidos ======= -->
  <section class="access">
    <div class="container" data-aos="fade-up">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="access-card">
            <div class="access-icon"><i class="bi bi-file-earmark-text"></i></div>
            <h4>Informes por gestión</h4>
            <p>Consulta los informes de auditoría general organizados por año de gestión.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="access-card">
            <div class="access-icon"><i class="bi bi-search"></i></div>
            <h4>Búsqueda ágil</h4>
            <p>Encuentra rápidamente un informe por título, etiquetas o descripción.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="access-card">
            <div class="access-icon"><i class="bi bi-shield-check"></i></div>
            <h4>Transparencia</h4>
            <p>Acceso público y abierto a la documentación de la Unidad de Auditoría.</p>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Accesos -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services" style="margin-bottom: 100px">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-bottom: 40px">
          <h2>Informes</h2>
          <h3>Informes <span>Ejecutivos</span></h3>
          <p>Informes de auditoría general de todas las gestiones</p>
        </div>

        <div class="informes-panel">
          <div class="row g-4">
            <div class="col-md-3">
              <ul class="list-group year-rail">
                @foreach ($years->sortByDesc('year') as $item)
                  <li class="list-group-item d-flex justify-content-between align-items-center list-group-item-{{ $item->year }} @if($item->year == date('Y')) active-item @endif" data-year="{{ $item->year }}" style="cursor: pointer">
                    <a href="#" class="a-year" data-year="{{ $item->year }}">{{ $item->year }}</a>
                    <span class="badge rounded-pill">{{ $item->count }}</span>
                  </li>
                @endforeach
              </ul>
            </div>

            <div class="col-md-9">
              <div id="list-details" style="min-height: 200px"></div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials" style='background: url("{{ setting('site.background') ? Voyager::image(setting('site.background')) : asset('images/site-background.jpg') }}") center center/cover no-repeat;'>
      <div class="container" data-aos="zoom-in">

        <div class="section-title" style="margin-bottom: 44px">
          <h2 style="color:#9fe6b3">Autoridades</h2>
          <h3 style="color:#fff">Nuestras <span>Autoridades</span></h3>
        </div>

        <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            @foreach (App\Models\Official::where('deleted_at', NULL)->get() as $item)
            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="{{ $item->image ? asset('storage/'.$item->image) : asset('images/user.png') }}" class="testimonial-img" alt="">
                <h3>{{ $item->full_name }}</h3>
                <h4>{{ $item->job }}</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>{{ $item->description }}<i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>
            @endforeach

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section>

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>F.A.Q</h2>
          <h3>Preguntas <span>Frecuentes</span></h3>
          <p>Consulta las preguntas mas habituales realizadas por los visitantes de la página</p>
        </div>

        <div class="row justify-content-center">
          <div class="col-xl-10">
            <ul class="faq-list">
              @foreach (App\Models\FrequentQuestion::where('deleted_at', NULL)->get() as $item)
              <li>
                <div data-bs-toggle="collapse" class="collapsed question" href="#faq-{{ $item->id }}">{{ $item->title }} <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq-{{ $item->id }}" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    {!! $item->description !!}
                  </p>
                </div>
              </li>
              @endforeach

            </ul>
          </div>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

    @include('layouts.contact-us')

  </main><!-- End #main -->
@endsection

@section('css')
  <style>
    .active-item{
      color: #fff !important;
      background-color: #EAECEE !important;
    }
  </style>
@endsection

@section('script')
  <script>
    var year = new Date().getFullYear();
    $(document).ready(function(){
      getList();
      $('.card-item-link').click(function(){
        let slug = $(this).data('slug');
        window.location = "{{ url('') }}/"+slug;
      });

      $('.list-group-item').click(function(){
        year = $(this).data('year');
        getList();
        $('.list-group-item').removeClass('active-item');
        $(this).addClass('active-item');
      });
      $('.a-year').click(function(e){
        e.preventDefault();
        year = $(this).data('year');
        getList(year);
        $('.list-group-item').removeClass('active-item');
        $(`.list-group-item-${year}`).addClass('active-item');
      });
    });

    function getList(page = 1){
      let search = $('#form-search input[name="search"]').val();
      let url = "{{ url('') }}";
      $.get(`${url}/search/${year}/${search ? search : ''}?page=${page}`, function(res){
        $('#list-details').html(res);
      });
    }
  </script>
@endsection