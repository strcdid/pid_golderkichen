@extends('master/master')
@section('conten')
    <!-- Slider Section -->
    @include('onlink/abouthead')
    <div class="section-padding"></div>
    <!-- Welcome Section -->
    @include('onlink/welcome')
    <div class="section-padding"></div>
    <!-- Testimonial Section -->
    @include('onlink/whychose')
    <div class="section-padding"></div>
    <!-- Call Out Section -->
    @include('onlink/callout')

    <!-- Testimonial Section -->
    @include('onlink/cliend')

    <!-- counter Section -->
    @include('onlink/counter')
@endsection
