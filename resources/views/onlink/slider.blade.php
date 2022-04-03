    <!-- Slider Section -->
    <div id="slider-section" class="slider-section container-fluid no-padding">
      <div id="photo_slider" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#photo_slider" data-slide-to="0" class="active"></li>
          <li data-target="#photo_slider" data-slide-to="1"></li>
          <li data-target="#photo_slider" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
@php
$slider=DB::table('slider')->inRandomOrder()->get();
@endphp          
@foreach ($slider as $key=>$nu)
          <div class="item @if($key==0) active @endif">
            <img src="{!! url('/lgarin211.github.io/'.$nu->banner) !!}" width="1920" height="800" alt="Slide">
            <div class="carousel-caption">
              <div class="container">
                <div class="col-md-8 col-sm-8 col-xs-8">
                  <p>{!! $nu->small_text !!}</p>
                  <h3>{!! $nu->the_tittle !!}</h3>
                  <h6>{!! $nu->small_desription !!}</h6>
                  <a href="#" title="Get In Touch">get in touch</a>
                </div>
              </div>
            </div>
          </div>
@endforeach
        </div><!-- Wrapper for slides /- --> 
        
        <!-- Controls -->
        <a class="left carousel-control" href="#photo_slider" role="button" data-slide="prev">
          <span class="fa fa-angle-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#photo_slider" role="button" data-slide="next">
          <span class="fa fa-angle-right" aria-hidden="true"></span>
        </a>
      </div>    
    </div>
    <!-- Slider Section /- -->
    <!-- <div class="section-padding"></div> -->
