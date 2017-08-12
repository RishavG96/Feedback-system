<?php 
include("./php-wrapper/fusioncharts.php");
$hostdb = "localhost";  // MySQl host
   $userdb = "root";  // MySQL username
   $passdb = "";  // MySQL password
   $namedb = "feedback1";  // MySQL database name

   // Establish a connection to the database
   $dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb);

   /*Render an error message, to avoid abrupt failure, if the database connection parameters are incorrect */
   if ($dbhandle->connect_error) {
  	exit("There was an error with your connection: ".$dbhandle->connect_error);
   }
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width:device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="footer_css/css/zerogrid.css">
        <link rel="stylesheet" href="footer_css/css/style.css">
        <link rel="stylesheet" type="text/css" href="style2.css">
        <link  rel="stylesheet" type="text/css" href="css/style.css" />
        <script src="js1/fusioncharts.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title>FACILITIES AVAILABLE</title>
</head>
<body style="background-color: #CF4747">
    <?php
        $count22=array(0,0);
        $value22=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery22 = "SELECT q22 FROM progress ";
        $query22 = "SELECT q22 from progress";
        
     	// Execute the query, or else return the error message.
     	$result22 = $dbhandle->query($strQuery22) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result22i = $dbhandle->query($query22) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result22i->num_rows>0)
        {
            while($row22=$result22->fetch_assoc()){
                if($row22["q22"]=="Yes"){
                    $count22[0]+=1;
                }
                else if($row22["q22"]=="No"){
                    $count22[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result22) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData22 = array(
        	    "chart" => array(
                  "caption" => "Have you started writing your thesis",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData22["data"] = array();

	// Push the data into the array
        	for($x22 = 0; $x22 < 2; $x22++) {
           	array_push($arrData22["data"], array(
              	"label" => $value22[$x22],
              	"value" => $count22[$x22]
              	)
           	);
        	}
        	$jsonEncodedData22 = json_encode($arrData22);
        	$columnChart22 = new FusionCharts("column2D", "myFirstChart22" , 600, 300, "chart-22", "json", $jsonEncodedData22);
        	// Render the chart
        	$columnChart22->render();
        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
    <?php
        $count23=array(0,0);
        $value23=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery23 = "SELECT q23 FROM progress ";
        $query23 = "SELECT q23 from progress";
        
     	// Execute the query, or else return the error message.
     	$result23 = $dbhandle->query($strQuery23) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result23i = $dbhandle->query($query23) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result23i->num_rows>0)
        {
            while($row23=$result23i->fetch_assoc()){
                if($row23["q23"]=="Yes"){
                    $count23[0]+=1;
                }
                else if($row23["q23"]=="No"){
                    $count23[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result23) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData23 = array(
        	    "chart" => array(
                  "caption" => "Have you attended any workshops/seminars/guest lectures in the last 6 months",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData23["data"] = array();

	// Push the data into the array
        	for($x23 = 0; $x23 < 2; $x23++) {
           	array_push($arrData23["data"], array(
              	"label" => $value23[$x23],
              	"value" => $count23[$x23]
              	)
           	);
        	}
                $jsonEncodedData23 = json_encode($arrData23);
        	$columnChart23 = new FusionCharts("column2D", "myFirstChart23" , 600, 300, "chart-23", "json", $jsonEncodedData23);
        	// Render the chart
        	$columnChart23->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
    <?php
        $count24=array(0,0);
        $value24=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery24 = "SELECT q24 FROM progress";
        $query24 = "SELECT q24 from progress";
        
     	// Execute the query, or else return the error message.
     	$result24 = $dbhandle->query($strQuery24) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result24i = $dbhandle->query($query24) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result24i->num_rows>0)
        {
            while($row24=$result24i->fetch_assoc()){
                if($row24["q24"]=="Yes"){
                    $count24[0]+=1;
                }
                else if($row24["q24"]=="No"){
                    $count24[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result24) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData24 = array(
        	    "chart" => array(
                  "caption" => "Have you completed DAC this semester",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData24["data"] = array();

	// Push the data into the array
        	for($x24 = 0; $x24 < 2; $x24++) {
           	array_push($arrData24["data"], array(
              	"label" => $value24[$x24],
              	"value" => $count24[$x24]
              	)
           	);
        	}
        	$jsonEncodedData24 = json_encode($arrData24);
                $columnChart24 = new FusionCharts("column2D", "myFirstChart24" , 600, 300, "chart-24", "json", $jsonEncodedData24);
        	// Render the chart
        	$columnChart24->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
     <?php
        $count24i=array(0,0);
        $value24i=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery24i = "SELECT q24i FROM progress";
        $query24i = "SELECT q24i from progress";
        
     	// Execute the query, or else return the error message.
     	$result24i = $dbhandle->query($strQuery24i) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result24ii = $dbhandle->query($query24i) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result24ii->num_rows>0)
        {
            while($row24i=$result24ii->fetch_assoc()){
                if($row24i["q24i"]=="Yes"){
                    $count24i[0]+=1;
                }
                else if($row24i["q24i"]=="No"){
                    $count24i[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result24i) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData24i = array(
        	    "chart" => array(
                  "caption" => "Did you receive support from your guide during DAC",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData24i["data"] = array();

	// Push the data into the array
        	for($x24i = 0; $x24i < 2; $x24i++) {
           	array_push($arrData24i["data"], array(
              	"label" => $value24i[$x24i],
              	"value" => $count24i[$x24i]
              	)
           	);
        	}
        	$jsonEncodedData24i = json_encode($arrData24i);
                $columnChart24i = new FusionCharts("column2D", "myFirstChart24i" , 600, 300, "chart-24i", "json", $jsonEncodedData24i);
        	// Render the chart
        	$columnChart24i->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
     <?php
        $count24ii=array(0,0);
        $value24ii=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery24ii = "SELECT q24ii FROM progress";
        $query24ii = "SELECT q24ii from progress";
        
     	// Execute the query, or else return the error message.
     	$result24ii = $dbhandle->query($strQuery24ii) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result24iii = $dbhandle->query($query24ii) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result24iii->num_rows>0)
        {
            while($row24ii=$result24iii->fetch_assoc()){
                if($row24ii["q24ii"]=="Yes"){
                    $count24ii[0]+=1;
                }
                else if($row24ii["q24ii"]=="No"){
                    $count24ii[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result24ii) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData24ii = array(
        	    "chart" => array(
                  "caption" => "Have you completed DAC this semester",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData24ii["data"] = array();

	// Push the data into the array
        	for($x24ii = 0; $x24ii < 2; $x24ii++) {
           	array_push($arrData24ii["data"], array(
              	"label" => $value24ii[$x24ii],
              	"value" => $count24ii[$x24ii]
              	)
           	);
        	}
        	$jsonEncodedData24ii = json_encode($arrData24ii);
                $columnChart24ii = new FusionCharts("column2D", "myFirstChart24ii" , 600, 300, "chart-24ii", "json", $jsonEncodedData24ii);
        	// Render the chart
        	$columnChart24ii->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
     <?php
        $count25=array(0,0);
        $value25=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery25 = "SELECT q25 FROM progress";
        $query25 = "SELECT q25 from progress";
        
     	// Execute the query, or else return the error message.
     	$result25 = $dbhandle->query($strQuery25) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result25i = $dbhandle->query($query25) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result25i->num_rows>0)
        {
            while($row25=$result25i->fetch_assoc()){
                if($row25["q25"]=="Yes"){
                    $count25[0]+=1;
                }
                else if($row25["q25"]=="No"){
                    $count25[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result25) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData25 = array(
        	    "chart" => array(
                  "caption" => "Have you completed DAC this semester",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData25["data"] = array();

	// Push the data into the array
        	for($x25 = 0; $x25 < 2; $x25++) {
           	array_push($arrData25["data"], array(
              	"label" => $value25[$x25],
              	"value" => $count25[$x25]
              	)
           	);
        	}
        	$jsonEncodedData25 = json_encode($arrData25);
                $columnChart25 = new FusionCharts("column2D", "myFirstChart25" , 600, 300, "chart-25", "json", $jsonEncodedData25);
        	// Render the chart
        	$columnChart25->render();

        	// Close the database connection
        	$dbhandle->close();
     	}
        ?>
   <nav class="navbar navbar-inverse navbar-fixed-top" >
    <div class="container">
        <div class="navbar-header">
            <ul style="list-style-type: none">
            <li class="navbar-brand">MANIPAL UNIVERSITY</li>
            <li class="navbar-brand" style="padding-left: 320px">PH.D FEEDBACK</li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            
            <li><a href="Login.php">LOGOUT</a></li>
        </ul>
    </div>
</nav>
   <div class="container" style="position: relative;">
        <div id="mySidenav" class="sidenav" style="width:25%;">
            <a href="DRGuidanceGraph.php" class="btn " style="background-color:#C21E17 ; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn active"  href="DRFacilitiesGraph.php" style="background-color: #A11913; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn "  href="DRWorkBalGraph.php" style="background-color:#861510  ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn "  href="DRProgressGraph.php" style="background-color:  #FF8A65; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn "  href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px; ;  height :450px;">
            <div style="margin-top: 25px;">
                <div style="margin-left: 130px" id="chart-22"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-23"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-24"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-24i"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-24ii"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-25"><!-- Fusion Charts will render here--></div><br>
        </div>
            </div>
   <footer >
       <div style=" position: fixed;height: 30px;background-color: black;bottom: 0px;left: 0px;right: 0px;margin-bottom: 0px;">
           <center style="color: whitesmoke;">Designed and Developed by Information and Communication Technology Department.</center>
       </div>
</footer>
   </div>
</body>
</html>