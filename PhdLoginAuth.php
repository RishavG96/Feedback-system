<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $con=  mysqli_connect("localhost", "user", "", "feedback1");
        $query="select * from phd";
        $result=$con->query($query) or exit($con->errno);
        $id=$_POST["ID"];
        $pwd=$_POST["psw"];
        while($row=$result->fetch_assoc())
        {
            if($row["regno"]==$id && $row["pwd"]==$pwd)
            {
                header("Location: GuidanceReceived.php");
            }
            else{
                header("Location: Ph.Dcandidate.html");
            }
        }
        ?>
    </body>
</html>
