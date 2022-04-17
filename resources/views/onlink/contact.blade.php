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
	<div class="section-padding"></div>
	<div class="container-fluid no-padding">
			<div class="container">
				<!-- Section Header -->
				<div class="section-header">
					<h3>send us message</h3>
					<p>feel free to inquire</p>
				</div><!-- Section Header /- -->
				<div class="row">
					<form class="col-md-12 contact-form no-padding" action="{!! url('/otpos') !!}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" name="name" placeholder="Your Name *" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="email" class="form-control" name="email" placeholder="Your email *" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" name="phone" placeholder="Phone" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" name="subject" placeholder="Subject" required />
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<input type="file" class="form-control" name="file" placeholder="Insert Your Kitchen Photo" required />
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<textarea class="form-control" rows="5" name="message" placeholder="your mesage" required ></textarea>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 ">
							<button type="submit" value="send message" name="submit" class="btn btn-warning"> Send </button>
						</div>
						<div  class="alert-msg">
							@if (!empty($success))
								<script type="text/javascript">
									{!! $success !!}
								</script>
							@endif
						</div>
					</form>
				</div>
			</div><!-- Container /- -->
	</div>
