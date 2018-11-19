<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-type"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<style>
#aiBody {
cursor:pointer;

}
</style>

<title>I love you</title>
<script>
var AjaxUtil = function(conf){
	var xhr = new XMLHttpRequest();
	var url = conf.url;
	var method = conf.method?conf.method:'GET';
	var param = conf.param?conf.param:'{}';
	
	var success = conf.success?conf.success:function(res){
		alert(res);
	}
	var error = conf.error?conf.error:function(res){
		alert(res);
	}
	
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status=="200"){
				success(xhr.responseText);
			}else{
				error(xhr.responseText);
			}
		}
	}
	xhr.open(method,url);
	if(method!='GET'){
		xhr.setRequestHeader('Content-type','application/json;charset=utf-8');
	}
	this.send = function(){
		xhr.send(param);
	}
}
</script>


 <!-- Bootstrap core CSS -->
    <link href="/rsc/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
   <link rel="stylesheet"  href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    

    <!-- Custom styles for this template -->
    <link href="/rsc/css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">
<audio autoplay="autoplay" loop="loop" preload="auto" >
    <source src="/rsc/mp3/너라는걸.mp3" type="audio/mp3" />
</audio>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">l love you</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">PhotoGalary</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">TravelStep</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">History</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Family</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">PhotoBar</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
     <!-- carousel -->
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100"  src="/rsc/img/header.JPG"  alt="First slide">
      <div class="carousel-caption">
      <h1 class="intro-heading text-uppercase">
              <strong>I love you</strong>
              </h1>
            <p>I love you</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/rsc/img/header.JPG"  alt="Second slide">
    <div class="carousel-caption">
        <h1 class="intro-heading text-uppercase">
              <strong>I love you</strong>
              </h1>
            <p>I love you</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="/rsc/img/header.JPG"   alt="Third slide"  >
   <div class="carousel-caption">
     <h1 class="intro-heading text-uppercase">
              <strong>I love you</strong>
              </h1>
            <p>I love you</p>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <script charset="UTF-8">
  	window.addEventListener('load',function(){
	var conf = {
			url : '/event',
			success : function(res){
				res = JSON.parse(res);
		
				var html = '';
				html += '<section id="" class="pb-5">';
				html += '<div class="container">';
				
				html += '<div class="row">';
				for(var ei of res){
					html += '<div class="col-md-4 col-sm-6 portfolio-item">';
					html += '<div>';
					html += '<img src="/rsc/img/upload/' + ei.epicture + '" style="width : 300px; height : 300px; style="cursor:pointer" " onclick="location.href=\'/love2/' + ei.eno + '\'">';
					html += '<li>' + ei.etitle + '</li>';
					html += '<li>' + ei.edate + '</li>';
					html += '<li>' + ei.econtent + '</li>';
					html += '</div>';
					html += '</div>';
					
				}
				html += '</div>'
				html += '</div>';
				html += '</section>';
				document.querySelector('#aiBody').insertAdjacentHTML('beforeend',html);
			}
	}
	var au = new AjaxUtil(conf); 
	au.send();
});
  </script>
    <!-- Services -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">PhotoGarlary</h2>
            <h3 class="section-subheading text-muted">Memory</h3>
          </div>
        </div>
        <div id="aiBody">
        </div>
      </div>
    </section>


	
    <!-- Portfolio Grid -->
    <section class="bg-light" id="portfolio">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Travel Step</h2>
            <h3 class="section-subheading text-muted">memory</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/p.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>포천</h4>
              <p class="text-muted">17.11.27</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/G1.JPG" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>광화문</h4>
              <p class="text-muted">17.12.31</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/S1.JPG" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>속초</h4>
              <p class="text-muted">18.02.17</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/e.jpg" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>에버랜드</h4>
              <p class="text-muted">18.03.17</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/header.JPG" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Southwest</h4>
              <p class="text-muted">Website Design</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fas fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="/rsc/img/header.JPG" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Window</h4>
              <p class="text-muted">Photography</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- About -->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">History</h2>
            <h3 class="section-subheading text-muted">memory</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                <div class="timeline-image"> 
                  <img class="rounded-circle img-fluid" src="/rsc/img/abd.jpg" alt="" >
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2017-11-19</h4>
                    <h4 class="subheading">Love Beginnings</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">부평 이자까야에서 ㅎㅎ</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="/rsc/img/doobang.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018-04-24</h4>
                    <h4 class="subheading">Move And DooBang</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">송내로 이사, 새로운 가족</p>
                  </div>
                </div>
              </li>
              <li>
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="/rsc/img/h.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018-05-21</h4>
                    <h4 class="subheading">Registration of marriage</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">혼인신고, 새롭게 시작</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <img class="rounded-circle img-fluid" src="/rsc/img/abd.jpg" alt="">
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>2018-11-11</h4>
                    <h4 class="subheading">1주년..ㅎㅎ</h4>
                  </div>
                  <div class="timeline-body">
                    <p class="text-muted">고마워..ㅎㅎ</p>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image">
                  <h4>Be Part
                    <br>Of Our
                    <br>Story!</h4>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Team -->
    <section class="bg-light" id="team">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Family</h2>
            <h3 class="section-subheading text-muted">Welecome to my house</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="/rsc/img/J.jpg" alt="">
              <h4>지방이</h4>
              <p class="text-muted">두방쓰맘</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-linkedin-in"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="/rsc/img/F.jpg" alt="">
              <h4>두꺼비</h4>
              <p class="text-muted">두방쓰빠</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-linkedin-in"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="team-member">
              <img class="mx-auto rounded-circle" src="/rsc/img/D.jpg" alt="">
              <h4>두방이</h4>
              <p class="text-muted">집안 귀요미</p>
              <ul class="list-inline social-buttons">
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a href="#">
                    <i class="fab fa-linkedin-in"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">  
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">PhotoBar</h2>
            <h3 class="section-subheading text-muted">upload we're Photo</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form id="form" enctype="multipart/form-data" accept-charset="UTF-8">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" name="etitle" id="bititle" type="text" placeholder="what is Title *" required="required" data-validation-required-message="Please enter your name.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="bidate" name="edate" type="date" placeholder="when is Day *" required="required" data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="bicontent" name="econtent" type="text" placeholder="what is Content *" required="required" data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <img class="form-control" id="bipicture"  style="height: 250px" onclick="openFile()">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <input type="file" id="file" name="epicture" onchange="imageChange(event)" style="display: none">
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="button" onclick="addQuestion()">Upload Picture</button>
                </div> 
              </div>
            </form>  
          </div>
        </div>
      </div>
    </section>
    <script>
    	function imageChange(e){
    		var img = $('#bipicture')[0]; 
    		console.log(img);
    		img.src = URL.createObjectURL(e.target.files[0]);
    	}
    
    	function openFile(){
    		$('#file').trigger('click');	
    	}
    	
		function addQuestion(){

		
			var formData = new FormData(document.querySelector('#form'));
			
			
			$.ajax({
				url : '/event',
				type : 'POST',
				processData: false,
                contentType: false,
				success : function(res) {
					location.href="/url/love:love";
					
				},
				error : function(err) {
					console.log(err);
				},				
				data : formData
			});
		}
		
		function deletelove(eno){
			var conf = {
					url : '/event/' + eno,
					method : 'DELETE',
					success : function(res){
						if(res=='1'){
							alert("삭제 ㅇㅋ"
							);
							location.href="/url/love:love";
						}
					}
			}
			var au = new AjaxUtil(conf);
			au.send();
		}
		
		function updatelove(eno){
			
		}
	</script>
    <!-- Portfolio Modals -->

    <!-- Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">In Pocheon</h2>
                  <p class="item-intro text-muted">HubIsland</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/p1.jpg" alt="">
                  <p>포천 허브아일랜드에서 ...</p>
                  <ul class="list-inline">
                    <li>17.11.27</li>
                    <li>두방쓰</li>
                    <li>자동차극장, 포천 허브아일랜드</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">In SokCho</h2>
                  <p class="item-intro text-muted">BongPo</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/S2.JPG" alt="">
                  <p>겨울바다여행</p>
                  <ul class="list-inline">
                    <li>18.02.17</li>
                    <li>두방쓰</li>
                    <li>속초먹방,겨울바다</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">EverLand and Yeosu</h2>
                  <p class="item-intro text-muted">EverLand Yeosu</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/E2.JPG" alt="">
                  <p>에버랜드 여행 갔다 여수로 여행 ㄱㄱ!</p>
                  <ul class="list-inline">
                    <li>18.03.27</li>
                    <li>두방쓰</li>
                    <li>에버랜드 놀이기구, 순천 여수 먹방</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">In Seoul</h2>
                  <p class="item-intro text-muted">GwanghwaMoon</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/g2.jpg" alt="">
                  <p>연말기념... 새해기원</p>
                  <ul class="list-inline">
                    <li>17.12.31</li>
                    <li>두방쓰</li>
                    <li>광화문,제야의종소리</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Project Name</h2>
                  <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/header.JPG" alt="">
                  <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Southwest</li>
                    <li>Category: Website Design</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="close-modal" data-dismiss="modal">
            <div class="lr">
              <div class="rl"></div>
            </div>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-8 mx-auto">
                <div class="modal-body">
                  <!-- Project Details Go Here -->
                  <h2 class="text-uppercase">Project Name</h2>
                  <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                  <img class="img-fluid d-block mx-auto" src="/rsc/img/header.JPG" alt="">
                  <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                  <ul class="list-inline">
                    <li>Date: January 2017</li>
                    <li>Client: Window</li>
                    <li>Category: Photography</li>
                  </ul>
                  <button class="btn btn-primary" data-dismiss="modal" type="button">
                    <i class="fas fa-times"></i>
                    Close Project</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="/rsc/js/jquery.min.js"></script>
    <script src="/rsc/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/rsc/js/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="/rsc/js/jqBootstrapValidation.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/rsc/js/agency.min.js"></script>

  </body>

  

</html>