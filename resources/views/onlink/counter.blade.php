<!-- Counter Section -->
<div class="counter-section container-fluid no-padding" style="margin-bottom: 5vh;">
    <!-- <div class="section-padding"></div> -->
    <!-- Container -->
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 counter-detail">
                {!! setting('service.HTP') !!}
                <!-- col-md-4 -->
                <div class="col-md-4 col-sm-4 col-xs-4 animated fadeInDown">
                    <div class="statistics-box">
                        <i class="icon icon-Heart"></i>
                        <h2 data-statistics_percent="{!! setting('service.HC') !!}" id="statistics_count-1">{!! setting('service.HC') !!}</h2>
                        <h6>Happy Customers</h6>
                    </div>
                </div><!-- col-md-4 /- -->
                <!-- col-md-4 -->
                <div class="col-md-4 col-sm-4 col-xs-4 animated fadeInDown">
                    <div class="statistics-box">
                        <i class="icon icon-Briefcase"></i>
                        <h2 data-statistics_percent="{!! setting('service.PC') !!}" id="statistics_count-2">{!! setting('service.PC') !!}</h2>
                        <h6>Completed Projects</h6>
                    </div>
                </div><!-- col-md-4 /- -->
                <!-- col-md-4 -->
                <div class="col-md-4 col-sm-4 col-xs-4 animated fadeInDown">
                    <div class="statistics-box">
                        <i class="icon icon-WorldWide"></i>
                        <h2 data-statistics_percent="{!! setting('service.KC') !!}" id="statistics_count-3">{!! setting('service.KC') !!}</h2>
                        <h6>Our Branches</h6>
                    </div>
                </div><!-- col-md-4 /- -->
            </div>
        </div>
    </div><!-- Container /- -->
    <!-- <div class="section-padding"></div> -->
</div>
<!-- counter Section /- -->
