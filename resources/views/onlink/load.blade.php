@php
 $datapin=DB::table('service')->where('id',$_GET['id'])->first();
@endphp
    <!-- Blog Section -->
    <div class="container-fluid no-padding blog-single">
        <!-- container -->
        <style>
            .mu-l{
                margin-left: 2%;
            }
        </style>
        <div class="mu-l">
            <div class="row">
                <!-- Content Area -->
                <div class="content-area col-md-8 col-sm-7">
                    <article class="type-post">
                        <div class="entry-cover"><img src="{!! url('/lgarin211.github.io/'.$datapin->big_banner) !!}" width="798" height="486" alt="Single Post" /></div>
                        <hr>
                        <div class="entry-content">
                            <h3 class="entry-title">{!! $datapin->tiitle !!} </h3>
                            {{-- <div class="post-date"><span>21</span>May, 16</div> --}}
                            {!! $datapin->service_descriton !!}
                        </div>
                    </article>
                </div>
                <!-- Content Area /- -->
                @include('onlink/wigetservice')
