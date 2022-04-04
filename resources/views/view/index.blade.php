@extends('master/master')
@section('conten')
    <!-- Slider Section -->
    @include('onlink/slider')
    <div class="section-padding"></div>
    <!-- Services Section -->
    @include('onlink/service')
    <div class="section-padding"></div>

    <!-- Call Out Section -->
    @include('onlink/callout')
    <div class="section-padding"></div>

    <!-- Welcome Section -->
    @include('onlink/welcome')
    <div class="section-padding"></div>

    <!-- Portfolio Section -->
    @include('onlink/portofilio')
    <!-- <div class="section-padding"></div> -->

    <!-- Testimonial Section -->
    @include('onlink/cliend')
    <!-- <div class="section-padding"></div> -->

    <!-- counter Section -->
    @include('onlink/counter')
    <!-- <div class="section-padding"></div> -->

    <!-- Testimonial Section -->
    @include('onlink/testi2')
    <!-- <div class="section-padding"></div> -->
@endsection
