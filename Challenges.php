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
    top: 100px;
    left: 0;
    background-color:whitesmoke ;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 50px;
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
        <div id="mySidenav" class="sidenav" style="width:25%; margin-top: 50px; padding: 0;">
            <a href="page2.php" class="btn" disabled style="background-color: #C21E17; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn active" href="#" style="background-color: #FF8A65; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 150px;  height :450px;">
        <div style="margin-top : 5%;">
            <marquee>This text will scroll from right to left</marquee>
            <form class="form-group formwidth" method="post" action="#">
                <h3>Which of the following would you say is the most difficult for PhD's in your discipline? </h3><br>
                <input type="checkbox" name="q1[]" value="Learning what career possibilities exist">Learning what career possibilities exist<br>
                <input type="checkbox" name="q1[]" value="Finding research careers within academia">Finding research careers within academia<br>
                <input type="checkbox" name="q1[]" value="Finding research careers within industry">Finding research careers within industry<br>
                <input type="checkbox" name="q1[]" value="Finding research careers within government">Finding research careers within government<br>
                <input type="checkbox" name="q1[]" value="Finding research careers with charity/non-profit organisations">Finding research careers with charity/non-profit organisations<br>
                <input type="checkbox" name="q1[]" value="Finding non-research careers that use your skills">Finding non-research careers that use your skills<br>
                <input type="checkbox" name="q1[]" value="Others">Others<br>
                
                <h3>Any other Comments</h3>
                <input type="text" name="q2" style="margin-left: 0.1%;width:500px; height: 100px; padding: 0; color: black"><br><br>
                
                <button class="btn btn-primary" style="margin-left: 45%">Submit</button>
            </form>
                        </div>
            </div>
    </div>
    
</body>
</html>