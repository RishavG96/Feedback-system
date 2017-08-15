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
        <title></title>
    </head>
    <body>
        <?php
        $con=  mysqli_connect("localhost", "root", "", "feedback1");
        $query="select * from phd";
        $result=$con->query($query) or exit($con->errno);
        $id=$_POST["ID"];
        $pwd=$_POST["psw"];
        $flag=0;
        while($row=$result->fetch_assoc())
        {
            if($row["regno"]==$id && $row["pwd"]==$pwd)
            {
                $flag=1;
                if($row["filled"]=="true")
                {
                    $_SESSION['done'] = 0;
                    header("Location: Ph.Dcandidate.php");
                }
                else{
                $_SESSION["regno"]=$id;
                $_SESSION["dept"]=$row["dept"];
                $_SESSION["institute"]=$row["institute"];
                $_SESSION["login"]=1;
                header("Location: GuidanceReceived.php");
                }
            }
        }
        if($flag==0)
        {
            $_SESSION['phd'] = 0;
            header("Location: Ph.Dcandidate.php");
        }
        ?>
    </body>
</html>
