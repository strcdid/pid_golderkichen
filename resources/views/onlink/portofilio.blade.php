    <!-- Portfolio Section -->
    <div id="portfolio-section" class="container-fluid no-padding portfolio-section portfolio-4-column">
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Our Latest Projects</h3>
          <p>See Golden Kitchen's projects</p>
        </div><!-- Section Header -->
        <!-- Portfolio Filters -->
        <ul id="filters" class="portfolio-categories no-left-padding sorting-menu">
          <li class=""><a data-filter="*" class="active" href="#">all projects</a></li>
          <li class=""><a data-filter=".gardening" class="" href="#">splash</a></li>
@php
$oo=DB::table('categories')->get();
@endphp
@foreach ($oo as $nu)
          <li class=""><a data-filter=".{{ $nu->slug }}" href="#">{{ $nu->name }}</a></li>
@endforeach
        </ul>
      </div>
@php
$pas=DB::table('portofolio')->inRandomOrder()->take(8)->get();
// dd($pas)
@endphp
<div class="container-fluid no-padding portfolio-list ">
@foreach ($pas as $nu)

        <div class="col-md-3 col-sm-4 col-xs-6 no-padding portfolio-box interior {!! $nu->category !!}">
          <img width="480" height="310" alt="Portfolio" src="{{ url('/lgarin211.github.io/'.$nu->banner) }}" style="height: 250px;object-fit: cover;">
          <div class="hover-detail">
            <div class="links">
              <a href="{{ url('/lgarin211.github.io/'.$nu->banner) }}" class="zoom" title="{{$nu->tittle}}"><i class="fa fa-search"></i></a>
              <a href="project-detail.php" title="Link"><i class="fa fa-link"></i></a>
            </div>
            <div class="project-title">
              <h3>{{ $nu->tittle }}</h3>
              <div class="categories-link">
                <p>
                {!! $nu->small_description !!}
                </p>
              </div>
            </div>
          </div>
        </div>
@endforeach
</div>
    </div>
    <!-- Portfolio Section /- -->
