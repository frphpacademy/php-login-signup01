<?php include('config.php');
session_start();

// Check if the user is already logged in, redirect to the home page
if (isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit;
}
$con = mysqli_connect($host, $user, $pass, $db, $port) or die(mysqli_error($con));
if ($_SERVER['REQUEST_METHOD'] === 'POST'&& isset($_POST["login"]) ) {
    // Perform the login validation
    $email = $_POST['email'];
    $password = $_POST['password'];



    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    // Prepare and execute the query to fetch the user ID
    $stmt = $con->prepare("SELECT user_id FROM users WHERE email = ? AND password = ?");
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $stmt->bind_result($user_id);

    // Check if a row is fetched
    if ($stmt->fetch()) {
        // Set the user ID in the session
        $_SESSION['user_id'] = $user_id;

        // Redirect to the home page
        header("Location: index.php");
        exit;
    } else {
        // Invalid username or password, display an error message
        $error = "Invalid username or password.";
    }

    $stmt->close();
    $con->close();
}
?>
<?php

$con = mysqli_connect($host, $user, $pass, $db, $port) or die(mysqli_error($con));
if ($_SERVER['REQUEST_METHOD'] === 'POST'&& isset($_POST["sign"]) ){
    // Retrieve form data
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    
    // Perform any necessary validation or sanitization on the data
    
    // Process the form data (e.g., store it in a database, send an email, etc.)
    // Replace the code below with your desired processing logic
    
    // Check if the email already exists in the database
    $query = "SELECT * FROM users WHERE email = '$email'";
    $result = mysqli_query($con, $query);
    
    if (mysqli_num_rows($result) > 0) {
        // Email already exists, handle the error or display a message to the user
        echo "Error: Email already exists";
    } else {
        // Email does not exist, insert the new record
        $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')";
        
        if (mysqli_query($con, $sql)) {
            // Get the user ID
            $user_id = mysqli_insert_id($con);
            
            // Set the user ID in the session
            $_SESSION['user_id'] = $user_id;
            
            // Redirect to the home page
            header("Location: index.php");
            exit;
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($con);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Connection || Inscription </title>
     <!-- font awesome icons -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css stylesheet -->
    <link rel="stylesheet" href="log.css">
</head>
<body>
<h2>Page de connection</h2>
<div class="container" id="container">
<div class="form-container sign-in-container">
		<form method="post" action="">
			<h1>Connecter</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>ou utilisese ton compte</span>
			<input name="email" type="email" placeholder="Email" required/>
			<input name="password" type="password" placeholder="Password" required/>
			<a href="#">Mots de passe oublié?</a>
			<button name="login" type="submit">Connecter</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
            <div class="overlay-panel overlay-right">
				<h1>Salut!</h1>
				<p>Entrer vos details de connection  et commencer</p>
                <span>ou</span>
				<button class="ghost" id="signUp">S'inscrire</button>
			</div>
			<div class="overlay-panel overlay-left">
				<h1>Bienvenue!</h1>
				<p>Entrer votre email pour s'inscrire</p>
                <span>ou</span>
				<button class="ghost" id="signIn">Connecter</button>
			</div>
		</div>
	</div>
	<div class="form-container sign-up-container">
		<form method="post" action="">
			<h1>Creer Un Compte</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>Ou utilise ton email pour inscription</span>
			<input name="username" type="text" placeholder="Name" required autocomplete="off"/>
			<input name="email" type="email" placeholder="Email" required autocomplete="off"/>
			<input name="password" type="password" placeholder="Password" required autocomplete="off"/>
			<button name="sign" type="submit">Inscrire</button>
		</form>
	</div>
</div>

<footer>
	<p>
		Creer avec <i class="fa fa-heart"></i> par
		<a target="_blank" href="">FR PHP ACADEMY</a>
		- voir comment j'ai fais
		<a target="_blank" href="">click</a>.
	</p>
</footer>
    
    <!-- js code -->
    <script>
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
    </script>

</body>
</html>