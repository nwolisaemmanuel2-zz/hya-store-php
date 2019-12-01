<?php
//require_once $_SERVER['DOCUMENT_ROOT'].'/asset/core/inti.php';
require_once 'core/inti.php';
require_once 'helpers.php';
//include 'includes/head.php';


$email = ((isset($_POST['email']))?sanitize($_POST['email']):'');
$email = trim($email);
$password = ((isset($_POST['password']))?sanitize($_POST['password']):'');
$password = trim($password);
//$hashed = password_hash($password, PASSWORD_DEFAULT);
$errors = array();
?>

<style>
   body{
    background-image:url("/asset/images/headerlogo/background.jpg");
	  background-size: 100vw 100vh;
    background-attachment: fixed;
}
</style>
<div id="login-form">
 <div>
   <?php
    if($_POST){
	   //Form validation
	   if(empty($_POST['email']) || empty($_POST['password'])) {
		    $errors[] = 'You must provide email and password.';
		 }
		// validate email
		if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
		   $errors[] = 'You must enter a valid email';
		}

		// password is more than 6 characters
		if(strLen($password) < 6) {
		  $errors[] = 'Password must be at least 6 characters.';
		}
		//check if email exists in the database
    $query = $db->query("SELECT * FROM admin_users WHERE email = '$email'");
		$user = mysqli_fetch_assoc($query);
		$userCount = mysqli_num_rows($query);
	  if($userCount < 1){
		  $errors[] = 'That email doesn\'t exist in our database';
		}
      //check if password exists in the database
		if(!password_verify($password, $user['password'])){
			$errors[] = 'The password does not match our records. Please try again.';
		}

		if(!empty($errors)){
		   echo display_errors($errors);
		} else {
		   //log user in
		   $user_id = $user['id'];
		   login($user_id);
       }
	 }
   ?>
 </div>
   <h2 class="text-center">Login</h2><hr>
   <form action="logincopy.php" method="post">
      <div class="form-group">
	     <label for="email">Email:</label>
		 <input type="email" name="email" id="email" class="form-control" value="<?=$email;?>">
       </div>
	   <div class="form-group">
         <label for="password">Password:</label>
		 <input type="password" name="password" id="password" class="form-control" value="<?=$password;?>">
       </div>
	   <div class="form-group">
	      <input type="submit" value="Login">
	   </div>
     </form>
     <p class="text-right"><a href="/asset/index.php" alt="home">Visit Site</a></p>
   </div>


<?php include 'includes/footer.php'; ?>
