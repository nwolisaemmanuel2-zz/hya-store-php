<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/store/core/inti.php';
include 'includes/head.php';

$email = ((isset($_POST['email']))?sanitize($_POST['email']):'');
$email = trim($email);
$password = ((isset($_POST['password']))?sanitize($_POST['password']):'');
$password = trim($password);
//$hashed = password_hash($password, PASSWORD_DEFAULT);
$errors = array();
?>

<style>
   body{
    background-image:url("/dilano/images/background.jpeg");
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
		    $errors[] = 'You must provide username and password.';
		 }
		// validate email
		/*if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
		   $errors[] = 'You must enter a valid email';
		}*/

		// password is more than 6 characters
		if(strLen($password) < 6) {
		  $errors[] = 'Password must be at least 6 characters.';
		}
		//check if email exists in the database
    $query = $db->query("SELECT * FROM admin_users WHERE email = '$email'");
		$user = mysqli_fetch_assoc($query);
		$userCount = mysqli_num_rows($query);
	  if($userCount < 1){
		  $errors[] = 'That username doesn\'t exist.';
		}
      //check if password exists in the database
		if(!password_verify($password, $user['password'])){
			$errors[] = 'Password does not match. Please try again.';
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
   <font style=" font:bold 50px 'Aleo'; text-shadow:1px 1px 50px #000; color:#3393FF;"><h2 class="text-center">OMAN BERLYN ENTERPRISE </h2><hr></font>
   <form action="login.php" method="post">
      <div class="form-group">
	     <label for="email">Username:</label>
		<span style="height:30px; width:25px;" class="add-on"><i class="icon-user icon-2x"></i></span> <input style="height:40px;" type="text" name="email" id="email" class="form-control" placeholder ="Enter Username" value="<?=$email;?>">
       </div>
	   <div class="form-group">
         <label for="password">Password:</label>
		 <span style="height:30px; width:25px;" class="add-on"><i class="icon-lock icon-2x"></i></span><input type="password" name="password" id="password" class="form-control" placeholder ="Enter Password" value="<?=$password;?>">
       </div>
	   <div class="form-group">
	      <input type="submit" value="Login">

	   </div>
     </form>
    <!-- <p class="text-right"><a href="/asset/index.php" alt="home">Visit Site</a></p>-->

   </div>


<?php //include 'includes/footer.php'; ?>
