<?php
session_start();
include "db.php";
header("Content-Type: application/json");

if (!isset($_SESSION['user_id']) || $_SESSION['role'] !== 'admin') {
    echo json_encode(["error" => "unauthorized"]);
    exit;
}

$pets    = $conn->query("SELECT COUNT(*) as t FROM pets")->fetch_assoc()['t'];
$users   = $conn->query("SELECT COUNT(*) as t FROM users WHERE role != 'admin' AND role !='shelter-staff'")->fetch_assoc()['t'];
$pending = $conn->query("SELECT COUNT(*) as t FROM adoption_requests WHERE status = 'pending'")->fetch_assoc()['t'];
$adopted = $conn->query("SELECT COUNT(*) as t FROM adoption_requests WHERE status = 'approved'")->fetch_assoc()['t'];

echo json_encode([
    "pets"    => (int)$pets,
    "users"   => (int)$users,
    "pending" => (int)$pending,
    "adopted" => (int)$adopted
]);
?>