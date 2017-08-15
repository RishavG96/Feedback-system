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
        <title>WORK AND LIFE</title>
</head>
<body style="background-color: #CF4747">
   
    <?php
    
        $count17=array(0,0,0,0);
        $value17=array("Excellent","Good","Satisfactory","Poor");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery17 = "SELECT q17 FROM  workbal";
        $query17 = "SELECT q17 from workbal";
        
     	// Execute the query, or else return the error message.
     	$result17 = $dbhandle->query($strQuery17) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result17i = $dbhandle->query($query17) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result17i->num_rows>0)
        {
            while($row17=$result17->fetch_assoc()){
                if($row17["q17"]=="Excellent"){
                    $count17[0]+=1;
                }
                else if($row17["q17"]=="Good"){
                    $count17[1]+=1;
                }
                else if($row17["q17"]=="Satisfactory"){
                    $count17[2]+=1;
                }
                else if($row17["q17"]=="Poor"){
                    $count17[3]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result17) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData17 = array(
        	    "chart" => array(
                  "caption" => "How do you rate the work atmosphere in your department",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData17["data"] = array();

	// Push the data into the array
        	for($x17 = 0; $x17 < 4; $x17++) {
           	array_push($arrData17["data"], array(
              	"label" => $value17[$x17],
              	"value" => $count17[$x17]
              	)
           	);
        	}

        	

        	$jsonEncodedData17= json_encode($arrData17);
        	$columnChart17 = new FusionCharts("column2D", "myFirstChart17" , 600, 300, "chart-17", "json", $jsonEncodedData17);

        	// Render the chart
        	$columnChart17->render();

        	// Close the database connection
                //$dbhandle->close();
     	}
        ?>
    <?php
        $count18=array(0,0,0,0,0,0,0,0,0);
        $value18=array("Less than 11 hours","11-20 hours","21-20 hours","31-40 hours","41-50 hours","51-60 hours","61-70 hours","71-80 hours","More than 80 hours");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery18 = "SELECT q18 FROM workbal";
        $query18 = "SELECT q18 from workbal";
        
     	// Execute the query, or else return the error message.
     	$result18 = $dbhandle->query($strQuery18) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result18i = $dbhandle->query($query18) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result18i->num_rows>0)
        {
            while($row18=$result18i->fetch_assoc()){
                if($row18["q18"]=="Less than 11 hours"){
                    $count18[0]+=1;
                }
                else if($row18["q18"]=="11-20 hours"){
                    $count18[1]+=1;
                }
                else if($row18["q18"]=="21-20 hours"){
                    $count18[2]+=1;
                }
                else if($row18["q18"]=="31-40 hours"){
                    $count18[3]+=1;
                }
                else if($row18["q18"]=="41-50 hours"){
                    $count18[4]+=1;
                }
                else if($row18["q18"]=="51-60 hours"){
                    $count18[5]+=1;
                }
                else if($row18["q18"]=="61-70 hours"){
                    $count18[6]+=1;
                }
                else if($row18["q18"]=="71-80 hours"){
                    $count18[7]+=1;
                }
                else if($row18["q18"]=="More than 80 hours"){
                    $count18[8]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result18) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData18 = array(
        	    "chart" => array(
                  "caption" => "How many hours do you put in for research work per week",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData18["data"] = array();

	// Push the data into the array
        	for($x18 = 0; $x18 < 9; $x18++) {
           	array_push($arrData18["data"], array(
              	"label" => $value18[$x18],
              	"value" => $count18[$x18]
              	)
           	);
        	}

        	/*JSON Encode the data to retrieve the string containing the JSON representation of the data in the array. */

        	$jsonEncodedData18 = json_encode($arrData18);

	/*Create an object for the column chart using the FusionCharts PHP class constructor. Syntax for the constructor is ` FusionCharts("type of chart", "unique chart id", width of the chart, height of the chart, "div id to render the chart", "data format", "data source")`. Because we are using JSON data to render the chart, the data format will be `json`. The variable `$jsonEncodeData` holds all the JSON data for the chart, and will be passed as the value for the data source parameter of the constructor.*/

        	$columnChart18 = new FusionCharts("column2D", "myFirstChart18" , 600, 300, "chart-18", "json", $jsonEncodedData18);

        	// Render the chart
        	$columnChart18->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
    <?php
        $count19=array(0,0,0,0,0);
        $value19=array("Extremely Supportive","Very Supportive","Moderately Supportive","Slightly Supportive","Not at all supportive");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery19 = "SELECT q19 FROM workbal ";
        $query19 = "SELECT q19 from workbal";
        
     	// Execute the query, or else return the error message.
     	$result19 = $dbhandle->query($strQuery19) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result19i = $dbhandle->query($query19) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result19i->num_rows>0)
        {
            while($row19=$result19->fetch_assoc()){
                if($row19["q19"]=="Extremely Supportive"){
                    $count19[0]+=1;
                }
                else if($row19["q19"]=="Very Supportive"){
                    $count19[1]+=1;
                }
                else if($row19["q19"]=="Moderately Supportive"){
                    $count19[2]+=1;
                }
                else if($row19["q19"]=="Slightly Supportive"){
                    $count19[3]+=1;
                }
                else if($row19["q19"]=="Not at all supportive"){
                    $count19[4]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result19) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData19 = array(
        	    "chart" => array(
                  "caption" => "To what extent do you receive support from the Head of the Department",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData19["data"] = array();

	// Push the data into the array
        	for($x19 = 0; $x19 < 5; $x19++) {
           	array_push($arrData19["data"], array(
              	"label" => $value19[$x19],
              	"value" => $count19[$x19]
              	)
           	);
        	}
                $jsonEncodedData19 = json_encode($arrData19);
        	$columnChart19 = new FusionCharts("column2D", "myFirstChart19" , 600, 300, "chart-19", "json", $jsonEncodedData19);
        	// Render the chart
        	$columnChart19->render();
        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
    <?php
    
        $count20=array(0,0);
        $value20=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery20 = "SELECT q20 FROM workbal ";
        $query20 = "SELECT q20 from workbal";
        
     	// Execute the query, or else return the error message.
     	$result20 = $dbhandle->query($strQuery20) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result20i = $dbhandle->query($query20) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result20i->num_rows>0)
        {
            while($row20=$result20->fetch_assoc()){
                if($row20["q20"]=="Yes"){
                    $count20[0]+=1;
                }
                else if($row20["q20"]=="No"){
                    $count20[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result20) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData20 = array(
        	    "chart" => array(
                  "caption" => "Are you able to balance your personal life and research work",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData20["data"] = array();

	// Push the data into the array
        	for($x20 = 0; $x20 < 2; $x20++) {
           	array_push($arrData20["data"], array(
              	"label" => $value20[$x20],
              	"value" => $count20[$x20]
              	)
           	);
        	}
        	$jsonEncodedData20 = json_encode($arrData20);
        	$columnChart20 = new FusionCharts("column2D", "myFirstChart20" , 600, 300, "chart-20", "json", $jsonEncodedData20);
        	// Render the chart
        	$columnChart20->render();
        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
    <?php
        $count21=array(0,0);
        $value21=array("Yes","No");
        // Form the SQL query that returns the top 10 most populous countries
     	$strQuery21 = "SELECT q21 FROM workbal ";
        $query21 = "SELECT q21 from workbal";
        
     	// Execute the query, or else return the error message.
     	$result21 = $dbhandle->query($strQuery21) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        $result21i = $dbhandle->query($query21) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");
        if($result21i->num_rows>0)
        {
            while($row21=$result21i->fetch_assoc()){
                if($row21["q21"]=="Yes"){
                    $count21[0]+=1;
                }
                else if($row21["q21"]=="No"){
                    $count21[1]+=1;
                }
            }
        }
     	// If the query returns a valid response, prepare the JSON string
     	if ($result21) {
        	// The `$arrData` array holds the chart attributes and data
        	$arrData21 = array(
        	    "chart" => array(
                  "caption" => "Do you receive appreciation and encouragement from your guide",
                  "showValues" => "0",
                  "theme" => "zune"
              	)
           	);

        	$arrData21["data"] = array();

	// Push the data into the array
        	for($x21 = 0; $x21 < 2; $x21++) {
           	array_push($arrData21["data"], array(
              	"label" => $value21[$x21],
              	"value" => $count21[$x21]
              	)
           	);
        	}

        	

        	$jsonEncodedData21 = json_encode($arrData21);

	

        	$columnChart21 = new FusionCharts("column2D", "myFirstChart21" , 600, 300, "chart-21", "json", $jsonEncodedData21);

        	// Render the chart
        	$columnChart21->render();

        	// Close the database connection
        	//$dbhandle->close();
     	}
        ?>
   <nav class="navbar navbar-inverse navbar-fixed-top" >
    <div class="container">
        <div class="navbar-header">
            <ul style="list-style-type: none">
             <li class="navbar-brand"><img src="images/Manipal.jpg" style="height: 38px;width: 250px; background-color: white; margin-left: -110px;margin-top: -10px;"></li>
            <li class="navbar-brand" style="padding-left: 320px"></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            
            <li><a href="Login.php">LOGOUT</a></li>
        </ul>
    </div>
</nav>
   <div class="container" style="position: relative;">
        <div id="mySidenav" class="sidenav" style="width:25%;margin-top: -20px;">
            <a href="DRGuidanceGraph.php" class="btn " style="background-color: #C21E17; height: 80px; padding-top: 15px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " href="DRFacilitiesGraph.php" style="background-color: #A11913; height: 80px; padding-top: 15px">FACILITIES <br>AVAILABLE</a>
            <a class="btn active" href="#" style="background-color: #FF8A65 ;height: 80px; padding-top: 15px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " href="DRProgressGraph.php" style="background-color: #861510; height: 80px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " href="DRChallengesGraph.php" style="background-color: #670F0B; height: 80px; padding-top: 30px;">CHALLENGES</a>
            <a class="btn " href="DRCourseGraph.php" style="background-color: #4A0707; height: 80px; padding-top: 30px;">COURSE WORK</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 80px;  height :480px;">
            <div style="margin-top: 25px;">
                <div style="margin-left: 130px" id="chart-17"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-18"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-19"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-20"><!-- Fusion Charts will render here--></div><br>
                <div style="margin-left: 130px" id="chart-21"><!-- Fusion Charts will render here--></div><br>
                <ul class="pager">
                    <li class="previous"><a href="DRFacilitiesGraph.php">Previous</a></li>
                    <li class="next"><a href="DRProgressGraph.php">Next</a></li>
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