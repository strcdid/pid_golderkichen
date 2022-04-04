    <!-- Katalog Section -->
    <div class="services-section container-fluid no-padding">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Our Catalog</h3>
          <p>We are Specialists in old kitchen, benchtop resurfacing and Splash back.</p>
        </div><!-- Section Header /- -->
        <div class="row">
@php
$wht=DB::table('service_item')->get();
$why=DB::table('service')->get();
@endphp
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-8">
                        <h1 id="message">Demo color</h1>
                        <img id="myImage" src="https://strcdid.github.io/ast01/img/dev/kunin.png">
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>Select Your Kitchen Catalog</h3>
                                    <select name="bin" id="bin" class="form-control" onchange="fujitsu()">
                                        @foreach ($why as $nu)
                                            <option value="$nu->id">{!! $nu->tiitle !!}</option>
                                        @endforeach
                                    </select>
                                    <hr>
                                </div>
                                <div class="col-md-12">
                                    <h3>Choose your Color</h3>
                                    <div class="button">
                                        @foreach ($wht as $nu)
                                            <button class="btn rounded-circle" style="width: 50px;height: 50px;border-radius: 100%;color: #fff;background-color: {!! $nu->color !!};border-color: {!! $nu->color !!};" onclick="{{'inobipon'.$nu->id}}();" ></button>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                @foreach ($wht as $nu)
                function {{'inobipon'.$nu->id}}(){
                document.getElementById('myImage')
                .src="{{url('/lgarin211.github.io/'.$nu->banner)}}";
                document.getElementById('message')
                .innerHTML="{{$nu->tiitle}}";
                }
                @endforeach
            </script>

        </div>
      </div><!-- Container /- -->
    </div>
    <!-- Katalog Section /- -->
    <!-- <div class="section-padding"></div> -->
