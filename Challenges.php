<?php 
session_start();
session_unset();
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
        <script src="js/bootstrap.min.js"></script>
        <title>CHALLENGES</title>
</head>
<body style="background-color: #CF4747">
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
        <div id="mySidenav" class="sidenav" style="width:25%; margin-top: -20px;">
            <a href="page2.php" class="btn " disabled style="background-color: #C21E17; height: 80px; padding-top: 15px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 80px; padding-top: 15px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510 ;height: 80px; padding-top: 15px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 80px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn active" href="#" style="background-color: #FF8A65; height: 80px; padding-top: 30px;">CHALLENGES</a>
            <a class="btn " disabled href="#" style="background-color: #4A0707; height: 80px; padding-top: 30px;">COURSE WORK</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 80px; ;  height :480px;">
        <div style="margin-top : 3%;">
            <marquee style="color:#111111; font-family: Courier New;background:#FF8A65; margin-left: 1px">Welcome to Manipal University Feedback system portal! Your identity will not be disclosed under any circumstances.</marquee><br><br>
            <?php
                $var1=1;
                if (isset($_SESSION['varname4']))
                {
                    $var1 = $_SESSION['varname4'];
                }
                if($var1 == 0)
                {?>
                <div class='alert alert-danger'>
                    <strong>Please answer all the questions</strong>
                </div>
                <?php
                }
                ?>
            <form class="form-group formwidth" method="post" action="dataUpdateChallenge.php">
                <h3>Which of the following would you say is the most difficult for PhD's in your discipline? </h3><br>
                <input type="checkbox" name="q1" value="Learning what career possibilities exist">Learning what career possibilities exist<br>
                <input type="checkbox" name="q2" value="Finding research careers within academia">Finding research careers within academia<br>
                <input type="checkbox" name="q3" value="Finding research careers within industry">Finding research careers within industry<br>
                <input type="checkbox" name="q4" value="Finding research careers within government">Finding research careers within government<br>
                <input type="checkbox" name="q5" value="Finding research careers with charity/non-profit organisations">Finding research careers with charity/non-profit organisations<br>
                <input type="checkbox" name="q6" value="Finding non-research careers that use your skills">Finding non-research careers that use your skills<br>
                <input type="checkbox" name="q7" value="Others">Others<br>
                
                
                <h3>Any other Comments</h3>
                <input type="text" name="q8" style="margin-left: 0.1%;width:500px; height: 100px; padding: 0; color: black"><br><br>
                
                <button class="btn btn-primary" style="margin-left: 45%">Submit</button>
            </form>
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