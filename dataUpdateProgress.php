<?php session_start();
?>
<?php

$con = mysqli_connect("localhost","root","","feedback1") or die(mysqli_error($con));


if(isset($_POST['q5']) && isset($_POST['q6']) && isset($_POST['q7']) && isset($_POST['q8'] ))
{
    $q1 = $_POST['q5'];
    $q2 = $_POST['q6'];
    $q3 = $_POST['q7'];
    if($q3 == "Yes")
    {
        echo $q3;
        if(isset($_POST['q7i'])&&isset($_POST['q7ii']))
        {
            $q3i=$_POST['q7i'];
            $q3ii=$_POST['q7ii'];
        }
        else
        {
            $_SESSION['varname3'] = 0;
            header('Location: Progress.php');
            $flag=1;
        }
    }
    if($flag == 0){
    $q4 = $_POST['q8']; 
    $r=$_SESSION["regno"];
    $d=$_SESSION["dept"];
    $i=$_SESSION["institute"];
    $user_select_query = "INSERT INTO progress ( regno,institute,q22,q23,q24,q24i,q24ii,q25) VALUES ('$r','$i','$q1', '$q2', '$q3', '$q3i', '$q3ii','$q4')";
    $user_query_result = mysqli_query($con, $user_select_query);
    header('Location: Challenges.php');
    }
}
else
{
    $_SESSION['varname3'] = 0;
    header('Location: Progress.php');
}
?>

