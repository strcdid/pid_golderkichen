@php
$wht=DB::table('service_item')->get();
@endphp
<!-- Widget Area -->
 <div class="col-md-4 col-sm-5 widget-area">
    <div class="col-md-6">

        <h1 id="message">
            Demo color
        </h1>
        <img id="myImage" src="https://strcdid.github.io/ast01/img/dev/kunin.png">

    </div>
    <div class="button">
        @foreach ($wht as $nu)
            <button class="btn" style="color: #fff;background-color: {!! $nu->color !!};border-color: {!! $nu->color !!};" onclick="{{'inobipon'.$nu->id}}();" ></button>
        @endforeach
    </div>
</div>
<!-- Widget Area /- -->
<script>

@foreach ($wht as $nu)
function {{'inobipon'.$nu->id}}(){
document.getElementById('myImage')
.src="{{url('/lgarin211.github.io/'.$nu->banner)}}";
document.getElementById('message')
.innerHTML="Yellow";
}
@endforeach
</script>
