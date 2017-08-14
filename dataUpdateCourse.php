<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));

$q33 = $_POST['q33'];
$q34 = $_POST['q34'];
if($q33 == "--Choose an option--")
{
    $_SESSION['varname5'] = 0;
    header('Location: courseWork.php');
}
else
{
    if($q33==  "PartTime"){
        $user_select_query = "INSERT INTO course ( q33,q34) VALUES ('$q33', '$q34')";
        $user_query_result = mysqli_query($con, $user_select_query);
        header('Location: Login.php');
    }
    else
    {
        if($q34 == "--Choose an option--")
        {
            $_SESSION['varname5'] = 0;
            header('Location: courseWork.php');
        }
        else{
            $user_select_query = "INSERT INTO course ( q33,q34) VALUES ('$q33', '$q34')";
            $user_query_result = mysqli_query($con, $user_select_query);
            header('Location: Login.php');
        }
    }
}
?>
