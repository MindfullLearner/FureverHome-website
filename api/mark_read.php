<?php
session_start();
include "db.php";
header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['status' => 'error', 'message' => 'Unauthorized']);
    exit;
}

$user_id = $_SESSION['user_id'];

$conn->query("UPDATE notifications SET is_read=1 WHERE user_id='$user_id'");

echo json_encode(['status' => 'success', 'message' => 'All marked as read']);
$conn->close();
?>