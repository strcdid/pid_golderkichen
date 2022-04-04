<!DOCTYPE html>
<html class="">
<head>
  @php
  SEO::setTitle(setting('site.description'), false);
  @endphp
    {!! SEO::generate() !!}
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

  <link rel="stylesheet"
href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<style>

   #hideValuesOnSelect {
      display: none;
   }


    .shordy {
  font-size: 3em;
  line-height: 2em;
  background: rgb(226, 255, 226);
  border-radius: 2em;
  height: 2em;
  width: 2em;
  display: inline-block;
  position: fixed;
  z-index: 100;
    right:0;
bottom:0;
  text-align: center;
  color: green;
  margin: 15px;

}



/* .phone-number {
  text-align: right;
  text-transform: uppercase;
  font-weight: bold;
  background: green;
  border-radius: 50%;
  padding: 1em;
  position : fixed;
    z-index: 100;
    right:0;
bottom:0;
  padding-left: 3.5em;
  color: white;
  display: inline-block;
  width: 10px;
  margin : 20px;
}
.phone-number--below {
  display: block;
  text-align: left;
  padding-left: 2.5em;
}
.phone-number:hover {
  background: #1d71b8;
} */
</style>


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


