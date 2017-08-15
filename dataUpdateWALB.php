<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1 = $_POST['q1'];
$q2 = $_POST['q2'];
$q3 = $_POST['q3'];
if($q1 != "--Choose an option--" && $q2 != "--Choose an option--" && $q3!= "--Choose an option--" && isset($_POST['q4']) && isset($_POST['q5']) )
{
    $q4 = $_POST['q4'];
    $q5 = $_POST['q5'];
    $r=$_SESSION["regno"];
    $d=$_SESSION["dept"];
    $i=$_SESSION["institute"];
    $user_select_query = "INSERT INTO workbal ( regno,dept,institute,q17,q18,q19,q20,q21) VALUES ('$r','$d','$i','$q1', '$q2', '$q3', '$q4', '$q5')";
    $user_query_result = mysqli_query($con, $user_select_query);
    header('Location: Progress.php');
}
else
{
    $_SESSION['varname2'] = 0;
    header('Location: WALB.php');
}
?>

