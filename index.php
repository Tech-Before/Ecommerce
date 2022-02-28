<?php
require "config/constants.php";
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}

include './_partials/header.php';
?>



</body>
</html>
