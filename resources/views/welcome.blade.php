@extends('layouts.master')

@section('content')
  <!-- ======= Hero Section ======= -->
  @php
    $site_banner = Voyager::setting('site.banner', '');
  @endphp
  <section id="hero" class="d-flex align-items-center" style='background: url("{{ $site_banner ? Voyager::image($site_banner) : asset('images/site-banner.jpeg') }}") top left;'>
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1 class="text-white">Bienvenido a <span>{{ setting('site.title') }}</span></h1>
      <h2 class="text-white">{{ setting('site.description') }}</h2>
      <div class="d-flex">
        <a href="#featured-services" class="btn-get-started scrollto">Iniciar ahora</a>
        <a href="https://www.youtube.com/watch?v=LMZoMUov9LQ" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span class="text-white">Ver Video</span></a>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services" style="margin-bottom: 100px">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-bottom: 50px">
          <h2>Informes</h2>
          <h3>Informes <span>Ejecutivos</span></h3>
          <p>Informes de auditoría general de todas las gestiones</p>
        </div>

        <div class="row">
          <div class="col-md-3">
            <ul class="list-group">
              @foreach ($years->sortByDesc('year') as $item)
                <li class="list-group-item d-flex justify-content-between align-items-center list-group-item-{{ $item->year }} @if($item->year == date('Y')) active-item @endif" data-year="{{ $item->year }}" style="cursor: pointer">
                  <a href="#" class="a-year" data-year="{{ $item->year }}">{{ $item->year }}</a>
                  <span class="badge rounded-pill bg-success">{{ $item->count }}</span>
                </li>
              @endforeach
            </ul>
          </div>

          <div class="col-md-9">
            <div id="list-details"></div>
          </div>
        </div>
      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials" style='background: url("{{ setting('site.background') ? Voyager::image(setting('site.background')) : asset('images/site-background.jpg') }}") no-repeat;'>
      <div class="container" data-aos="zoom-in">

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