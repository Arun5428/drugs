<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Ignite - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
           
           
 .login form{
    background-color: transparent;
    padding: 15px 7.5px;
    width: 60%;
    height: 20%;
    text-align: center;
    margin-left: 200px;
    margin-bottom: 100px;
       box-shadow: rgba(0.2,0,0.1,0);
}


.input-field{
    position: relative;
    padding: 10px ;
    
} 

/* .container form{
    position: relative;
    margin-top: 16px;
    min-height: 490px;
    background-color: #f2f2f2;
    overflow: hidden;
    
    
    
}*/
.fields{

  left: 50px;
    position: relative;
   width: 70%;
    border-radius: 6px;
    padding:  20px 30px ;
    margin: 0 15px;
    bottom: -10px;

    background-color: #f8f0f0;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1) ;
    
}
.input-field label{
    position: absolute;
    left: 40px;
    opacity: 0;
    color:  transparent;
    pointer-events: none;
    transform: translateY(1rem);
    transition: 150ms cubic-bezier(0.4,0,0.2,1);
}

.input-field input{
    border: solid 1.5px #9e9e9e;
     border-radius: 1rem;
     background: none;
     padding: 5px;
    color:#333;
    transition: 150ms cubic-bezier(0.4,0,0.2,1);

    
    
}
.input-field select {
    border: solid 1.5px #9e9e9e;
    border-radius: 1rem;
    background: none;
    padding: 10px;
   color:#333;
   transition: 150ms cubic-bezier(0.4,0,0.2,1);

    
}

.input-field input:focus{
    outline: none;
    border: 1.5px solid #1a73e8;
}

.input-field select:focus{
    outline: none;
    border: 1.5px solid #1a73e8;
}

.input-field select:focus ~ label,
.input-field input:focus ~ label{
    transform: translateY(-50%) scale(0.8);
    background-color: #fff;
    padding: 0 0.2em;
    color: #5c26c2;
    font-size: 20px;
    opacity: 1;
}
input::placeholder{
    color: #333030;
}

.input-field input[type="date"]{
color: #707070;
width: 100%;
    
}
.input-field input[type="data"]:valid{
    color: #333;
}


 form button {
    padding: 5px 30px;
   
    color:#fff;
    border-radius: 5px;
    margin:20px  ;
    background-color: #4070f4;
    transition: all 0.3s linear;
    cursor: pointer;
    
}
form button:hover{
    background: green;
}









             
             </style>
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html"> Textual Information Fusion </a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="admin.jsp" class="nav-link">Admin</a></li>
	          <li class="nav-item"><a href="user.jsp" class="nav-link">User</a></li>
	          <li class="nav-item"><a href="doctor.jsp" class="nav-link">Doctor</a></li>
	         
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight img" style="background-image: url(images/drug.jpg);">
      <div class="overlay" style="background-color: rgba(0,0,0,0.8)"></div>
      <div class="container-fluid px-0">
      	<div class="row d-md-flex no-gutters slider-text align-items-center js-fullheight justify-content-center">
	        <div class="col-md-8 text-center d-flex align-items-center ftco-animate js-fullheight">
	        	<div class="text mt-5">
                            <br>
                            <br>
                            <br>
                            <span class="subheading" style=" margin-top:-500px;">New Doctor!!</span>
                            <br>
                            <br>
                             
<!--                             <style>
           
           
 .login form{
    background-color: rgba(250,250,250,0.1);
    padding: 15px 7.5px;
    width: 40%;
    height: 20%;
    text-align: center;
    margin-left: 255px;
    margin-bottom: 100px;
        border: 2px solid black;
}
.login form input {
    width: 100%;
    height: 5px;
    background-color: rgba(250,250,250,0.1);
    border-radius: 0px;
    border: none;
    outline: none;
    color: #fff;
    font-size: 15px;
    margin-bottom: 10px;
    letter-spacing: 0.5px;
    text-align: center;

    
}
.login input:focus{
     outline: none;
    border: none;
    box-shadow: none;
    color: black;
    background-color: rgba(250,250,250,0.1);
    
}
.login placeholder{ color: black  ; text-align: center;}
.login input::placeholder { color: black;text-align: center; }
.login coming-soon form button {
    margin-top: 10px;
    background-color: #f5a425;
    color: #fff;
    font-size: 13px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    font-weight: 700;
    padding: 12px 20px;
    display: inline-block;
    outline: none;
    box-shadow: none;
    
}
             
             </style>-->
                                            <div class="login">
           
                                                <form action="dreginc.jsp" method="post" >
<!--              <div class="row">
            
                 
                <div class="col-md-12">
                    
                  <fieldset>
                    <input name="dname" type="text" class="form-control"  placeholder="User Name" required="">
                  </fieldset>
                </div>
                <div class="col-md-12">
                  <fieldset>
                  <input name="pass" type="password" class="form-control"  placeholder="Create Password" required="">
                  </fieldset>
                </div>
                <div class="col-md-12">
                  <fieldset>
                    <input name="email" type="email" class="form-control"  placeholder="Email" required="">
                  </fieldset>
                </div>
                 <div class="col-md-12">
                  <fieldset>
                    <input name="spec" type="text" class="form-control"  placeholder="Specialist" required="">
                  </fieldset>
                </div>
                  
                   <div class="col-md-12">
                  <fieldset>
                     <input name="contact" type="text" class="form-control"  placeholder="ContactNo" required="">
                  </fieldset>
                </div>
                    <div class="col-md-12">
                  <fieldset>
                      <input name="location" type="text" class="form-control"  placeholder="Location" required="">
                  </fieldset>
                </div>
                
                <div class="col-md-12">
                  <fieldset>
                      <button type="submit" id="form-submit" class="button" style=" background-color:#a1dd70; color: whitesmoke; ">Login</button> 
                  </fieldset>
                </div>
              </div>-->


<div class="fields">
                        <div class="input-field">
                           
                            <input type="text" placeholder="UserName" name="user" required> 
                            <label for="">UserName</label>   
                        </div>
                       
                        <div class="input-field">
                            
                            <input type="text" placeholder="Create Password" name="pass" required> 
                            <label for="">Password</label>   
                        </div>
                        <div class="input-field">
                            
                            <input type="text" placeholder="Email" name="email" required>
                            <label for="">Email</label>    
                        </div>
                             <div class="input-field">
                            
                            <input type="text" placeholder="Specialist" name="email" required>
                            <label for="">Specialist</label>    
                        </div>
                         <div class="input-field">
                            
                            <input type="text" name="contact" placeholder="ContactNo" required>
                            <label for="">Contact</label>    
                        </div>

                        <div class="input-field">
                            
                            <input type="text" name="location" placeholder="Location" required>
                            <label for="">Location</label>    
                        </div>
                        <div>
                           
                                <button type="submit" id="form-submit" class="nextBtn" >Login</button> 
                              
                            
                            
                        </div>

                     </div>
            </form>
	        
	          </div>
	        </div>
	    	</div>
      </div>
    </div>
 

   
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>

