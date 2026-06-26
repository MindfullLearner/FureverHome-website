<?php
session_start();
include "db.php";
header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['status' => 'error', 'message' => 'Unauthorized']);
    exit;
}

$user_id = $_SESSION['user_id'];

$sql    = "SELECT * FROM notifications WHERE user_id='$user_id' ORDER BY created_at DESC";
$result = $conn->query($sql);

$notifications = [];
$unread_count  = 0;

while ($row = $result->fetch_assoc()) {
    $notifications[] = $row;
    if ($row['is_read'] == 0) $unread_count++;
}

echo json_encode([
    'status'        => 'success',
    'notifications' => $notifications,
    'unread_count'  => $unread_count
]);

$conn->close();
?>
