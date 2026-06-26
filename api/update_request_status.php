<?php
session_start();
include "db.php";
header("Content-Type: application/json");

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    echo json_encode(["error" => "unauthorized"]);
    exit;
}

$data   = json_decode(file_get_contents("php://input"), true);
$id     = intval($data['id']);
$status = $data['status'];

if (!in_array($status, ['approved', 'rejected', 'pending'])) {
    echo json_encode(["error" => "invalid status"]);
    exit;
}

$stmt = $conn->prepare("UPDATE adoption_requests SET status = ?, updated_at = NOW() WHERE id = ?");
$stmt->bind_param("si", $status, $id);
$stmt->execute();

echo json_encode(["success" => true]);
?>