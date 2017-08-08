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
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="js/bootstrap.min.js"></script>
        <title></title>
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
         <style>
             
            .btn[disabled]{
                 background-color: black;
                opacity: 1;
            }
           
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: fit-content;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 150px;
    left: 0;
    background-color:whitesmoke ;
    overflow-x: hidden;
    transition: 0.5s;
    
}
.scrollable {
    margin-top: 90px;
    height: 500px; /* or any value */
    overflow-y: auto;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 18px;
    color: white;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 22px;}
}
</style>
</head>
<body style="background-color: #CF4747">
   <nav class="navbar navbar navbar-fixed-top" style="height: 50px">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php"><img src="icon9.jpg" alt="MIT Logo"/></a>
        </div>
        <ul class="nav navbar-nav navbar-header">
            <li style="padding-left: 250px ; padding-top: 30px; color: #111111"><h3>Manipal Institute of technology</h3></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li style="margin-top: 20px;" class="btn btn-default"><a href="#">LOGOUT</a></li>
        </ul>
    </div>
</nav>
    <div class="container">
        <div id="mySidenav" class="sidenav" style="width:25%;">
            <a class="btn " disabled href="#" style="background-color: #C21E17; height: 90px; padding-top: 20px">GUIDANCE <br>RECEIVED</a>
            <a href="page2.php" class="btn active " style="background-color: #A11913; height: 90px; padding-top: 20px" >FACILITIES<br> AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510 ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color:#FF8A65 ; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color:#670F0B ; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 150px;  height :450px;">
            <div style="margin-top: 25px;">
                <marquee>This text will scroll from right to left</marquee>
                <form class="form-group formwidth" method="post" action="Challenges.php">
            <h2>How do you rate the quality of the following facilities and services available in the campus?</h2><br><br>
            
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <th>Questions</th>
                        <th>Yes</th>
                        <th>No</th>
                    </tr>
                    <tr>
                        <td>Have you started writing your thesis?(final year only)</td>
                        <td><input type="radio" name="q5" value="Yes"></td>
                        <td><input type="radio" name="q5" value="No"></td>
                    </tr>
                    <tr>
                        <td>Have you attended any workshops/seminars/guest lectures in the last 6 months?</td>
                        <td><input type="radio" name="q6" value="Yes"></td>
                        <td><input type="radio" name="q6" value="No"></td>
                    </tr>
                    <tr>
                        <td>Have you completed DAC this semester?</td>
                        <td><input type="radio" name="q7" value="Yes" onclick="show1func()"></td>
                        <td><input type="radio" name="q7" value="No" onclick="hide1func()"></td>
                    </tr>
                    <tr id="Showthis1" style="display : none;">
                        <td>Did you receive support from your guide during DAC?</td>
                        <td><input type="radio" name="q7i" value="Yes"></td>
                        <td><input type="radio" name="q7i" value="No"></td>
                    </tr>
                    <tr id="Showthis2" style="display : none;">
                        <td>Did you receive feedback from DAC members?&nbsp;</td>
                        <td><input type="radio" name="q7ii" value="Yes"></td>
                        <td><input type="radio" name="q7ii" value="No"></td>
                    </tr>
                    <tr>
                        <td>Have you published any conferences paper/journal paper in last 6 months?</td>
                        <td><input type="radio" name="q8" value="Yes" onclick="showfunc()"></td>
                        <td><input type="radio" name="q8" value="No" onclick="hidefunc()"></td>
                        <td style="display:none" id="Showthis"><input type="text" id="Showthis" name="q8" style="height: 50px;color: black"> </td>
                    </tr>
                </tbody>
            </table>
            
            <button class="btn btn-primary bottom-right " style="margin-left: 45%">Submit</button>
            </form>
        </div>
            </div>
    </div>
    
</body>
</html>