
  <!-- Header Section -->
  <header id="header" class="header-section container-fluid no-padding">
    <!-- SidePanel -->
    <div id="slidepanel">
      <!-- Top Header -->
      <div class="top-header container-fluid no-padding">
        <!-- Container -->
        <div class="container">
          <div class="row">
            <div class="col-md-7 col-sm-12">
              <p>{!! setting('site.description') !!}</p>
            </div>
            <div class="col-md-5 col-sm-12">
              <a href="mailto:{!! setting('contact.CE') !!}" title="{!! setting('contact.CE') !!}"><i class="fa fa-envelope"></i> {!! setting('contact.CE') !!}</a>
              <a href="tel:+{!! setting('contact.CW') !!}" title="+{!! setting('contact.CW') !!}"><i class="fa fa-phone"></i> +{!! setting('contact.CW') !!}</a>
            </div>
          </div>
        </div>
        <!-- Container -->
      </div>
      <!-- Top Header /- -->
      <!-- Middel Header /- -->
      <div class="middle-header container-fluid no-padding">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <a href="#" title="{!! setting('site.title') !!}"><img src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" alt="Logo" style="width: 100px;"></a>
            </div>
            <div class="col-md-8 col-sm-12 header-content">
              <div class="header-cnt-box">
                <i class="icon icon-Time"></i>
                <h4>Opening Hours</h4>
                <p>{!! setting('contact.CWK') !!}</p>
              </div>
              <div class="header-cnt-box">
                <i class="icon icon-Pointer"></i>
                <h4>Our Location</h4>
                <p>{!! setting('contact.CA') !!}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- SidePanel /- -->
    <!-- Container -->
    <div class="container">
      <!-- nav -->
      <nav class="navbar navbar-default ow-navigation">
        <div id="loginpanel" class="desktop-hide">
          <div class="right" id="toggle">
            <a id="slideit" href="#slidepanel"><i class="fo-icons fa fa-inbox"></i></a>
            <a id="closeit" href="#slidepanel"><i class="fo-icons fa fa-close"></i></a>
          </div>
        </div>
        <div class="navbar-header">
          <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="{{url('/')}}" title="{!! setting('site.title') !!}" class="navbar-brand"><img src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" alt="" style="max-width: 15vw"></a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
          <ul class="nav navbar-nav">
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
                    <li><a href="{{url('#')}}" title="Other">Other</a></li>
                </ul>
            </li>
            <li><a href="{{url('/catalog')}}" title="catalog">Catalog</a></li>
            <li><a href="{{url('/portofolio')}}" title="portofolio">Portfolio</a></li>
            <li><a href="{{url('/Contac')}}" title="Contac">Contact</a></li>
            {{-- tel:+{!! setting('contact.CP') !!} --}}
          </ul>
        </div><!--/.nav-collapse -->
      </nav><!-- nav /- -->
    </div><!-- Container /- -->
  </header>
  <!-- Header Section /- -->
