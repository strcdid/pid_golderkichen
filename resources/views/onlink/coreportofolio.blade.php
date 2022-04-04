<!-- Portfolio Section -->
<div id="portfolio-section" class="container-fluid no-padding portfolio-section portfolio-3-column">
    <div class="container">
        <!-- Section Header -->
        <div class="section-header">
            <h3>Our Latest Projects</h3>
            <p>See Golden Kitchen's Renovation</p>
        </div><!-- Section Header -->
        <!-- Portfolio Filters -->
        <ul id="filters" class="portfolio-categories no-left-padding sorting-menu">
            <li class=""><a data-filter="*" class="active" href="#">all projects</a></li>
            @php
            $oo=DB::table('categories')->get();
            @endphp
            @foreach ($oo as $nu)
            <li class=""><a data-filter=".{{ $nu->slug }}" href="#">{{ $nu->name }}</a></li>
            @endforeach
        </ul><!-- / Portfolio Filters -->

        <div class="container-fluid no-padding portfolio-list">
            @php
            $pas=DB::table('portofolio')->inRandomOrder()->get();
            @endphp

            @foreach ($pas as $nu)
            <div class="col-md-4 col-sm-4 col-xs-6 no-padding portfolio-box plumbing {!! $nu->category !!}">
                <img width="390" height="290" alt="Portfolio" src="{{ url('/lgarin211.github.io/'.$nu->banner) }}" style="height: 250px;object-fit: cover;"/>
                <div class="hover-detail">
                    <div class="links">
                        <a href="{{ url('/lgarin211.github.io/'.$nu->banner) }}" class="zoom" title="{{$nu->tittle}}"><i class="fa fa-search"></i></a>
                        <a href="project-detail.html" title="Link"><i class="fa fa-link"></i></a>
                    </div>
                    <div class="project-title">
                        <h3>{{ $nu->tittle }}</h3>
                        <div class="categories-link">
                            <p>
                                {!! $nu->small_description !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        {{-- <nav class="ow-pagination">
            <ul class="pagination">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#" aria-label="Next"><i class="fa fa-angle-double-right"></i></a></li>
            </ul>
        </nav> --}}
    </div>
</div><!-- Portfolio Section /- -->
