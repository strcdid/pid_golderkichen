    <!-- Services Section -->
    <div class="services-section container-fluid no-padding">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Our Services</h3>
          <p>Today still wanted government</p>
        </div><!-- Section Header /- -->
        <div class="row">
@php
$services=DB::table('service')->get();
@endphp          
@foreach ($services as $nu)
          <div class="col-md-4 col-sm-6 col-xs-6">
            <div class="srv-box">
              <img src="{!! url('/lgarin211.github.io/'.$nu->big_banner) !!}" width="370" height="370" alt="Services" />
              <i><img src="{!! url('/lgarin211.github.io/'.$nu->small_icon) !!}" width="24" height="33" alt="Icon" /></i>
              <div class="srv-box-hover">
                <h3>{!! $nu->tiitle !!}</h3>
                <p>{!! $nu->service_descriton !!}</p>
                <a href="#" title="Learn More">learn more</a>
              </div>
            </div>
          </div>
@endforeach
        </div>
      </div><!-- Container /- -->
    </div>
    <!-- Services Section /- -->
    <div class="section-padding"></div>