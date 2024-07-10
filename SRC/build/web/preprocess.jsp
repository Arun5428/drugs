<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        div.scroll {
padding:4px;
background-color: white;
width: 1200px;
height: 500px;
overflow-x: auto;
overflow-y: auto;
text-align:justify;
margin-left:-100px;
margin-top:200px;

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
	       <li class="nav-item active"><a href="ahome.jsp" class="nav-link">Home</a></li>
                  <li class="nav-item"><a href="upload.jsp" class="nav-link">Upload DataSet</a></li>
	          <li class="nav-item"><a href="preprocess.jsp" class="nav-link">Pre-Processed Data</a></li>
	          <li class="nav-item"><a href="drug.jsp" class="nav-link">Drug Prediction</a></li>
	        
                  <li class="nav-item"><a href="graph.jsp" class="nav-link">Graph</a></li>
	          <li class="nav-item"><a href="index.html" class="nav-link">Logout</a></li>
	         
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight img" style="background-image: url(images/drug1.jpg);">
      <div class="overlay" style="background-color: rgba(0,0,0,0.8)"></div>
      <div class="container-fluid px-0">
      	<div class="row d-md-flex no-gutters slider-text align-items-center js-fullheight justify-content-center">
	        <div class="col-md-8 text-center d-flex align-items-center ftco-animate js-fullheight">
	        	<div class="text mt-5">
                          <br>
                            <br>
                             <style>
           
           
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
             
             </style>
                                            <div class="login">
                <Style>
            h1{
                color:white;
                font-size:10px;
                text-align:center;
            }
            table,tr,td,th{
                border:2px solid #a1dd70;
                margin-left:10px;
                background-color:white;
                margin-top:10px;
                color:black;
                text-align:center;
                
              
            }
            th{
                color:black;
                font-weight:  bolder;
                font-size:16px;
            }
            td{
                font-weight: 500;
                font-size:12px;
            }
            
            </style>
           
       <% Class.forName("com.mysql.jdbc.Driver");
              Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth","root","root");
                   PreparedStatement ps1=con.prepareStatement("Select count(*)total from datas");
                    ResultSet sa=ps1.executeQuery();
                    int Total=0;
                      if(sa.next())
            {
                    Total=sa.getInt("total");
            }
            %>
            
            <h3 style=" font-size:15px;margin-left: -850px; color:whitesmoke; margin-bottom: -200px;">Total Count: <span style="color: aqua; font-weight:bolder;"><%=Total%></span>  </h3>
     
      <div class="scroll">
       <table>
           <tr>
               <th>S.No</th>
                <th>Reasons</th>
                 <th>Product Type</th>
                 <th>Way of Taken</th>
                 <th>Brand name</th>
                 <th>Generic Name</th>
                 <th>Gender</th>
                  <th>Drug Form</th>
                
           </tr>
           <%
              PreparedStatement ps=con.prepareStatement("Select * from datas");
              System.out.println(ps);
               ResultSet rs=ps.executeQuery();
               while(rs.next()){
                   String  reaction=rs.getString("reaction");
                   String type=rs.getString("type");
                   String route=rs.getString("route");
                   String brandname=rs.getString("brandname");
                   String genericname=rs.getString("genericname");
                   String sex=rs.getString("sex");
               String drugdosage=rs.getString("drugdosage");
                        
                                         %>
              
              <tr>
                <td><%=rs.getString("sno")%></td> 
                <td><%=reaction%></td>
                <td><%=type%></td>
                    <td><%=route%></td>
                 <td><%=brandname%></td>
                  <td><%=genericname%></td> 
                       <td><%=sex%></td>
                <td><%=drugdosage%></td>
              
                </tr>
            
          <%}%>
           </table>
      </div>
	       
	         
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  </div>
             
             
             
             
	        </div>
	    	</div>
      <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                                <br>
<br>
                <br>
                <br>
                <br>
                <br>
                <br>
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
