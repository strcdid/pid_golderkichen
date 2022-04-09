@php
 $datapin=DB::table('portofolio')->where('id',$_GET['id'])->first();
@endphp
    <!-- Blog Section -->
    <div class="container-fluid no-padding blog-single">
        <!-- container -->
        <style>
            .mu-l{
                margin-left: 2%;
            }
        </style>
        {{-- Agustinus --}}
        <div class="container">
            <div class="row">
                <!-- Content Area -->
                <div class="content-area col-md-8 col-sm-7">
                    <article class="type-post">
                        <div class="entry-cover"><img src="{!! url('/lgarin211.github.io/'.$datapin->banner) !!}" width="798" height="486" alt="{Single Post}" /></div>
                        <hr>
                        <div class="entry-content">
                            <h3 class="entry-title">{!! $datapin->tittle !!} </h3>
                            {{-- <div class="post-date"><span>21</span>May, 16</div> --}}
                            {!! $datapin->description !!}
                        </div>
                    </article>
                </div>

                <!-- Content Area /- -->
            </div><!-- container /- -->
            <!-- <div class="section-padding"></div> -->
        </div><!-- Latest News Section /- -->


