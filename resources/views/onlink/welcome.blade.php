    <!-- Welcome Section -->
    <div class="welcome-section container-fluid no-padding">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Welcome to {!! setting('site.title') !!}</h3>
          <p>{!! setting('site.description') !!}</p>
        </div>
        <!-- Section Header /- -->
        <div class="col-md-6 col-sm-6 welcome-img no-padding">
          <img src="{!! url('/lgarin211.github.io/'.setting('site.FI')) !!}"  width="570" height="497" alt="Welcome" />
        </div>
        <div class="col-md-6 col-sm-6 welcome-content">
          <p>{!! setting('about.AWY') !!}</p>
@php
$about=DB::table('About')->get();
@endphp
@foreach ($about as $nu)
          <div class="row mb-1">
            <div class="col-sm-5">
              <img src="{!! url('/lgarin211.github.io/'.$nu->banner) !!}">
            </div>
            <div class="col-sm-7">
              <h4>{!! $nu->tittle !!}</h4>
              <p>{!! $nu->deskription !!} </p>
            </div>
          </div>
@endforeach
        </div>
      </div>
      <!-- Container /- -->
    </div>
    <!-- Welcome Section /- -->
