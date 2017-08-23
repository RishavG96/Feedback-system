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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
    $("tr:nth-child(odd)").css("background-color", "#1d262b");
    $("tr:nth-child(even)").css("background-color", "#252e33");
});</script>
    <script>
        function chang(){
            document.getElementById("1st").onclick = function(){
                location.href = "page2test.php";
            };
        }
    </script>
        <title>WORK & LIFE</title>
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
            
            <li style="margin-top: 10px;margin-right: 50px;">
                <button class="btn" onclick="chang()" id="1st">Graph View</button>
                <button class="btn btn-success" id="2nd">Student View</button>
            </li>
            <li><a href="Logout.php">LOGOUT</a></li>
        </ul>
    </div>
</nav>
    <?php
    $con=  mysqli_connect("localhost", "root", "", "feedback1");
    $query1="select * from facilities where regno=70900013";
    $result1=$con->query($query1) or exit($con->errno);
    $row1 = $result1->fetch_assoc();
    $query2="select * from course where regno=70900013";
    $result2=$con->query($query2) or exit($con->errno);
    $row2 = $result2->fetch_assoc();
    $query3="select * from progress where regno=70900013";
    $result3=$con->query($query3) or exit($con->errno);
    $row3 = $result3->fetch_assoc();
    $query4="select * from guidance where regno=70900013";
    $result4=$con->query($query4) or exit($con->errno);
    $row4 = $result4->fetch_assoc();
    $query5="select * from workbal where regno=70900013";
    $result5=$con->query($query5) or exit($con->errno);
    $row5 = $result5->fetch_assoc();
    $query6="select * from challenges where regno=70900013";
    $result6=$con->query($query6) or exit($con->errno);
    $row6 = $result6->fetch_assoc();
    ?>
    <div class="container">
        <div class="scrollable des" style="margin-top: 90px;">
            <table class="table table-hover table-striped" style="color: white;">
                <tbody>
                    <tr>
                        <th>Questions</th>
                        <th>Answers</th>
                    </tr>
                    <tr>
                        <td><b>How do you rate the quality of the following facilities and services available in the campus</b></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Leave</td>
                        <td><?php echo $row1["q1"]; ?></td>
                    </tr>
                    <tr>
                        <td>HealthCare</td>
                        <td><?php echo $row1["q2"]; ?></td>
                    </tr>
                    <tr>
                        <td>Infrastructure</td>
                        <td><?php echo $row1["q3"]; ?></td>
                    </tr>
                    <tr>
                        <td>Resource</td>
                        <td><?php echo $row1["q4"]; ?></td>
                    </tr>
                    <tr>
                        <td><b>Have you applied for funds from the Institute/Department in the last 6 months</b></td>
                        <td><?php echo $row1["q5"]; ?></td>
                    </tr>
                    <tr>
                        <td><b>Have you initiated research grant submission from an external agency in the last 6 months</b></td>
                        <td><?php echo $row1["q6"]; ?></td>
                    </tr>
                    <tr>
                        <td><b>Have you availed facilities from the University to attend workshop/publish research work</b></td>
                        <td><?php echo $row1["q7"]; ?></td>
                    </tr>
                    <tr>
                        <td><b>Have you initiated requests to procure new paid resources</b> </td>
                        <td><?php echo $row1["q8"]; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>