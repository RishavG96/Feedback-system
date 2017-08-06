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
<body style="background-color: whitesmoke">
   <nav class="navbar navbar navbar-fixed-top" style="height: 50px">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php"><img src="icon9.jpg" alt="MIT Logo"/></a>
        </div>
        <ul class="nav navbar-nav navbar-header">
            <li style="padding-left: 250px ; padding-top: 30px; color: #BF360C"><h3>Manipal Institute of technology</h3></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li style="margin-top: 20px;" class="btn btn-default"><a href="#">LOGOUT</a></li>
        </ul>
    </div>
</nav>
    <div class="container">
        <div id="mySidenav" class="sidenav" style="width:25%;">
            <a href="page2.php" class="btn active " style="background-color: #FF8A65; height: 90px; padding-top: 20px" >GUIDANCE<br> RECEIVED</a>
            <a class="btn " disabled href="#" style="background-color: #C21E17; height: 90px; padding-top: 20px">FACILITIES <br>AVAILABLE</a>
            <a class="btn " disabled href="#" style="background-color: #A11913 ;height: 90px; padding-top: 20px">WORK AND LIFE<br> BALANCE</a>
            <a class="btn " disabled href="#" style="background-color: #861510; height: 90px; padding-top: 30px;" >PROGRESS</a>
            <a class="btn " disabled href="#" style="background-color: #670F0B; height: 90px; padding-top: 30px;">CHALLENGES</a>
        </div>
        <div class="scrollable des" style="margin-left: 25%; margin-top: 150px;  height :450px;">
            <div style="margin-top: 25px;">
                <marquee>This text will scroll from right to left</marquee>
                <form class="form-group formwidth" method="post" action="#">
            <table class="table table-hover">
            <tr>
                <td><h5>To what extent is your guide available when you had queries/issues?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px ;margin-top: 5px" name="available">
                <option>--Choose an option--</option>
                <option  value="Always Available" >Always Available</option>
                <option  value="Available most of the time">Available most of the time</option>
                <option  value="Sometimes available">Sometimes available</option>
                <option  value="Rarely Available">Rarely Available</option>
                <option  value="Not available at all">Not available at all</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>How useful is your guide's feedback?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="feedback">
                    <option>--Choose an option--</option>
                <option  value="Extremely useful">Extremely useful</option>
                <option  value="Very useful">Very useful</option>
                <option  value="Moderately useful">Moderately useful</option>
                <option  value="Rarely useful">Rarely useful</option>
                <option  value="Not useful at all">Not useful at all</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>To what extent does your guide review the paper/report and presentation on time?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="review">
                    <option>--Choose an option--</option>
                <option  value="Always on time">Always on time</option>
                <option  value="Mostly on time">Mostly on time</option>
                <option  value="Sometimes on time">Sometimes on time</option>
                <option  value="Rarely on time">Rarely on time</option>
                <option  value="Not at all">Not at all</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>To what extend has your guide encouraged you to interact with external experts?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="encourage">
                    <option>--Choose an option--</option>
                <option  value="Greatly encouraged">Greatly encouraged</option>
                <option  value="Encouraged">Encouraged</option>
                <option  value="Moderately encouraged">Moderately encouraged</option>
                <option  value="Rarely encouraged">Rarely encouraged</option>
                <option  value="Not at all">Not at all</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>How often do you receive guidance or feedback from your guide?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="guidance">
                    <option>--Choose an option--</option>
                <option  value="Weekly" >Weekly</option>
                <option  value="Once a month">Once a month</option>
                <option  value="Twice a month">Twice a month</option>
                <option  value="Once a semester">Once a semester</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>Do you feel your guide/co-guide is biased?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="biased">
                    <option>--Choose an option--</option>
                <option  value="Yes">Yes</option>
                <option  value="No">No</option>
                </select></td>
            </tr>
            <tr>
                <td><h5>Have you noticed any improvement in guidance from last feedback submitted?</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px" name="improvement">
                    <option>--Choose an option--</option>
                <option  value="Yes">Yes</option>
                <option  value="No">No</option>
                </select></td>
            </tr>
            <tr>
            <td><h5>Would you recommend your guide to other candidates?(For final year only)</h5></td>
            <td><select style="background-color: #1d262b;width: 200px;margin-top: 5px " name="recommend">
                    <option>--Choose an option--</option>
                <option  value="Yes">Yes</option>
                <option  value="No">No</option>
                </select></td>
            </tr>
            </table>
            
            <button class="btn btn-primary bottom-right " style="margin-left: 45%">Submit</button>
            </form>
        </div>
            </div>
    </div>
    
</body>
</html>