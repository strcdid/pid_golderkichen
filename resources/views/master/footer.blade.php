
  <!-- Footer Section -->
  <div class="footer-section container-fluid no-padding">
    <!-- Container -->
    <div class="container">
      <div class="footer-callout">
        <h4><img src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" width="44" height="40" alt="Call Out Ic" /> Want to hire us for your work? <span>Just <b>Contact Us</b> and you’re done</span></h4>
        <a href="#" title="contact us">contact us</a>
      </div>
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-6">
          <aside class="ftr-widget widget_contact">
            <h3 class="widget-title">Contact us</h3>
            <div class="info-box">
              <h5>Address</h5>
              <p>{!! setting('contact.CA') !!}</p>
            </div>
            <div class="info-box">
              <h5>Email Us</h5>
              <a href="mailto:{!! setting('contact.CE') !!}" title="{!! setting('contact.CE') !!}">{!! setting('contact.CE') !!}</a>
            </div>
            <div class="info-box">
              <h5>Call Us</h5>
              <a href="tel:+{!! setting('contact.CP') !!}" title="{!! setting('contact.CP') !!}">Phone : +{!! setting('contact.CP') !!}</a>
              <a href="https://wa.me/+{!! setting('contact.CW') !!}" title="+{!! setting('contact.CW') !!}">Whatapp : +{!! setting('contact.CW') !!}</a>
              <a href="https://www.instagram.com/{!! setting('contact.CI') !!}" title="{!! setting('contact.CI') !!}">Instagram : {!! setting('contact.CI') !!} </a>
              <a href="https://www.facebook.com/{!! setting('contact.CF') !!}" title="{!! setting('contact.CF') !!}">Facebook : {!! setting('contact.CF') !!} </a>
            </div>
          </aside>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-6">
          {{-- <aside class="ftr-widget widget_opening">
            <h3 class="widget-title">opening Hours</h3>
            <p><span>Monday - Friday </span>: 9:00am to 7:00pm</p>
            <p><span>Sunday - Saturday </span>: 9:00am to 7:00pm</p>
          </aside> --}}
          <aside class="ftr-widget widget_links">
            <h3 class="widget-title">useful links</h3>
            <ul>
              <li><a href="about.html" title="About us">About us</a></li>
              <li><a href="services.html" title="Services">Services</a></li>
              <li><a href="portfolio-3-column.html" title="Projects">Projects</a></li>
              <li><a href="#" title="Our Team">Our Team</a></li>
              <li><a href="contact-us.html" title="Contact Us">Contact Us</a></li>
            </ul>
          </aside>
        </div>
        <div class="col-md-6 col-sm-12 col-xs-12">
          <aside class="ftr-widget widget_subscribe">
              <style>
                  .biw{
                      border: none;
                      height: 50vh;
                      max-height: 100%;
                  }
              </style>
            <iframe src="{!! setting('contact.CM') !!}" loading="lazy" referrerpolicy="no-referrer-when-downgrade"   class="col-md-12 biw" ></iframe>
          </aside>
        </div>
      </div>
    </div><!-- Container /- -->
    <div class="footer-bottom container-fluid no-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-2 col-sm-12 col-xs-12">
            <p>&copy; 2016 All Rights Reserved</p>
          </div>
          <div class="col-md-10 col-sm-12 col-xs-12">
            <!-- nav -->
            <nav class="navbar navbar-default ow-navigation">
              <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#ftr-navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              </div>
              <div class="navbar-collapse collapse navbar-right" id="ftr-navbar">
                <ul class="nav navbar-nav">
                  <li><a href="index.html" title="Home">Home</a></li>
                  <li><a href="services.html" title="Services">Services</a></li>
                  <li><a href="#" title="Terms & Condition">Terms &amp; Condition</a></li>
                  <li><a href="#" title="Privacy Policy">privacy policy</a></li>
                  <li><a href="contact-us.html" title="Contact Us">Contact Us</a></li>
                </ul>
              </div><!--/.nav-collapse -->
            </nav><!-- nav /- -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer Section /- -->
