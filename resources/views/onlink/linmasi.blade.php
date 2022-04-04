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
if(!empty($_GET['lin'])){
$wht=DB::table('service_item')->where('projectname',$_GET['lin'])->get();
$incor=DB::table('catalog')->where('lans_key',$_GET['lin'])->get()[0];
}
$why=DB::table('catalog')->get();
@endphp
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-8">
                         @empty($incor)
                            <h1 id="message">{!! setting('site.description') !!}</h1>
                            <img id="myImage" src="{!! url('/lgarin211.github.io/'.setting('site.logo')) !!}">
                            @else
                            <h1 id="message">{!! $incor->Tiitle !!}</h1>
                            <img id="myImage" src="{!! url('/lgarin211.github.io/'.$incor->Default_banner) !!}">
                        @endempty
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>Select Your Kitchen Catalog</h3>
                                    <select name="bin" id="bin" class="form-control" onchange="fujitsu()">
                                        <option value="">...</option>
                                        @foreach ($why as $nu)
                                            <option value="{{$nu->lans_key}}">{!! $nu->Tiitle !!}</option>
                                        @endforeach
                                    </select>
                                    <hr>
                                </div>
                                <script>
                                    function fujitsu() {
                                        var x = document.getElementById("bin").value;
                                        window.location.replace("{{url('/catalog?lin=')}}" + x);
                                    }
                                </script>
                                @if (!empty($wht))

                                <div class="col-md-12">
                                    <h3>Choose your Color</h3>
                                    <div class="button">
                                        @foreach ($wht as $nu)
                                            <button class="btn rounded-circle" style="width: 50px;height: 50px;border-radius: 100%;color: #fff;background-color: {!! $nu->color !!};border-color: {!! $nu->color !!};" onclick="{{'inobipon'.$nu->id}}();" ></button>
                                        @endforeach
                                    </div>
                                </div>

                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script>
            @if (!empty($wht))
                @foreach ($wht as $nu)
                function {{'inobipon'.$nu->id}}(){
                document.getElementById('myImage')
                .src="{{url('/lgarin211.github.io/'.$nu->banner)}}";
                document.getElementById('message')
                .innerHTML="{{$nu->tiitle}}";
                }
                @endforeach
            @endif
            </script>

        </div>
      </div><!-- Container /- -->
    </div>
    <!-- Katalog Section /- -->
    <!-- <div class="section-padding"></div> -->
