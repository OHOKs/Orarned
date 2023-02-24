<?php
require_once("connect.php");

$osztalyId = intval($_POST['osztalyId']);
$oraId = intval($_POST['oraId']);
$napId = intval($_POST['napId']);
$sorszamId = intval($_POST['sorszamId']);

$sql = "SELECT * FROM `osszesora` WHERE `osszesora`.`osztalyMegnevezese` = ".$osztalyId." AND `osszesora`.`nap` = ".$napId." AND `osszesora`.`oraSorszama` = ".$sorszamId."";

$result = $mysqli->query($sql);

$sorok = $result->num_rows;

$newsql = "";

$message = "";

if($sorok>0){
    $newsql = "UPDATE `osszesora` SET `oraMegnevezese`= ? WHERE `osszesora`.`osztalyMegnevezese` = ? AND `osszesora`.`nap` = ? AND `osszesora`.`oraSorszama` = ?";

    $stmt = $mysqli->prepare($newsql);

    $stmt->bind_param("iiii", $oraId,$osztalyId,$napId,$sorszamId);

    $stmt->execute();

    $message = "Az ora mar letezett, ezert modositasra kerult!";
} else{
    $newsql = "INSERT INTO `osszesora` (`id`, `osztalyMegnevezese`, `oraSorszama`, `oraMegnevezese`, `nap`) VALUES (NULL, ?, ?, ?, ?)";

    $stmt = $mysqli->prepare($newsql);

    $stmt->bind_param("iiii", $osztalyId,$sorszamId,$oraId,$napId);
    
    $stmt->execute();

    $message = "Hozzaadasra kerult az uj ora!";
}

echo json_encode($message);

?>