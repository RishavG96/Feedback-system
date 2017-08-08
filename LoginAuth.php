
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
else if( $q1 === "Deputy Registrar"){
    header('Location: DR.html');
}
?>
