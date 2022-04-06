    <!-- Container -->
    <div class="container">
			<div class="row contact-detail">
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Pointer"></i>
						<h5>Address</h5>
						<p>{!! setting('contact.CA') !!}</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Phone2"></i>
							<h5>Contact us</h5>
							<a href="tel:+{!! setting('contact.CP') !!}" title="{!! setting('contact.CP') !!}">Phone : +{!! setting('contact.CP') !!}</a>
							<a href="https://wa.me/+{!! setting('contact.CW') !!}" title="+{!! setting('contact.CW') !!}">Whatapp : +{!! setting('contact.CW') !!}</a>
                            <a href="mailto:{!! setting('contact.CE') !!}" title="{!! setting('contact.CE') !!}">Email : {!! setting('contact.CE') !!}</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Mail"></i>
						<h5>Our Social Media</h5>
							<a href="https://www.instagram.com/{!! setting('contact.CI') !!}" title="{!! setting('contact.CI') !!}">Instagram : {!! setting('contact.CI') !!} </a>
							<a href="https://www.facebook.com/{!! setting('contact.CF') !!}" title="{!! setting('contact.CF') !!}">Facebook : {!! setting('contact.CF') !!} </a>
					</div>
				</div>
			</div>
	</div>
	<div class="container-fluid no-padding">
		<div class="container">
			<!-- Section Header -->
			<div class="section-header" id="messageinquire">
				<h3>send us message</h3>
				<p>feel free to inquire</p>
			</div><!-- Section Header /- -->
			<div class="row">
                <iframe src="{!! setting('contact.WFG') !!}/viewform?embedded=true" class="col-md-12" frameborder="0" marginheight="0" marginwidth="0" style="height:100vh;">Memuat…</iframe>
			</div>
		</div><!-- Container /- -->
	</div>
	<div class="section-padding"></div>


