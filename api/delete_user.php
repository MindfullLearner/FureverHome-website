<?php
session_start();
include "db.php";
header("Content-Type: application/json");

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    echo json_encode(["error" => "unauthorized"]);
    exit;
}

$data    = json_decode(file_get_contents("php://input"), true);
$user_id = intval($data['id']);

// Prevent admin from deleting themselves
if ($user_id === (int)$_SESSION['user_id']) {
    echo json_encode(["error" => "cannot delete yourself"]);
    exit;
}

$stmt = $conn->prepare("DELETE FROM users WHERE id = ?");
$stmt->bind_param("i", $user_id);
$stmt->execute();

echo json_encode(["success" => true]);
?>