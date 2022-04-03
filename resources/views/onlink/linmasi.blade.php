    <!-- Katalog Section -->
    <div class="services-section container-fluid no-padding">
      <!-- Container -->
      <div class="container">
        <!-- Section Header -->
        <div class="section-header">
          <h3>Our Katalog</h3>
          <p>We are Specialists in old kitchen, benchtop resurfacing and Splash back.</p>
        </div><!-- Section Header /- -->
        <div class="row">
@php
$wht=DB::table('service_item')->get();
@endphp
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-8">
                        <h1 id="message">Demo color</h1>
                        <img id="myImage" src="https://strcdid.github.io/ast01/img/dev/kunin.png">
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-12">
                                <select name="bin" id="bin" class="form-control" onchange="fujitsu()">
                                    <option value="Table">Table</option>
                                    <option value="Kitche">Kitche</option>
                                </select>
                                <hr>
                            </div>
                            <div class="col-md-12">
                                <div class="button">
                                    @foreach ($wht as $nu)
                                        <button class="btn" style="color: #fff;background-color: {!! $nu->color !!};border-color: {!! $nu->color !!};" onclick="{{'inobipon'.$nu->id}}();" ></button>
                                    @endforeach
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
