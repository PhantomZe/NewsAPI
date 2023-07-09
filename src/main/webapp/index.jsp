<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>News API</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<style>
	#wrap-it {
	word-wrap: break-word;
	display: inline-block;
	}
</style>
<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-6">
                <a href="" class="text-decoration-none">
                    <span class="h1 text-uppercase text-primary bg-dark px-2">News</span>
                    <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">API</span>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-right">
                <p class="m-0">Customer Service</p>
                <h5 class="m-0">+012 345 6789</h5>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <span class="h1 text-uppercase text-dark bg-light px-2">News</span>
                        <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">API</span>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="/NewsAPI" class="nav-item nav-link active">Home</a>
                            
                            <a href="/NewsAPI" class="nav-item nav-link">Contact</a>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="col-lg-3">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <a href="#" class="nav-item nav-link" id="business">Business</a>
                        <a href="#" class="nav-item nav-link" id="entertainment">Entertainment</a>
                        <a href="#" class="nav-item nav-link" id="general">General</a>
                        <a href="#" class="nav-item nav-link" id="health">Health</a>
                        <a href="#" class="nav-item nav-link" id="science">Science</a>
                        <a href="#" class="nav-item nav-link" id="sports">Sports</a>
                        <a href="#" class="nav-item nav-link" id="technology">Technology</a>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-12">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#header-carousel" data-slide-to="1"></li>
                        <li data-target="#header-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" id="dataCarousel">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->

    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">News</span></h2>
       	<div class="row px-xl-5">
       		<div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5 align-items-center">
       		
       		</div>
       		<div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5 align-items-center">
	            <div class="input-group">
	                <input type="text" class="form-control" placeholder="Search for products" id="searchItem">
	                <div class="input-group-append">
	                    <span class="input-group-text bg-transparent text-primary">
		                	<a href="#" id="search">
		                        <i class="fa fa-search"></i>
		                	</a>
	                    </span>
	                </div>
	            </div>
       		</div>
       	</div>
       	
        <div class="row px-xl-5" id="dataNews" >
            
        </div>
    </div>
    <!-- Products End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-12 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                <p class="mb-4">No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor. Rebum tempor no vero est magna amet no</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, Jakarta, Indonesia</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
	<script>
		
		var dataNews;
		//Get Without Categories In the Beginning
		$(document).ready(function(){
		    $.ajax({
		        type: "GET",
		        url: "webapi/newsresource",
		        async: false,
		        success: function (data) {
		        	dataNews = data;
		        	for(i=0; i<data.length; i++){
		        		if(i<3){
		        			var divCarousel="";
		        			if(i==0){
		        				divCarousel=divCarousel+"<div class='carousel-item position-relative active' style='height: 430px;'>";
		        			}
		        			else{
		        				divCarousel=divCarousel+"<div class='carousel-item position-relative' style='height: 430px;'>"
		        			}
							
		        			divCarousel=divCarousel+"<img class='position-absolute w-100 h-100' src='img/carousel-1.jpg' style='object-fit: cover;'>"
						                        +"<div class='carousel-caption d-flex flex-column align-items-center justify-content-center'>"
						                            +"<div class='p-3' style='max-width: 700px;'>"
						                                +"<h1 class='display-4 text-white mb-3 animate__animated animate__fadeInDown'>"+data[i].title+"</h1>"
						                                +"<p class='mx-md-5 px-5 animate__animated animate__bounceIn'>Lorem rebum magna amet lorem magna erat diam stet. Sadips duo stet amet amet ndiam elitr ipsum diam "+"<a href='"+data[i].url+"' target='_blank'>Click Here to access</a></p>"
					                                +"</div>"
												+"</div>"
											+"</div>"
							$("#dataCarousel").append(divCarousel);			
		        		}
					    var divAdd = "<div class='col-lg-3 col-md-4 col-sm-6 pb-1 NewsData'>" 
											+"<div class='product-item bg-light mb-4'>"
												+"<div class='py-4 text-center'>"
													+"<h4 class ='text-center'><p id='wrap-it'>"+ data[i].author +"</p></h4>"
													+"<div class='d-flex mt-2'>"
														+"<h6>" + data[i].title + "</h6></br>"
													+"</div>"
													+"<div class='d-flex align-items-center justify-content-center mt-2'>"
														+"<a href='"+data[i].url+"' target='_blank'>Click Here to access</a>"
													+"</div>"
												+"</div>"
											+"</div>"
										+"</div>"
		        		$("#dataNews").append(divAdd);
		        			
		        	}
		        }
		    });
		});

		//Filter By Category
		$('.nav-item').on('click', function(e){
			e.preventDefault();
			$('.NewsData').remove();
			var url = "webapi/newsresource/" + this.id;
			$(document).ready(function(){
			    $.ajax({
			        type: "GET",
			        url: url,
			        async: false,
			        success: function (data) {
			        	dataNews = data;
			        	for(i=0; i<data.length; i++){
						    var divAdd = "<div class='col-lg-3 col-md-4 col-sm-6 pb-1 NewsData'>" 
												+"<div class='product-item bg-light mb-4'>"
													+"<div class='py-4 text-center'>"
														+"<h4 class ='text-center'><p id='wrap-it'>"+ data[i].author +"</p></h4>"
														+"<div class='d-flex mt-2'>"
															+"<h6>" + data[i].title + "</h6></br>"
														+"</div>"
														+"<div class='d-flex align-items-center justify-content-center mt-2'>"
															+"<a href='"+data[i].url+"' target='_blank'>Click Here to access</a>"
														+"</div>"
													+"</div>"
												+"</div>"
											+"</div>"
			        		$("#dataNews").append(divAdd);
			        			
			        	}
			        }
			    });
			});
		});
		
		//search news by the input value
		$('#search').on('click', function(e){
			e.preventDefault();
			
			var searchItem = document.getElementById('searchItem').value;

			$('.NewsData').remove();
			
			for(i=0; i<dataNews.length; i++){
				if(dataNews[i].title.toLowerCase().includes(searchItem.toLowerCase())){
					var divAdd = "<div class='col-lg-3 col-md-4 col-sm-6 pb-1 NewsData'>" 
									+"<div class='product-item bg-light mb-4'>"
										+"<div class='py-4 text-center'>"
											+"<h4 class ='text-center'><p id='wrap-it'>"+ dataNews[i].author +"</p></h4>"
											+"<div class='d-flex mt-2'>"
												+"<h6>" + dataNews[i].title + "</h6></br>"
											+"</div>"
											+"<div class='d-flex align-items-center justify-content-center mt-2'>"
												+"<a href='"+dataNews[i].url+"' target='_blank'>Click Here to access</a>"
											+"</div>"
										+"</div>"
									+"</div>"
								+"</div>"
					$("#dataNews").append(divAdd);
				}
			}
		
		});
		
	</script>
</body>

</html>