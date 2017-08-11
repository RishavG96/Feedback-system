<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1 = $_POST['leave'];
$q2 = $_POST['healthcare'];
$q3 = $_POST['infrastructure'];
$q4 = $_POST['resource'];
$q5 = $_POST['q5'];
$q6 = $_POST['q6'];
$q7 = $_POST['q7'];
$q8 = $_POST['q8'];
if($q1 == "--Choose an option--"||$q2 == "--Choose an option--"||$q3== "--Choose an option--"||$q4 == "--Choose an option--"||$q5 == "--Choose an option--"||$q6 == "--Choose an option--"||$q7 == "--Choose an option--"||$q8 == "--Choose an option--")
{
    $_SESSION['varname1'] = 0;
    header('Location: GuidanceReceived.php');
}
else
{
$user_select_query = "INSERT INTO guidance ( q1,q2,q3,q4,q5,q6,q7,q8) VALUES ('$q1', '$q2', '$q3', '$q4', '$q5', '$q6', '$q7', '$q8')";
$user_query_result = mysqli_query($con, $user_select_query);
header('Location: page2test.php');
}
?>
