<?php
require_once("connect.php");

$sql = "SELECT * FROM `osztalyok`";

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
    $sor = [];

    $sor['id'] = $row['id'];
    $sor['osztaly'] = $row['osztaly'];

    $data[] = $sor;
}

echo json_encode($data);

?>