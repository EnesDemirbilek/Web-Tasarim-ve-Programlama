<?php 
  ob_start();
  session_start();
  $db = new PDO("mysql:host=localhost;dbname=alisveris","root","");
  $db->query("SET NAMES UTF8");
 ?>