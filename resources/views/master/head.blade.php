<!DOCTYPE html>
<html class="">
<head>
    {!! SEO::generate() !!}

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
{!! RecaptchaV3::initJs() !!}
  <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="{!! setting('site.description') !!}">
    <meta name="author" content="{{ 'lgarin211' }}">

  <title>{!! setting('site.description') !!}</title>

  <!-- Standard Favicon -->
  <link rel="icon" type="image/x-icon" href="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}" />

  <!-- For iPhone 4 Retina display: -->
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}">

  <!-- For iPad: -->
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}">

  <!-- For iPhone: -->
  <link rel="apple-touch-icon-precomposed" href="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}">

  <!-- Library - Google Font Familys -->

  <!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="{{ url('/ast2') }}/libraries/lib.css">

  <!-- Custom - Common CSS -->
  <link rel="stylesheet" type="text/css" href="{{ url('/ast2') }}/css/plugins.css">
  <link rel="stylesheet" type="text/css" href="{{ url('/ast2') }}/css/navigation-menu.css">

  <!-- Custom - Theme CSS -->
  <link rel="stylesheet" type="text/css" href="{{ url('/ast2') }}/style.css">
  <link rel="stylesheet" type="text/css" href="{{ url('/ast2') }}/css/shortcodes.css">
  <script src="{{ url('/ast2') }}/js/html5/respond.min.js"></script>
</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
  <!-- Loader -->
  <div id="site-loader" class="load-complete">
    <div class="loader">
      <div class="loader-inner ball-clip-rotate">
        <div></div>
      </div>
    </div>
  </div>
  <!-- Loader /- -->

  <a id="top"></a>

  {{-- call header --}}
  @include('master/header')
  <main class="site-main page-spacing">
