<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

    $q1=$_POST["q1"];
    $q2=$_POST["q2"];
    $r=$_SESSION["regno"];
    $n=$_SESSION["name"];
    $i=$_SESSION["institute"];
    $user_select_query = "INSERT INTO challenges VALUES ('$r','$n','$i','$q1', '$q2')";
    $user_query_result = mysqli_query($con, $user_select_query);
    $filled="Update phd set filled='true' where regno='$r' ";
    $query_result = mysqli_query($con, $filled);
    header('Location: Thanks.php');
?>
