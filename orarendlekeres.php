<?php
require_once("connect.php");

$osztalyId = intval($_POST['osztalyId']);

$sql = "SELECT `osszesora`.*, `orak`.`oraMegnevezese` FROM `orak` RIGHT JOIN `osszesora` ON `osszesora`.`oraMegnevezese` = `orak`.`id` WHERE `osszesora`.`osztalyMegnevezese` = ".$osztalyId."";

$result = $mysqli->query($sql);

$data = [
    ["","","","","","","",""],
    ["","","","","","","",""],
    ["","","","","","","",""],
    ["","","","","","","",""],
    ["","","","","","","",""]
];

while ($row = $result->fetch_assoc()) {

    $data[$row['nap']-1][$row['oraSorszama']-1] = $row['oraMegnevezese'];
    
}

echo json_encode($data);

?>