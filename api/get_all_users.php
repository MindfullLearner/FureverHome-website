<?php
session_start();
include "db.php";
header("Content-Type: application/json");

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    echo json_encode(["error" => "unauthorized"]);
    exit;
}

$result = $conn->query("SELECT id, fname, lname, email, role, created_at 
                         FROM users 
                         ORDER BY created_at DESC");
$users = [];
while ($row = $result->fetch_assoc()) {
    $users[] = $row;
}

echo json_encode($users);
?>