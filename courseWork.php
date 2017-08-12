<?php 
session_start();
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
        <div id="mySidenav" class="sidenav" style="width:25%;">
            <a href="page2.php" class="btn active " style="background-color: #FF8A65; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #C21E17; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #A11913 ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #861510; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;">CHALLENGES</a>
            <a class="btn" disabled href="#" style="background-color: #C21E17; height: 90px; padding-top: 20px;">COURSE WORK</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px; ;  height :450px;">
            <div style="margin-top: 25px;">
                <marquee style="color:#FF8A65; font-family: Courier New;background:#FFEBCD">Welcome to Manipal University Feedback system portal! Please not that your identity will not be disclosed under any circumstances.</marquee><br><br>
                <?php
                $var1=1;
                if (isset($_SESSION['varname']))
                {
                    $var1 = $_SESSION['varname'];
                }
                if($var1 == 0)
                {?>
                <div class='alert alert-danger'>
                    <strong>Please answer all the questions</strong>
                </div>
                <?php
                }
                ?>
                <form class="form-group formwidth" method="post" action="dataUpdate.php">
            <table class="table table-hover">
            <tr>
                <td>Are you a part time or full time candidate?</td>
            <td><select style="background-color: #1d262b;width: 200px ;margin-top: 5px" name="available">
                <option>--Choose an option--</option>
                <option  value="Full Time">Full Time</option>
                <option  value="Part Time">Part Time</option>
                </select></td>
            </tr>
            <tr>
            <h3>Suggestions regarding course Work (12 credits)</h3>
                <td>Do you want the first three months to be full time?</td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="feedback">
                    <option>--Choose an option--</option>
                <option  value="Yes">Yes</option>
                <option  value="No">No</option>
                </select></td>
            </tr>
            <tr>
                <td>How about the first 6 months? Dp you want full time?</td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="review">
                    <option>--Choose an option--</option>
                <option  value="Yes">Yes</option>
                <option  value="No">No</option>
                </select></td>
            </tr>
            <tr>
                <td>What do you think of 2 to 3 hours of work everday?</td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="encourage">
                    <option>--Choose an option--</option>
                <option  value="Sounds Great">Sounds Great</option>
                <option  value="Good">Good</option>
                <option  value="Not acceptable">Not acceptable</option>
                </select></td>
            </tr>
            <tr>
                <td>How about within one year (as it is now)?</td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="guidance">
                    <option>--Choose an option--</option>
                <option  value="Let it remain same" >Let it remain same</option>
                <option  value="No, I don't want it ot be same">No, I don't want it to be same</option>
                </select></td>
            </tr>
            <tr>
                <td>Full time candidates, what do you prefer?</td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="improvement">
                    <input type="text" name="q7" style="margin-left: 0.1%;width:500px; height: 100px; padding: 0; color: black"><br><br>
                </select></td>
            </tr>
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