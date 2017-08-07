
<?php
$q1 = $_POST['tologin'];
if($q1 === "Ph.D Candidate"){
    header('Location: Ph.Dcandidate.html');
}
else if( $q1 === "Head of Department"){
    header('Location: HoD.html');
}
else if( $q1 === "Head of Institute"){
    header('Location: HoI.html');
}
else if( $q1 === "Academic Director"){
    header('Location: DR.html');
}
?>
