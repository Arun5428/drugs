<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	          <li class="nav-item active"><a href="ahome.jsp" class="nav-link">Home</a></li>
                  <li class="nav-item"><a href="upload.jsp" class="nav-link">Upload DataSet</a></li>
	          <li class="nav-item"><a href="preprocess.jsp" class="nav-link">Pre-Processing</a></li>
	          <li class="nav-item"><a href="drug.jsp" class="nav-link">Drug Prediction</a></li>
	          <li class="nav-item"><a href="vbmi.jsp" class="nav-link">View BMI</a></li>
                  <li class="nav-item"><a href="graph.jsp" class="nav-link">Graph</a></li>
	          <li class="nav-item"><a href="index.html" class="nav-link">Logout</a></li>
                  
                  
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
                            
                            
                            
         
                            
                            
                            
                            
                     <style>   
                         table,tr,td,th{
                            display:inline-block;
                            max-width:200px;
                             text-align:center;
                            
                         }
                        select,option{
                             width:200px;
                             height:40px;
                             text-align:center;
                         }
                           </style>
                
             <%
                 String sno=request.getParameter("sno");
            Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/smarthealth","root","root");
            PreparedStatement ps=con.prepareStatement("Select * from bmi where sno='"+sno+"'");
             ResultSet rs=ps.executeQuery();
             while(rs.next()){
                 String user=rs.getString("user");
                 String height=rs.getString("height");
                 String weight=rs.getString("weight");
                 
             

             
             
             
             %>
             <form action="suggaction.jsp" method="post">
             <table>
                 <input type="hidden" value="<%=sno%>" name="sno">
                 <tr><td style=" color:white;">UserName:</td><td><input type="text" name="user" value="<%=user%>" style=" text-align:center;"></td></tr>
                <tr><td><label style=" color: white;">Need To Do:<label></td><td><Select name="need">
                                         <option>---Choose---</option>
                     <option>Need to Weight Gain</option>
                     <option>Need to Weight Gain</option>
                    <option>Maintain this Weight</option>
               </select></td></tr>
              <tr><td style=" color:white;">Give Suggestions:</td>
                 <td><input type="text" name="sugg" value=""></td></tr>
              
              <tr><td style=" color:white;">Avoid Foods:</td>
                 <td><input type="text" name="avoid" value=""></td></tr>
           <tr><td><input type="submit" value="Submit" name="submit"></td></tr>
             </table>
             
             
             </form>
	        <%}%>
	          </div>
	        </div>
	    	</div>
      </div>
    </div>
 

   
    
  
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