<?php
require_once("connect.php");

$sql = "SELECT `orak`.`id`, `orak`.`oraMegnevezese` FROM `orak`";

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
    $sor = [];

    $sor['id'] = $row['id'];
    $sor['oraMegnevezese'] = $row['oraMegnevezese'];

    $data[] = $sor;
}

echo json_encode($data);

?>