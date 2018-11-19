<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
이동된 view : ${eno}
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
<style>
#contact {
cursor: pointer;
}

</style>

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
<body>
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
                    <input class="form-control" name="etitle" id="bititle" type="text" value="${event.etitle }" required="required" data-validation-required-message="Please enter your name.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="bidate" name="edate" type="date" value="${event.edate }" required="required" data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="bicontent" name="econtent" type="text" value="${event.econtent }" required="required" data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                   <img class="form-control" id="bipicture" style="width: 250px; height: 250px;" src="/rsc/img/upload/${event.epicture}"onclick="openFile()">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <input type="file" id="file" name="epicture" onchange="imageChange(event)" style="display: none">
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="update" class="btn btn-primary btn-xl text-uppercase" type="button" onclick="addQuestion()">Update</button>
                  <button id="delete" class="btn btn-primary btn-xl text-uppercase" type="button" onclick="addQuestion()">Delete</button>
                </div> 
              </div>
            </form>  
          </div>
        </div>
      </div>
    </section>
</body>
<script>
document.querySelector('#update').onclick = function(){
	var tittle = document.querySelector('#bititle').value;
	var date = document.querySelector('#bidate').value;
	var content = document.querySelector('#bicontent').value;
	var picture = document.querySelector('#bipicture').value;
	
	var params = {
			etitle : tittle,
			edate : date,
			econtent : content,
			epicture : picture,
			
	};
	params = JSON.stringify(params);
 	var conf = {
			url : '/love2/' + ${event.eno},
			method : 'PUT',
			param : params,
			success : function(res){
				if(res=='1'){
					alert("수정ㅇㅋ");
					location.href ="/url/love:love";
				}
			}
	}
 	
	var au = new AjaxUtil(conf);
	au.send();
}

document.querySelector('#delete').onclick = function(){
	
	var conf = {
			url : '/love2/' + ${event.eno},
			method : 'DELETE',
			success : function(res){
				if(res=='1'){
					alert("삭제 ㅇㅋ"
					);
					location.href ="/url/love:love";
				}
			}
	}
	var au = new AjaxUtil(conf);
	au.send();
}

</script>
 