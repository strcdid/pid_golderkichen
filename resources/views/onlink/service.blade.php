    <!-- Services Section -->
    <div class="services-section container-fluid no-padding">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Our Services</h3>
          <p>We are Specialists in old kitchen, benchtop resurfacing and Splash back.</p>
        </div><!-- Section Header /- -->
        <div class="row">
@php
$services=DB::table('service')->get();
@endphp
@foreach ($services as $nu)
          <div class="col-md-4 col-sm-6 col-xs-6">
            <div class="srv-box">
              <img src="{!! url('/lgarin211.github.io/'.$nu->big_banner) !!}" alt="Services" style="object-fit: cover;height: 350px;">
              <i><img src="{!! url('/lgarin211.github.io/'.$nu->small_icon) !!}"  alt="Icon" style="width: -webkit-fill-available;"></i>
              <div class="srv-box-hover">
                <h3>{!! $nu->tiitle !!}</h3>
                <p>{!! $nu->small_descriton !!}</p>
                <a href="{{url('service/detail?id='.$nu->id)}}" title="Learn More">learn more</a>
              </div>
            </div>
          </div>
@endforeach
        </div>
      </div><!-- Container /- -->
    </div>
    <!-- Services Section /- -->
    <div class="section-padding"></div>
