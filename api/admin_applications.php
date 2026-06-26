<?php
$required_role = 'admin';
include "check_auth_api.php";
include "db.php";
header("Content-Type: application/json");



$sql = "SELECT 
            aa.id,
            aa.status,
            aa.request_date AS created_at,
            p.name          AS pet_name,
            p.breed,
            p.id            AS pet_id,
            CONCAT(u.fname, ' ', u.lname) AS applicant_name,
            u.email         AS applicant_email
        FROM adoption_requests aa
        JOIN pets  p ON aa.pet_id  = p.id
        JOIN users u ON aa.user_id = u.id
        ORDER BY aa.request_date DESC";

$result = $conn->query($sql);

$apps = [];
while ($row = $result->fetch_assoc()) {
    $apps[] = $row;
}

echo json_encode($apps);
?>