<?php
session_start();
include "db.php";
header("Content-Type: application/json");

if (!isset($_SESSION['user_id'])) {
    echo json_encode(["error" => "unauthorized"]);
    exit;
}

$user_id = $_SESSION['user_id'];

// Count total applications
$r1 = $conn->query("SELECT COUNT(*) as total FROM adoption_requests WHERE user_id = $user_id");
$total = $r1->fetch_assoc()['total'];

// Count approved
$r2 = $conn->query("SELECT COUNT(*) as total FROM adoption_requests WHERE user_id = $user_id AND status = 'approved'");
$approved = $r2->fetch_assoc()['total'];

// // Count unread notifications
// $r3 = $conn->query("SELECT COUNT(*) as total FROM notifications WHERE user_id = $user_id AND is_read = 0");
// $notifs = $r3->fetch_assoc()['total'];

echo json_encode([
    "applications" => (int)$total,
    "approved"     => (int)$approved,
    // "notifications"=> (int)$notifs
]);
?>