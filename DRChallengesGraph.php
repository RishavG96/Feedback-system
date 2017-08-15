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
        <title>CHALLENGES</title>
</head>
<body style="background-color: #CF4747">
    <?php
        $count26=array(0,0,0,0,0,0,0);
        $value26=array("Learning what career possibilities exist","Finding research careers within academia","Finding research careers within industry","Finding research careers within government","Finding research careers with charity/non-profit organisations","Finding non-research careers that use your skills","Others");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery26 = "SELECT * FROM challenges";
        $query26 = "SELECT * from challenges";
        
     	// Execute the query, or else return the error message.
     	$result26 = $dbhandle->query($strQuery26) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result26i = $dbhandle->query($query26) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result26i->num_rows>0)
        {
            while($row26=$result26->fetch_assoc()){
                if($row26["q26"]=="Learning what career possibilities exist"){
                    $count26[0]+=1;
                }
                if($row26["q27"]=="Finding research careers within academia"){
                    $count26[1]+=1;
                }
                if($row26["q28"]=="Finding research careers within industry"){
                    $count26[2]+=1;
                }
                if($row26["q29"]=="Finding research careers within government"){
                    $count26[3]+=1;
                }
                if($row26["q30"]=="Finding research careers with charity/non-profit organisations"){
                    $count26[4]+=1;
                }
                if($row26["q31"]=="Finding non-research careers that use your skills"){
                    $count26[5]+=1;
                }
                if($row26["q32"]=="Others"){
                    $count26[6]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result26) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData26 = array(
        	    "chart" => array(
                  "caption" => "Which of the following would you say is the most difficult for PhD's in your discipline",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData26["data"] = array();

	// Push the data into the array
        	for($x26 = 0; $x26 < 7; $x26++) {
           	array_push($arrData26["data"], array(
              	"label" => $value26[$x26],
              	"value" => $count26[$x26]
              	)
           	);
        	}
        	$jsonEncodedData26 = json_encode($arrData26);
        	$columnChart26 = new FusionCharts("column2D", "myFirstChart26" , 600, 400, "chart-26", "json", $jsonEncodedData26);
        	// Render the chart
        	$columnChart26->render();
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
            <a class="btn "  href="DRProgressGraph.php" style="background-color: #670F0B ; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn "  href="DRChallengesGraph.php" style="background-color:#FF8A65 ; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px; ;  height :450px;">
            <div style="margin-top: 25px;">
                <div style="margin-left: 130px" id="chart-26"><!-- Fusion Charts will render here--></div><br>
                <ul class="pager">
                    <li class="previous"><a href="DRProgressGraph.php">Previous</a></li>
                    <li class="next"><a href="DRCourseGraph.php">Next</a></li>
                </ul>
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