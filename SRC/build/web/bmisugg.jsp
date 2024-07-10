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
	        <li class="nav-item active"><a href="uhome.jsp" class="nav-link">Home</a></li>
                  <li class="nav-item"><a href="search.jsp" class="nav-link">Search</a></li>
	          <li class="nav-item"><a href="vpreprocess.jsp" class="nav-link">View Datas</a></li>
	       
	          <li class="nav-item"><a href="req.jsp" class="nav-link">Request to Doctor</a></li>
                    <li class="nav-item"><a href="bmisugg.jsp" class="nav-link">Doctor Solution</a></li>
                  
	          <li class="nav-item"><a href="index.html" class="nav-link">Logout</a></li>
                  
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
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
     <div class="hero-wrap js-fullheight img" style="background-image: url(images/drug.jpg);">
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
                border:2px solid black ;
                margin-left:50px;
                background-color:white;
                margin-top:20px;
                color:black;
                text-align:center;
                
              
            }
            th{
                color:  #b21f2d;
                font-weight:  bolder;
                font-size:16px;
            }
            td{
                font-weight: 500;
                font-size:12px;
                color: black;
            }
            
            </style>
           
       <%
           
           String user=session.getAttribute("user").toString();
           
            %>
            
          
      <div class="scroll">
      
          
          <table>
              <h2 style="  font-size:20px; text-align:center; color:green ">View Doctor Solution Status</h2>
           <tr>
               <th>Doctor Name</th>
                <th>Symptoms</th>
                 <th>Dieases</th>
                 <th>Severity Level</th>
                 <th>Avoid Food</th>
                   <th>Recommended Drugs</th>
                 <th>Suggestions</th>
                 <th>Status</th>
                 
                
           </tr>
           <%
                 Class.forName("com.mysql.jdbc.Driver");
               Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/smarthealth","root","root");
               PreparedStatement ps=con.prepareStatement("Select * from request where user='"+user+"'");
              System.out.println(ps);
               ResultSet rs=ps.executeQuery();
               while(rs.next()){
                   String  need=rs.getString("need");
                  String dname=rs.getString("dname");
                  String symp=rs.getString("symp");
                  String dise=rs.getString("dise");
                 
                   String  sugg=rs.getString("sugg");
                   String avoid=rs.getString("avoid");
                   String drug=rs.getString("drug");
                   String status=rs.getString("status");
                  
                        
                                         %>
              
              <tr>
                <td><%=rs.getString("dname")%></td> 
                <td><%=symp%></td>
                <td><%=dise%></td>
                <td><%=need%></td>
                    <td><%=avoid%></td>
                 <td><%=drug%></td>
                  <td><%=sugg%></td> 
                   <td style=" color:red; font-weight: bolder;"><%= status%></td>
              
                </tr>
            
          <%}%>
           </table>
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