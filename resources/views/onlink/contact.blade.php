
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
{!! RecaptchaV3::initJs() !!}
    <!-- Container -->
    <div class="container">
			<div class="row contact-detail">
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Pointer"></i>
						<h5>Contact us</h5>
						<p>Alcazar, 09 Downtown st, Victoria, Australia</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Phone2"></i>
						<h5>call us</h5>
						<a href="tell:+011234567896" title="(+01) 123 456 7896">(+01) 123 456 7896</a>
						<a href="tell:+011234567890" title="(+01) 123 456 7890">(+01) 123 456 7890</a>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="contact-info">
						<i class="icon icon-Mail"></i>
						<h5>Contact us</h5>
						<a href="mailto:info@alcazar.com" title="Info@Alcazar.Com">Info@Alcazar.Com</a>
						<a href="mailto:support@alcazar.com" title="Support@Alcazar.Com">Support@Alcazar.Com</a>
					</div>
				</div>
                <div class="form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
                    <div class="col-md-6">
                        {!! RecaptchaV3::field('register') !!}
                        @if ($errors->has('g-recaptcha-response'))
                            <span class="help-block">
                                <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                            </span>
                        @endif
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
					<form class="col-md-12 contact-form no-padding" action="contact" method="POST">
                        {!! csrf_field() !!}
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" id="input_name" name="contact-name" placeholder="Your Name *" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="email" class="form-control" id="input_email" name="contact-email" placeholder="Your email *" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" id="input_phone" name="contact-phone" placeholder="Phone" required />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 form-group">
							<input type="text" class="form-control" id="input_subject" name="contact-subject" placeholder="Subject" required />
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<input type="file" class="form-control" id="input_foto" name="contact-file" placeholder="Insert Your Kitchen Photo" required />
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 form-group">
							<textarea id="textarea_message" class="form-control" rows="5" name="contact-message" placeholder="your mesage" required ></textarea>
						</div>

                            <div class="col-md-12 col-sm-12 col-xs-12 form-group{{ $errors->has('g-recaptcha-response') ? ' has-error' : '' }}">
                                {!! RecaptchaV3::field('section1') !!}
                                @if ($errors->has('g-recaptcha-response'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                                @else {{"Hola"}}
                                @endif
                            </div>

						<div class="col-md-12 col-sm-12 col-xs-12 ">
							<input type="submit" value="send message" name="submit" id="btn_submit">
						</div>
						<div id="alert-msg" class="alert-msg"></div>
					</form>
				</div>
			</div><!-- Container /- -->
		</div>
		<div class="section-padding"></div>


