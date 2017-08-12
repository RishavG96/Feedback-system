<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1="NO";
$q2="NO";
$q3="NO";
$q4="NO";
$q5="NO";
$q6="NO";
if(isset($_POST['q1']) )
{
    $q1 = $_POST['q1'];
}
if(isset($_POST['q2']) )
{
    $q2 = $_POST['q2'];
}
if(isset($_POST['q3']) )
{
    $q3 = $_POST['q3'];
}
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
    $user_select_query = "INSERT INTO challenges VALUES ('$q1', '$q2', '$q3', '$q4', '$q5', '$q6','$q7')";
    $user_query_result = mysqli_query($con, $user_select_query);
    header('Location: Login.php');
?>
