<?php
require_once("connect.php");

$sql = "SELECT napok.id, napok.nap FROM `napok`";

$result = $mysqli->query($sql);

$data = [];

while ($row = $result->fetch_assoc()) {
    $sor = [];

    $sor['id'] = $row['id'];
    $sor['nap'] = $row['nap'];

    $data[] = $sor;
}

echo json_encode($data);

?>