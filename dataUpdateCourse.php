<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q1 = $_POST['q1'];
$q2 = $_POST['q2'];
$q2i = $_POST['q2i'];
$q3 = $_POST['q3'];
if($q1 == "--Choose an option--")
{
    $_SESSION['varname2'] = 0;
    header('Location: courseWork.php');
}
if(($q2 =="--Choose an option--" || $q2i=="--Choose an option--"))
{
    if($q2!="--Choose an option--"){
       $r=$_SESSION["regno"];
        $n=$_SESSION["name"];
        $i=$_SESSION["institute"];
        $user_select_query = "INSERT INTO course VALUES ('$r','$n','$i','$q1','$q2','$q3')";
        $user_query_result = mysqli_query($con, $user_select_query);
        header('Location: Progress.php');
    }
    else if($q2i!="--Choose an option--")
    {
        $r=$_SESSION["regno"];
        $n=$_SESSION["name"];
        $i=$_SESSION["institute"];
        $user_select_query = "INSERT INTO course VALUES ('$r','$n','$i','$q1','$q2i','$q3')";
        $user_query_result = mysqli_query($con, $user_select_query);
        header('Location: Progress.php');
    }
}
else
{
    $_SESSION['varname2'] = 0;
    header('Location: courseWork.php');
}
?>
