<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/store/core/inti.php';
unset($_SESSION['SBUser']);
header('Location: login.php');



?>
