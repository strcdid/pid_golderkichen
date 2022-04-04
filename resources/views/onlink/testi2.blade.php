<!-- <div class="section-padding"></div> -->
		<!-- Testimonial Section -->
		<div class="testimonial-section2 container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>Testimony</h3>
					<p>Let our clients speak</p>
				</div><!-- Section Header /- -->

				<div class="testimonial-carousel2">

                    @php
                    $testimony=DB::table('testimony')->inRandomOrder()->get();
                    @endphp
                    @foreach ($testimony as $key=>$nu)
                              <div class="testimonial-box">
                                <div class="author-box">
                                    <h4>{!! $nu->massage !!}</h4>
                                    <i class="fa fa-quote-left"></i>
                                </div>
                                <img src="{!! url('/lgarin211.github.io/'.$nu->profile) !!}" width="124" height="150" alt="Testimonial" style="max-width: 25%">
                                <p>{!! $nu->name !!} <span>{!! $nu->tipe !!}</span></p>
                            </div>
                    @endforeach
				</div>
			</div><!-- Container /- -->
		</div><!-- Testimonial Section /- -->
<!-- <div class="section-padding"></div> -->
