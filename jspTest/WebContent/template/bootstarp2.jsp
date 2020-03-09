<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<div class="container-fluid">
	<h1>Hello World!</h1>
	<p>Resize the browser window to see the effect.</p>
	<p>The columns will automatically stack on top of each other when the screen is less than 768px wide.</p>
	

	<iframe src="page1.html"
	width="1200" height="800">
	<div class="row">
		<div class="col-md-8">
		  <div class="btn-group-vertical">
			  <a href="page1.html" class="btn btn-info" role="button">페이지1</a>
			  <a href="page2.html" class="btn btn-info" role="button">페이지2</a>
			  <a href="page3.html" class="btn btn-info" role="button">페이지3</a>
			</div>
		  </div>
	   
		  <div class="col-md-8" style="background-color:lavenderblush;">
			  <div class="main">
				  <h1>페이지 메인</h1> <br>
				  <img class="img-thumbnail img-responsive"
				  src="image/joker.jpg" alt="">
				  </div>  
		  </div>
	  </div>

	</iframe>
  </div>