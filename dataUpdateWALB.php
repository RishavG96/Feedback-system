<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1 = $_POST['q1'];
$q2 = $_POST['q2'];
$q3 = $_POST['q3'];
if($q1 != "--Choose an option--" && $q2 != "--Choose an option--" && $q3!= "--Choose an option--")
{
$q4="NO";
$q5="NO";
$q6="NO";
$q7="NO";
$q8="NO";
$q9="NO";
$q10="NO";
if(isset($_POST['q4']) )
{
    $q4 = $_POST['q4'];
}
if(isset($_POST['q5']) )
{
    $q5 = $_POST['q5'];
}
if(isset($_POST['q6']) )
{
    $q6 = $_POST['q6'];
}
if(isset($_POST['q7']) )
{
    $q7 = $_POST['q7'];
}
if(isset($_POST['q8']) )
{
    $q8 = $_POST['q8'];
}
if(isset($_POST['q9']) )
{
    $q9 = $_POST['q9'];
}
if(isset($_POST['q10']) )
{
    $q10 = $_POST['q10'];
}
    $r=$_SESSION["regno"];
    $n=$_SESSION["name"];
    $i=$_SESSION["institute"];
    $user_select_query = "INSERT INTO workbal VALUES ('$r','$n','$i','$q1', '$q2', '$q3', '$q4', '$q5','$q6','$q7','$q8','$q9','$q10')";
    $user_query_result = mysqli_query($con, $user_select_query);
    header('Location: Challenges.php');
}
else
{
    $_SESSION['varname5'] = 0;
    header('Location: WALB.php');
}
?>

