<?php 
session_start();
$_SESSION["course"]=1;
if(!isset($_SESSION["login"]))
{
    header("Location: Logout.php");
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
            <li class="navbar-brand"><img src="images/Manipal.jpg" style="height: 38px;width: 250px; background-color: white; margin-left: -110px;margin-top: -10px;"></li>
            <li class="navbar-brand" style="padding-left: 320px"></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            
            <li><a href="Logout.php">LOGOUT</a></li>
        </ul>4A0707
    </div>
</nav>
   <div class="container" style="position: relative;">
        <div id="mySidenav" class="sidenav" style="width:25%; ">
          <a class="btn" disabled href="" style="background-color: #C21E17; height: 80px; padding-top: 15px">FACILITIES <br>AVAILABLE</a>
          <a class="btn active" href="courseWork.php" style="background-color: #FF8A65; height: 80px; padding-top: 30px;">COURSE WORK</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 80px; padding-top: 30px;" >PROGRESS</a>
            <a href="#" class="btn " disabled style="background-color: #861510; height: 80px; padding-top: 15px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B ;height: 80px; padding-top: 15px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #4A0707; height: 80px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px; ;  height :480px;">
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
                            <td><select style="background-color:#1d262b;width : 200px;"onchange="showfunc()" name="q33" id="quest">
                                    <option>--Choose an option--</option>
                                            <option value="PartTime">Part-Time</option>
                                            <option value="FullTime">Full-Time</option>
                                </select></td>
                        </tr>
                        <tr id="Show1" style="display: none;">
                            <td>What do you prefer? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td><select style="background-color:#1d262b;width : 200px;" name="q34">
                                <option>--Choose an option--</option>
                                <option value="First 3 months Full Time">First 3 months Full Time</option>
                                <option value="Within First 6 months">Within First 6 months</option>
                                <option value="2-3 hours everyday">2-3 hours everyday</option>
                                <option value="Within One year">Within One Year(As it is now)</option>
                                </select></td>
                        </tr>
                    </table>
                    <br><br>
                    <h4 style="margin-left: 10px;">Suggestion Regarding Course Work(12 credits) :</h4><br>
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