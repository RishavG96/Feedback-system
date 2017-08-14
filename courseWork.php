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
        <title>Course Work</title>
        <script>
            function showfunc(){
                if (document.getElementById("quest").value == "FullTime"){
                document.getElementById("Show1").style.display = "block";
            }
            if (document.getElementById("quest").value == "PartTime" || document.getElementById("quest").value == "--Chose an option--" ){
                document.getElementById("Show1").style.display = "none";
            }
        }
        </script>
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
        </ul>4A0707
    </div>
</nav>
   <div class="container" style="position: relative;">
        <div id="mySidenav" class="sidenav" style="width:25%; margin-top: -20px;">
            <a href="page2.php" class="btn " disabled style="background-color: #C21E17; height: 60px; padding-top: 15px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 60px; padding-top: 15px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510 ;height: 60px; padding-top: 15px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 60px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #4A0707; height: 60px; padding-top: 30px;">CHALLENGES</a>
            <a class="btn active" href="#" style="background-color: #FF8A65; height: 60px; padding-top: 30px;">COURSE WORK</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 80px; ;  height :480px;">
            <div style="margin-top: 25px;">
                <marquee style="color:#111111; font-family: Courier New;background:#FF8A65; margin-left: 1px">Welcome to Manipal University Feedback system portal! Your identity will not be disclosed under any circumstances.</marquee><br><br>
                <?php
                $var1=1;
                if (isset($_SESSION['varname5']))
                {
                    $var1 = $_SESSION['varname5'];
                }
                if($var1 == 0)
                {?>
                <div class='alert alert-danger'>
                    <strong>Please answer all the questions</strong>
                </div>
                <?php
                }
                ?>
                <form action="dataUpdateCourse.php" method="post">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <td>What kind of course are you currently enrolled in?</td>
                            <td><input type="radio" name="PartTime" value="Part-Time">
                            <input type="radio" name="FullTime" value="FullTime"></td>
                        </tr>
                        <tr>
                            <td>What do you prefer?</td>
                                    <td><input type="radio" name="First 3 months Ful Time" value="First 3 months Full Time"></td>
                                <td><input type="radio" name="Within first 6 months" value="Within First 6 months"></td>
                                <td><input type="radio" name="2-3 hours everyday" value="2-3 hours everyday"></td>
                                <td><input type="radio" name="Within one year (As it is now)" value="Within one year"></td>
                        </tr>
                    </table>
                    <h4 style="margin-left: 10px;">Suggestions Regarding Course Work(12 credits) :</h4><br>
                    <textarea style="height: 200px;color: black;width: 500px; margin-left: 10px;"></textarea><br><br>
                    
                    <button class="btn btn-primary bottom-right " style="margin-left: 45%">Submit</button><br><br>
                </form>
        </div>
            </div>
   </div>
       <footer >
       <div style=" position: fixed;height: 30px;background-color: black;bottom: 0px;left: 0px;right: 0px;margin-bottom: 0px;">
           <center style="color: whitesmoke;">Designed and Developed by Information and Communication Technology Department.</center>
       </div>
</footer>
</body>
</html>