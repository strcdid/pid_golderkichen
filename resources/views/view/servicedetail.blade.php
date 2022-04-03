@extends('master/master')
@section('conten')
    <!-- Slider Section -->
    @include('onlink/abouthead')

    <!-- Welcome Section -->
    {{-- @include('onlink/welcome') --}}

    <!-- Call Out Section -->
    @include('onlink/load')

    <!-- Testimonial Section -->
    @include('onlink/callout')

    <!-- counter Section -->
    @include('onlink/counter')

    <!-- Testimonial Section -->
    @include('onlink/service')
@endsection
