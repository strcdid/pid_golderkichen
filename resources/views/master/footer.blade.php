
  <!-- Footer Section -->
  <div class="footer-section container-fluid no-padding">
    <!-- Container -->
    <div class="container">
      <div class="footer-callout">
        <h4><img src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" width="44" height="40" alt="Call Out Ic" /> {!! setting('service.YCHT') !!}</h4>
        <a href="tel:+{!! setting('contact.CP') !!}" title="contact us">contact us</a>
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
          <aside class="ftr-widget widget_links">
            <h3 class="widget-title">useful links</h3>
            <ul>
              <li><a href="{{url('/')}}" title="Home">HOME</a></li>
              <li><a href="{{url('/about')}}" title="About">About US</a></li>
              <li class="dropdown">
                  <a href="{{url('/service')}}" title="Service" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Service</a>
                  <i class="ddl-switch fa fa-angle-down"></i>
                  <ul class="dropdown-menu">
                      @php
                      $services=DB::table('service')->get();
                      @endphp
                      @foreach ($services as $nu)
                      <li><a href="{{url('/service/detail')}}" title="{!! $nu->tiitle !!}">{!! $nu->tiitle !!}</a></li>
                      @endforeach
                  </ul>
              </li>
              <li><a href="{{url('/portofolio')}}" title="portofolio">Portfolio</a></li>
              <li><a href="{{url('/Contac')}}" title="Contac">Contact</a></li>
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
  </div>
  <!-- Footer Section /- -->
