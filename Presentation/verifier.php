<?php
session_start();

// Identifiants fixes
$fixed_username = 'Admin';
$fixed_password = 'admin';

// Vérifier les identifiants
if (isset($_POST['login']) && isset($_POST['password'])) {
    $login = $_POST['login'];
    $password = $_POST['password'];

    if ($login === $fixed_username && $password === $fixed_password) {
        $_SESSION['login'] = $login;
        header("Location: dashboard.php");
        exit();
    } else {
        header("Location: ../index.php?error=1");
        exit();
    }
} else {
    header("Location: ../index.php?error=1");
    exit();
}
?>
