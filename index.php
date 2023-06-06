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
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="includes/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <title>Bienvenue</title>
</head>
<body>
<nav class="navbar">
      <nav>
        <button class="material-symbols-outlined"></button>
        <button class="material-symbols-outlined"></button>
        <a><img src="../img/<?php echo $image; ?>"/></a>
        <a href="collabe.php" class="material-symbols-outlined">
          <span class="badge">+9</span>notifications</a>
        <a href="../logout.php" class="material-symbols-outlined">logout</a>
      </nav>
    </nav><br>
    <h1>Bienvenue, <?php echo $username; ?>!</h1>
    <p>Ce ci est la page d'accueil.</p>
    <a href="logout.php">Logout</a>
</body>
</html>
