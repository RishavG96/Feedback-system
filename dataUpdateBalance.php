<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));


if(isset($_POST['leave']) && isset($_POST['healthcare']) && isset($_POST['infrastructure']) && isset($_POST['resource']) && isset($_POST['q5']) && isset($_POST['q6']) && isset($_POST['q7']) && isset($_POST['q8']))
{
    $q1 = $_POST['leave'];
    $q2 = $_POST['healthcare'];
    $q3 = $_POST['infrastructure'];
    $q4 = $_POST['resource'];
    $q5 = $_POST['q5'];
    $q6 = $_POST['q6'];
    $q7 = $_POST['q7'];
    $q8 = $_POST['q8'];
    $r=$_SESSION["regno"];
    $d=$_SESSION["dept"];
    $i=$_SESSION["institute"];
    $user_select_query = "INSERT INTO facilities ( regno,dept,institute,q9,q10,q11,q12,q13,q14,q15,q16) VALUES ('$r','$d','$i','$q1', '$q2', '$q3', '$q4', '$q5', '$q6', '$q7', '$q8')";
    $user_query_result = mysqli_query($con, $user_select_query);
    header('Location: WALB.php');
}
else
{
    $_SESSION['varname1'] = 0;
    header('Location: page2test.php');
}
?>
