 <!-- Widget Area -->
 <div class="col-md-4 col-sm-5 widget-area">
    <div class="col-md-6">
        <h1 id="message">
            Demo color
        </h1>
        <img id="myImage" src="https://strcdid.github.io/ast01/img/dev/kunin.png">
    </div>
    <div class="button">
        <button class="btn btn-warning"
                onclick=yellow();>

        </button>
        <button class="btn btn-success"
                 onclick=green();>

        </button>
        <button class="btn btn-primary"
                 onclick=blue();>
        </button>
     </div>
</div>
<!-- Widget Area /- -->
</div>
</div><!-- container /- -->
<div class="section-padding"></div>
</div><!-- Latest News Section /- -->


<script>
function yellow(){
document.getElementById('myImage')
.src="https://strcdid.github.io/ast01/img/dev/kunin.png";
document.getElementById('message')
.innerHTML="Yellow";
}

function green(){
document.getElementById('myImage')
.src="https://strcdid.github.io/ast01/img/dev/ijo.png";
document.getElementById('message')
.innerHTML="Green";
}

function blue(){
document.getElementById('myImage')
.src="https://strcdid.github.io/ast01/img/dev/biru.png";
document.getElementById('message')
.innerHTML="Blue";
}
</script>
