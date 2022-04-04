@extends('master/master')
@section('conten')
    <!-- Slider Section -->
    @include('onlink/abouthead')
        <div class="section-padding"></div>
    @include('onlink/load')

    <!-- Testimonial Section -->
    @include('onlink/callout')
    <!-- counter Section -->
    @include('onlink/counter')
    <div class="section-padding"></div>
    <!-- Testimonial Section -->
    @include('onlink/service')
@endsection
