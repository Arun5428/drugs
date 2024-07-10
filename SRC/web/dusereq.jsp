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
	     <li class="nav-item active"><a href="dhome.jsp" class="nav-link">Home</a></li>
                 <li class="nav-item"><a href="vdata.jsp" class="nav-link">View Data</a></li>
                  <li class="nav-item"><a href="Gisol.jsp" class="nav-link">Solution Status </a></li>
	          <li class="nav-item"><a href="dusereq.jsp" class="nav-link">Give Solution</a></li>
	         
                  <li class="nav-item"><a href="graph2.jsp" class="nav-link">Graph</a></li>
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
	        		
                           <div class="scroll">
           <h3 style="color:green;font-size:20px; font-weight:bolder;text-align:center;">View User details and Give Suggestions</h3>
                <Style>
            h1{
                color:white;
                font-size:10px;
                text-align:center;
            }
            table,tr,td,th{
                border:2px solid #a1dd70;
                margin-left:160px;
                background-color:white;
                margin-top:20px;
                color:black;
                text-align:center;
                width: 600px;
                
              
            }
            th{
                color:black;
                font-weight:  bolder;
                font-size:18px;
            }
            td{
                font-weight: 500;
                font-size:14px;
            }
            
            </style>
           
           
           <%String dname=session.getAttribute("dname").toString();
           %>
       <table>
           <tr>
         
                <th>Username</th>
                 <th>Symptoms</th>
                 <th>Diseases</th>
                 <th>Solution</th>
              
                
           </tr>
           <%
               Class.forName("com.mysql.jdbc.Driver");
              Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth","root","root");
               PreparedStatement ps=con.prepareStatement("Select * from request where dname='"+dname+"'  ");
              System.out.println(ps);
               ResultSet rs=ps.executeQuery();
               while(rs.next()){
                   String  user=rs.getString("user");
                  
                   String symp=rs.getString("symp");
             String dise=rs.getString("dise");
             String sno=rs.getString("sno");
             
                        
                                         %>
              
              <tr>
                  
                <td><%=rs.getString("user")%></td> 
                <td><%=symp%></td>
                <td><%=dise%></td>
                 
                <td><a href="sugg1.jsp?sno=<%=sno%>">Give Solution</a></td>
                </tr>
            
          <%}%>
           </table>
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