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
        <title>Showing all students</title>
</head>
<body style="background-color: #CF4747">
   
    <?php
    
        $count=array(0,0,0,0,0);
        $value=array("Always Available","Available most of the time","Sometimes available","Rarely Available","Not available at all");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery = "SELECT q1 FROM guidance ";
        $query = "SELECT q1 from guidance";
        
     	// Execute the query, or else return the error message.
     	$result = $dbhandle->query($strQuery) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result1 = $dbhandle->query($query) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result1->num_rows>0)
        {
            while($row=$result1->fetch_assoc()){
                if($row["q1"]=="Always Available"){
                    $count[0]+=1;
                }
                else if($row["q1"]=="Available most of the time"){
                    $count[1]+=1;
                }
                else if($row["q1"]=="Sometimes available"){
                    $count[2]+=1;
                }
                else if($row["q1"]=="Rarely Available"){
                    $count[3]+=1;
                }
                else if($row["q1"]=="Not available at all"){
                    $count[4]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData = array(
        	    "chart" => array(
                  "caption" => "To what extent is your guide available when you had queries/issues",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData["data"] = array();

	// Push the data into the array
        	for($x = 0; $x < 5; $x++) {
           	array_push($arrData["data"], array(
              	"label" => $value[$x],
              	"value" => $count[$x]
              	)
           	);
        	}

        	

        	$jsonEncodedData = json_encode($arrData);
        	$columnChart = new FusionCharts("column2D", "myFirstChart" , 600, 300, "chart-1", "json", $jsonEncodedData);

        	// Render the chart
        	$columnChart->render();

        	// Close the database connection
                //$dbhandle->close();
     	}
        ?>
    
    <?php
        $count2=array(0,0,0,0,0);
        $value2=array("Extremely useful","Very useful","Moderately useful","Rarely useful","Not useful at all");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery2 = "SELECT q2 FROM guidance ";
        $query2 = "SELECT q2 from guidance";
        
     	// Execute the query, or else return the error message.
     	$result2 = $dbhandle->query($strQuery2) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result3 = $dbhandle->query($query2) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result3->num_rows>0)
        {
            while($row2=$result3->fetch_assoc()){
                if($row2["q2"]=="Extremely useful"){
                    $count2[0]+=1;
                }
                else if($row2["q2"]=="Very useful"){
                    $count2[1]+=1;
                }
                else if($row2["q2"]=="Moderately useful"){
                    $count2[2]+=1;
                }
                else if($row2["q2"]=="Rarely useful"){
                    $count2[3]+=1;
                }
                else if($row2["q2"]=="Not useful at all"){
                    $count2[4]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result2) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData1 = array(
        	    "chart" => array(
                  "caption" => "How useful is your guide's feedback",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData1["data"] = array();

	// Push the data into the array
        	for($x1 = 0; $x1 < 5; $x1++) {
           	array_push($arrData1["data"], array(
              	"label" => $value2[$x1],
              	"value" => $count2[$x1]
              	)
           	);
        	}

        	/*JSON Encode the data to retrieve the string containing the JSON representation of the data in the array. */

        	$jsonEncodedData1 = json_encode($arrData1);

	/*Create an object for the column chart using the FusionCharts PHP class constructor. Syntax for the constructor is ` FusionCharts("type of chart", "unique chart id", width of the chart, height of the chart, "div id to render the chart", "data format", "data source")`. Because we are using JSON data to render the chart, the data format will be `json`. The variable `$jsonEncodeData` holds all the JSON data for the chart, and will be passed as the value for the data source parameter of the constructor.*/

        	$columnChart1 = new FusionCharts("column2D", "myFirstChart1" , 600, 300, "chart-2", "json", $jsonEncodedData1);

        	// Render the chart
        	$columnChart1->render();

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
            <a href="page2.php" class="btn active " style="background-color: #FF8A65; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #C21E17; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #A11913 ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #861510; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px; ;  height :450px;">
            <div style="margin-top: 25px;">
                <div style="margin-left: 130px" id="chart-1"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-2"><!-- Fusion Charts will render here--></div><br>
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