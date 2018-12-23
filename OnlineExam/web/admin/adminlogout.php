<?php
   if(!isset($_COOKIE['user']))
   {
	   header("location:adminindex.php");
   }
   else{
 setcookie("user","",time()-1);
echo "<script>alert('You Have Been Logged Out From Our Website');</script>";
echo "<script>window.open('adminindex.php','_self');</script>";
   }

?>