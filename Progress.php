<?php 
session_start();
$_SESSION["progress"]=1;
if(!isset($_SESSION["login"]))
{
    header("Location: Logout.php");
}
if(isset($_SESSION["challenges"]))
{
    header("Location: Challenges.php");
}
if(isset($_SESSION["course"]))
{
    header("Location: courseWork.php");
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
        <title>PROGRESS</title>
        <script>
            function showfunc(){
                document.getElementById("Showthis").style.display = "block";
            }
            function hidefunc(){
                document.getElementById("Showthis").style.display = "none";
            }
            function show1func(){
                document.getElementById("Showthis1").style.display = "block";
                document.getElementById("Showthis2").style.display = "block";
            }
            function hide1func(){
                document.getElementById("Showthis1").style.display = "none";
                document.getElementById("Showthis2").style.display = "none";
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
            
            <li><a href="Logout.php">LOGOUT</a></li>
        </ul>
    </div>
</nav>
   <div class="container" style="position: relative;">
        <div id="mySidenav" class="sidenav" style="width:25%; margin-top: -20px;">
            <a href="page2.php" class="btn " disabled style="background-color: #C21E17; height: 80px; padding-top: 15px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 80px; padding-top: 15px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510 ;height: 80px; padding-top: 15px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn active" href="#" style="background-color: #FF8A65; height: 80px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 80px; padding-top: 30px;">CHALLENGES</a>
            <a class="btn " disabled href="#" style="background-color: #4A0707; height: 80px; padding-top: 30px;">COURSE WORK</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 80px; ;  height :480px;">
            <div style="margin-top: 25px;">
                <marquee style="color:#111111; font-family: Courier New;background:#FF8A65; margin-left: 1px">Welcome to Manipal University Feedback system portal! Your identity will not be disclosed under any circumstances.</marquee><br><br>
                <?php
                $var1=1;
                if (isset($_SESSION['varname3']))
                {
                    $var1 = $_SESSION['varname3'];
                }
                if($var1 == 0)
                {?>
                <div class='alert alert-danger'>
                    <strong>Please answer all the questions</strong>
                </div>
                <?php
                }
                ?>
                <form class="form-group formwidth" method="post" action="dataUpdateProgress.php">
            <h2>How do you rate the quality of the following facilities and services available in the campus?</h2><br><br>
            
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <th>Questions</th>
                        <th>Yes</th>
                        <th>No</th>
                        <th style="width: 200px"></th>
                    </tr>
                    <tr>
                        <td>Have you started writing your thesis?(final year only)</td>
                        <td><input type="radio" name="q5" value="Yes"></td>
                        <td><input type="radio" name="q5" value="No"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Have you attended any workshops/seminars/guest lectures in the last 6 months?</td>
                        <td><input type="radio" name="q6" value="Yes"></td>
                        <td><input type="radio" name="q6" value="No"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Have you completed DAC this semester?</td>
                        <td><input type="radio" name="q7" value="Yes" onclick="show1func()"></td>
                        <td><input type="radio" name="q7" value="No" onclick="hide1func()"></td>
                        <td></td>
                    </tr>
                    <tr id="Showthis1" style="display : none;">
                        <td>Did you receive support from your guide during DAC?</td>
                        <td><input type="radio" name="q7i" value="Yes"></td>
                        <td><input type="radio" name="q7i" value="No"></td>
                        
                    </tr>
                    <tr id="Showthis2" style="display : none;">
                        <td>Did you receive feedback from DAC members?&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;</td>
                        <td><input type="radio" name="q7ii" value="Yes"></td>
                        <td><input type="radio" name="q7ii" value="No"></td>
                        
                    </tr>
                    <tr>
                        <td>Have you published any conferences paper/journal paper in last 6 months?</td>
                        <td><input type="radio" name="q8" value="Yes" onclick="showfunc()"></td>
                        <td><input type="radio" name="q8" value="No" onclick="hidefunc()"></td>
                        <td><textarea id="Showthis" style="height: 50px;color: black;display:none"></textarea></td>
                    </tr>
                </tbody>
            </table>
            
            <button class="btn btn-primary bottom-right " style="margin-left: 45%">Submit</button>
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