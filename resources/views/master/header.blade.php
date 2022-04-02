
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
              <a href="mailto:info@ourdomain.com" title="Info@ourdomain.com"><i class="fa fa-envelope"></i> Info@ourdomain.com</a>
              <a href="tel:+011234567896" title="+011234567896"><i class="fa fa-phone"></i> (+01) 123 456 7896</a>
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
              <a href="#" title="Alcazar"><img src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" alt="Logo" style="width: 50px;"></a>
            </div>
            <div class="col-md-8 col-sm-12 header-content">
              <div class="header-cnt-box">
                <i class="icon icon-Time"></i>
                <h4>opening hours</h4>
                <p>MON - FRI : 9:00am to 8:00pm</p>
              </div>
              <div class="header-cnt-box">
                <i class="icon icon-Pointer"></i>
                <h4>opening hours</h4>
                <p>MON - FRI : 9:00am to 8:00pm</p>
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
          <a href="index.html" title="Alcazar" class="navbar-brand">Alcazar</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
          <ul class="nav navbar-nav">
            <li class="dropdown active">
              <a href="#top" title="Home" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Home</a>
              <i class="ddl-switch fa fa-angle-down"></i>
              <ul class="dropdown-menu">
                <li><a href="index.html" title="Home">home</a></li>
                <li><a href="index2.html" title="Home 2">hOME 2</a></li>
              </ul>
            </li>
            <li><a href="about.html" title="About US">About US</a></li>
            <li><a href="services.html" title="Services">Services</a></li>
            <li class="dropdown">
              <a href="#portfolio-section" title="Projects" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Projects</a>
              <i class="ddl-switch fa fa-angle-down"></i>
              <ul class="dropdown-menu">
                <li><a href="portfolio-3-column.html" title="Portfolio 3 Coulmn">Portfolio 3 Coulmn</a></li>
                <li><a href="portfolio-4-column.html" title="Portfolio 5 Coulmn">Portfolio 4 Coulmn</a></li>
                <li><a href="project-detail.html" title="Project Detail">Project Detail</a></li>
              </ul>
            </li>           
            <li class="dropdown">
              <a href="#blog-section" title="Latest News" class="dropdown-toggle" role="button" aria-haspopup="true" aria-expanded="false">Latest News</a>
              <i class="ddl-switch fa fa-angle-down"></i>
              <ul class="dropdown-menu">
                <li><a href="blog.html" title="Blog">Blog</a></li>
                <li><a href="blog-single.html" title="Single Post">Single Post</a></li>
              </ul>
            </li>
            <li><a href="contact-us.html" title="Contact US">Contact US</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </nav><!-- nav /- -->
    </div><!-- Container /- -->
  </header>
  <!-- Header Section /- -->
