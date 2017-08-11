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
    
    <div class="container">
        <div id="mySidenav" class="sidenav" style="width:25%;">
            <a href="page2.php" class="btn" disabled style="background-color: #C21E17; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #861510;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn active" href="#" style="background-color: #FF8A65; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px;  height :450px;">
        <div style="margin-top : 3%;">
            <marquee style="color:#FF8A65; font-family: Courier New;background:#FFEBCD">Welcome to Manipal University Feedback system portal! Your identity will not be disclosed under any circumstances.</marquee><br><br>
            <form class="form-group formwidth" method="post" action="Login.php">
                <h3>Which of the following would you say is the most difficult for PhD's in your discipline? </h3><br>
                <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <th>Options</th>
                        <th>Select</th>
                    </tr>
                    <tr>
                        <td>Learning what career possibilities exist</td>
                        <td><input type="radio" name="Learning what career possibilities exist" value="Select"></td>
                    </tr>
                    <tr style="background-color: #1d262b">
                        <td>Finding research careers within academia</td>
                        <td><input type="radio" name="Finding research careers within academia" value="Select"></td>
                    </tr>
                    <tr>
                        <td>Finding research careers within industry</td>
                        <td><input type="radio" name="Finding research careers within industry" value="Select"></td>
                    </tr>
                    <tr style="background-color: #1d262b;">
                        <td>Finding research careers within government</td>
                        <td><input type="radio" name="Finding research careers within government" value="Select"></td>
                    </tr>
                    <tr style="background-color: #1d262b;">
                        <td>Finding research careers with charity/non-profit organisations</td>
                        <td><input type="radio" name="Finding research careers with charity/non-profit organisations" value="Select"></td>
                    </tr>
                    <tr style="background-color: #1d262b;">
                        <td>Finding research careers with charity/non-profit organisations</td>
                        <td><input type="radio" name="Finding research careers with charity/non-profit organisations" value="Select"></td>
                    </tr>
                    <tr style="background-color: #1d262b;">
                        <td>Others</td>
                        <td><input type="radio" name="Others" value="Select"></td>
                    </tr>
                </tbody>
            </table>
                
                <h3>Any other Comments</h3>
                <input type="text" name="q2" style="margin-left: 0.1%;width:500px; height: 100px; padding: 0; color: black"><br><br>
                
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