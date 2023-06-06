<?php
include('config.php');
session_start();

// Check if the user is not logged in, redirect to the login page
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

// Retrieve the user's name from the database
$user_id = $_SESSION['user_id'];
$con = mysqli_connect($host, $user, $pass, $db, $port) or die(mysqli_error($con));
$stmt = $con->prepare("SELECT username FROM users WHERE user_id = ?");
$stmt->bind_param("i", $user_id);
$stmt->execute();
$stmt->bind_result($username);

// Fetch the username
$stmt->fetch();
$stmt->close();
$con->close();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
</head>
<body>
    <h1>Bienvenue, <?php echo $username; ?>!</h1>
    <p>Ce ci est la page d'accueil.</p>
    <a href="logout.php">Logout</a>
</body>
</html>
