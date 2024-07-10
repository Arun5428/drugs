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
      <style>
    .calculator {
        display: flex;
        flex-direction: column;
        width: fit-content;
        height: min-content;
        background-color: #f1f1f1;
        padding: 50px;
        border-radius: 10px;
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.2);
        margin: 0 auto;
        margin-top: 50px;
        flex-wrap: wrap;
    }
 
    .form {
        margin: 40px auto 0 auto;
    }
 
    .input-value {
        display: flex;
        flex-direction: row;
        justify-content: center;
    }
 
    #height,
    #weight {
        width: 400px;
    }
 
    #weight-unit,
    #height-unit {
        width: fit-content;
    }
 
    .input-value * {
        margin: 0 5px;
    }
</style>
    
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
	       
	          <li class="nav-item"><a href="bmi.jsp" class="nav-link">Calculate BMI</a></li>
                    <li class="nav-item"><a href="bmisugg.jsp" class="nav-link">Suggestion based BMI</a></li>
                  <li class="nav-item"><a href="graph1.jsp" class="nav-link">Graph</a></li>
	          <li class="nav-item"><a href="index.html" class="nav-link">Logout</a></li>
                  
                  
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight img" style="background-image: url(images/drug.jpg);">
      <div class="overlay"></div>
      <div class="container-fluid px-0">
      	<div class="row d-md-flex no-gutters slider-text align-items-center js-fullheight justify-content-center">
	        <div class="col-md-8 text-center d-flex align-items-center ftco-animate js-fullheight">
	        	<div class="text mt-5">
	           <div class="calculator">
        <h1 class="text-center" style=" color:black; font-size:15px; font-weight: bolder;">BMI Calculator</h1>
       <%
       
       
       String user=session.getAttribute("user").toString();
       
       %>
        <div class="form">
            <form action="baction.jsp" method="post">
                
            <div class="mb-3">
                <input type="hidden"  name="user" value="<%=user%>">
                <label class="form-label">
                    Height:
                    <div class="input-value">
                        <input id="height" class="form-range" type="range" value="1" min="1" max="300" name="height"/>
                        <span id="height-value">0</span>
                        <!-- Select Height unit -->
                        <select id="height-unit" class="form-select" name="height">
                            <option value="cm">cm</option>
                            <option value="m">m</option>
                            <option value="in">in</option>
                            <option value="ft">ft</option>
                        </select>
                    </div>
                </label class="form-label">
            </div>
            <div class="mb-3">
                <label class="form-label">
                    Weight:
                    <div class="input-value">
                        <input id="weight" class="form-range" type="range" value="1" min="1" max="300" name="weight" />
                        <span id="weight-value">0</span>
                        <!-- Select Weight unit -->
                        <select id="weight-unit" class="form-select" name="weight">
                            <option value="kg">kg</option>
                            <option value="g">g</option>
                            <option value="lbs">lbs</option>
                            <option value="oz">oz</option>
                        </select>
                    </div>
                </label>
            </div>
            
            
                
                   <h1 class="bmi"  name="bmi" style="color: black;"></h1>
            <h2 class="remark" name="remark"></h2>
           
             <input type="submit" value="Submit">
                  </form> 
        </div>
        
    
         
        </div>
        
           <script>
               
             const height = document.getElementById("height");
const weight = document.getElementById("weight");
 
const bmiElem = document.querySelector(".bmi");
const remarkElem = document.querySelector(".remark");
 
const heightUnit = document.getElementById("height-unit");
const weightUnit = document.getElementById("weight-unit");
 
const heightValue = document.getElementById("height-value");
const weightValue = document.getElementById("weight-value");
 
let textColor = "green";
let remark = "Normal";
let bmi = 0;
 
bmiElem.innerHTML = bmi;
 
function resetDefault(height, weight) {
  if (height !== null) {
    height.value = height;
  }
  if (weight !== null) {
    weight.value = weight;
  }
}
 
function updateValue(bmi, remark, textColor) {
  bmiElem.innerHTML = `${bmi.toPrecision(4)}`;
  remarkElem.innerHTML = remark;
  remarkElem.style.color = textColor;
}
 
function calculateBMI(height, weight) {
  const heightUnit = document.getElementById("height-unit").value;
  const weightUnit = document.getElementById("weight-unit").value;
 
  // Convert height to meter
 
  if (heightUnit === "cm") {
    height /= 100;
  } else if (heightUnit === "in") {
    height /= 39.37;
  } else if (heightUnit === "ft") {
    height /= 3.281;
  }
 
  // Convert weight to kg
 
  if (weightUnit === "g") {
    weight /= 1000;
  } else if (weightUnit === "lbs") {
    weight /= 2.205;
  } else if (weightUnit === "oz") {
    weight /= 35.274;
  }
 
  // calculate bmi from height in meter and weight in kg
  bmi = weight / (height * height);
 
  if (bmi < 18.5) {
    remark = "Underweight";
    textColor = "red";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    remark = "Normal";
    textColor = "green";
  } else if (bmi >= 25 && bmi <= 29.9) {
    remark = "Overweight";
    textColor = "orange";
  } else if (bmi >= 30) {
    remark = "Obese";
    textColor = "red";
  }
 
  updateValue(bmi, remark, textColor);
}
 
// Adjust the min and max attribute of the height and weight input range
heightUnit.addEventListener("change", () => {
  const heightUnitValue = heightUnit.value;
  if (heightUnitValue === "cm") {
    height.min = 1;
    height.max = 300;
    resetDefault(1, null);
  } else if (heightUnitValue === "m") {
    height.min = 1;
    height.max = 5;
    resetDefault(1, null);
  } else if (heightUnitValue === "in") {
    height.min = 1;
    height.max = 118;
    resetDefault(1, null);
  } else if (heightUnitValue === "ft") {
    height.min = 1;
    height.max = 9;
    resetDefault(1, null);
  }
  calculateBMI(height.value, weight.value);
});
 
weightUnit.addEventListener("change", () => {
  const weightUnitValue = weightUnit.value;
  if (weightUnitValue === "kg") {
    weight.min = 1;
    weight.max = 300;
    resetDefault(null, 1);
  } else if (weightUnitValue === "g") {
    weight.min = 1000;
    weight.max = 300000;
    resetDefault(null, 1);
  } else if (weightUnitValue === "lbs") {
    weight.min = 2;
    weight.max = 661;
    resetDefault(null, 1);
  } else if (weightUnitValue === "oz") {
    weight.min = 35;
    weight.max = 10582;
    resetDefault(null, 1);
  }
  calculateBMI(height.value, weight.value);
});
 
height.addEventListener("input", () => {
  heightValue.innerHTML = height.value;
  calculateBMI(height.value, weight.value);
});
weight.addEventListener("input", () => {
  weightValue.innerHTML = weight.value;
  calculateBMI(height.value, weight.value);
})  
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               </script>
       
     
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