    <!-- Testimonial Section -->
     <div class="testimonial-section container-fluid no-padding" style="background-image: url({!! url('/lgarin211.github.io/'.setting('site.logo')) !!});padding: 20px 0 120px; ">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
            <h3>Our Latest Projects</h3>
            <p>See Golden Kitchen's Renovation</p>
        </div>
        <!-- Section Header -->
        <div class="testimonial-carousel">
@php
$testimony=DB::table('testimony')->inRandomOrder()->get();
@endphp
@foreach ($testimony as $key=>$nu)
          <div class="testimonial-box">
            <p>{!! $nu->massage !!}</p>
            <div class="author-box">
              <img src="{!! url('/lgarin211.github.io/'.$nu->profile) !!}" width="67" height="67" alt="Testimonial" style="object-position: center;object-fit: cover;max-width: 80px;">
              <h4>{!! $nu->name !!} <span>{!! $nu->tipe !!}</span></h4>
            </div>
          </div>
@endforeach

        </div>
      </div><!-- Container /- -->
    </div>
    <!-- Testimonial Section /- -->
