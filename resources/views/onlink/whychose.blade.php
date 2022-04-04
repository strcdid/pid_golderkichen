    <!-- Why Chosse Section -->
    <div class="why-choose-section container-fluid no-padding">
      <!-- <div class="section-padding"></div> -->
      <!-- Container -->
      <div class="container">
        <div class="col-md-6 col-sm-12 col-xs-12 no-padding">
          <!-- Section Header -->
          <div class="section-header">
              {!! setting('about.WYCY') !!}
          </div>
        @php
        $wht=DB::table('giveforyou')->get();
        @endphp
        @foreach ($wht as $nu)
          <div class="why-choose-box">
            <img src="{!! url('/lgarin211.github.io/'.$nu->banner) !!}" width="111" height="111" alt="Why Choose" />
            <h6>{!! $nu->tiitle !!}</h6>
            {{-- <span>Our awesome features</span> --}}
            <p>{!! $nu->massage !!}</p>
          </div>
        @endforeach

        </div>
      </div><!-- Container -->
      <!-- <div class="section-padding"></div> -->
      <div class="why-choose-bg-img">
        {{-- <img src="images/home-1-why-choose-bg.png" width="669" height="940" alt="Why Choose" /> --}}
        @php
          $set=json_decode(setting('about.BTYC'));
          $set=$set[0]->download_link;
        @endphp
        {{-- {!! url('/lgarin211.github.io/'.$set) !!} --}}
        {{-- <iframe src="{!! url('/lgarin211.github.io/'.$set) !!}" class="col-md-12"></iframe> --}}

        <iframe src="{!! url('/lgarin211.github.io/'.$set) !!}" title="" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="width: 50vw; height:350px;"></iframe>

      </div>
    </div>
    <!-- Why choose Section /- -->
