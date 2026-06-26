<?php
$required_role = 'shelter-staff';
include "check_auth_api.php";
include "db.php";
include "notify.php";

$pet_id   = intval($_POST['pet_id'] ?? 0);
$staff_id = $_SESSION['user_id'];

if ($pet_id <= 0) {
    echo json_encode(['status' => 'error', 'message' => 'Invalid pet ID']);
    exit;
}

$check = $conn->query("SELECT id FROM pets WHERE id='$pet_id' AND created_by='$staff_id'");

if ($check->num_rows === 0) {
    echo json_encode(['status' => 'error', 'message' => 'Pet not found or permission denied']);
    exit;
}
$pet = $conn->query("SELECT name FROM pets WHERE id='$pet_id'")->fetch_assoc();
if ($conn->query("DELETE FROM pets WHERE id='$pet_id' AND created_by='$staff_id'")) 
{
    $admin = $conn->query("SELECT id FROM users WHERE role='admin' LIMIT 1")->fetch_assoc();
    if ($admin) {
        createNotification($conn, $admin['id'], 'admin', 'warning',
            'Pet Removed',
            "Pet '{$pet['name']}' has been removed from the shelter.");
    }
    echo json_encode(['status' => 'success', 'message' => 'Pet removed successfully!']);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed: ' . $conn->error]);
}

$conn->close();
?>

