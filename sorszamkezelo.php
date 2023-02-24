<?php
require_once("connect.php");

$sql = "SELECT * FROM `csengetesirend`";

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
    $sor = [];

    $sor['id'] = $row['id'];
    $sor['oraSorszama'] = $row['oraSorszama'];

    $data[] = $sor;
}

echo json_encode($data);

?>