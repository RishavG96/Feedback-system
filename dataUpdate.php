<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1 = $_POST['available'];
$q2 = $_POST['feedback'];
$q3 = $_POST['review'];
$q4 = $_POST['encourage'];
$q5 = $_POST['guidance'];
$q6 = $_POST['biased'];
$q7 = $_POST['recommend'];
$q8 = $_POST['support'];
$q9=$_POST['DAC'];
$q10=$_POST['DACi'];
$q11=$_POST['DACii'];
if($q1 == "--Choose an option--"||$q2 == "--Choose an option--"||$q3== "--Choose an option--"||$q4 == "--Choose an option--"||$q5 == "--Choose an option--"||$q6 == "--Choose an option--"||$q7 == "--Choose an option--"||$q8 == "--Choose an option--"||$q9 == "--Choose an option--")
{
    $_SESSION['varname4'] = 0;
    header('Location: GuidanceReceived.php');
}
else
{
    if($q9=="Yes")
    {
        if($q10 == "--Choose an option--"||$q11 == "--Choose an option--")
        {
            $_SESSION['varname4'] = 0;
            header('Location: GuidanceReceived.php');
        }
        else
        {
            $r=$_SESSION["regno"];
            $n=$_SESSION["name"];
            $i=$_SESSION["institute"];
            $user_select_query = "INSERT INTO guidance VALUES ('$r','$n','$i','$q1', '$q2', '$q3', '$q4', '$q5', '$q6', '$q7', '$q8','$q9','$q10','$q11')";
            $user_query_result = mysqli_query($con, $user_select_query);
            header('Location: WALB.php');
        }
    }
    else
    {
        $r=$_SESSION["regno"];
        $n=$_SESSION["name"];
        $i=$_SESSION["institute"];
        $user_select_query = "INSERT INTO guidance VALUES ('$r','$n','$i','$q1', '$q2', '$q3', '$q4', '$q5', '$q6', '$q7', '$q8','$q9','$q10','$q11')";
        $user_query_result = mysqli_query($con, $user_select_query);
        header('Location: WALB.php');
    }
}
?>
