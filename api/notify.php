<?php
// api/notify.php
// Usage: createNotification($conn, $user_id, $role, $type, $title, $message)

function createNotification($conn, $user_id, $role, $type, $title, $message) {
    $title   = $conn->real_escape_string($title);
    $message = $conn->real_escape_string($message);
    $sql = "INSERT INTO notifications (user_id, role, type, title, message)
            VALUES ('$user_id', '$role', '$type', '$title', '$message')";
    $conn->query($sql);
}
?>