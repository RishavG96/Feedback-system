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
        <title>WORK & LIFE</title>
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
    top: 50px;
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
        <div id="mySidenav" class="sidenav" style="width:25%; margin-top: 50px; padding: 0;">
            <a href="page2.php" class="btn " disabled style="background-color: #C21E17; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #A11913; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn active"  href="#" style="background-color: #FF8A65 ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #861510; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 100px;  height :450px;">
        <div style="margin-top : 2%;">
            <marquee style="color:#FF8A65; font-family: Courier New;background:#FFEBCD">Welcome to Manipal University Feedback system portal! Your identity will not be disclosed under any circumstances.</marquee><br><br>
            <form class="form-group formwidth" method="post" action="Progress.php">
                <table class="table table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td>How do you rate the work atmosphere in your department?</td>
                            <td style="color: black;"><select style="background-color:#1d262b;color: #ffffff;width : 200px;" name="q1">
                    <option value="Excellent" class="form-control">Excellent</option>
                    <option value="Good" class="form-control">Good</option>
                    <option value="Satisfactory" class="form-control">Satisfactory</option>
                    <option value="Poor" class="form-control">Poor</option>
                </select></td>
                        </tr>
                        <tr>
                            <td>How many hours do you put in for research work per week?</td>
                            <td style="color: black;"><select style="background-color:#1d262b;color: #ffffff;width : 200px;" name="q2">
                    <option value="Less than 11 hours" class="form-control">Less than 11 hours</option>
                    <option value="11-20 hours" class="form-control">11-20 hours</option>
                    <option value="21-20 hours" class="form-control">21-30 hours</option>
                    <option value="31-40 hours" class="form-control">31-40 hours</option>
                    <option value="41-50 hours" class="form-control">41-50 hours</option>
                    <option value="51-60 hours" class="form-control">51-60 hours</option>
                    <option value="61-70 hours" class="form-control">61-70 hours</option>
                    <option value="71-80 hours" class="form-control">71-80 hours</option>
                    <option value="More than 80 hours" class="form-control">More than 80 hours</option>
                </select></td>
                        </tr>
                        <tr>
                            <td>To what extent do you receive support from the Head of the Department?</td>
                            <td style="color: black;"><select style="background-color:#1d262b;color: #ffffff;width : 200px;" name="q3">
                    <option value="Extremely Supportive" class="form-control">Extremely Supportive</option>
                    <option value="Very Supportive" class="form-control">Very Supportive</option>
                    <option value="Moderately Supportive" class="form-control">Moderately Supportive</option>
                    <option value="Slightly Supportive" class="form-control">Slightly Supportive</option>
                    <option value="Not at all supportive" class="form-control">Not at all supportive</option>
                </select></td>
                        </tr>
                    </tbody>
                </table>
                
                <table class="table table-bordered table-hover">
                    <tbody>
                        <tr>
                            <th> </th>
                            <th>Yes</th>
                            <th>No</th>
                        </tr>
                        <tr>
                            <td>Are you able to balance your personal life and research work?</td>
                            <td><input type="radio" name="q4" value="Yes">Yes</td>
                            <td><input type="radio" name="q4" value="No">No</td>
                        </tr>
                        <tr>
                            <td>Do you receive appreciation and encouragement from your guide?</td>
                            <td><input type="radio" name="q4" value="Yes">Yes</td>
                            <td><input type="radio" name="q4" value="Yes">Yes</td>
                        </tr>
                        
                    </tbody>
                </table>
                <br>    
                <button class="btn btn-primary" style="margin-left: 45%">Submit</button> 
            </form>
            </div>
            </div>
        <footer >
       <div style=" position: fixed;
    height: 30px;
    background-color: black;
    bottom: 0px;
    left: 0px;
    right: 0px;
    margin-bottom: 0px;">
           <center style="color: whitesmoke;">Designed and Developed by Information and Communication Technology Department.</center>
       </div>
</footer>
    </div>
    
</body>
</html>
