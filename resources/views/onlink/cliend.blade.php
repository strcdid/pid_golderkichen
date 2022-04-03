
		<!-- Client Section -->
		<div class="client-section container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<div class="client-carousel">
@php
$dan=DB::table('patner')->get();
@endphp
@foreach ($dan as $nu)
					<a href="{!! $nu->patner_link !!}" title="Logo"><img src="{!! url('/lgarin211.github.io/'.$nu->logo) !!}" width="90" height="82" alt="Client" /></a>
@endforeach
				</div>
			</div>
			<!-- Container /- -->
		</div>
        <!-- Client Section /- -->
