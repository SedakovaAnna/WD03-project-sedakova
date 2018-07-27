<?php 
require ROOT . "libs/rb-mysql.php";

R::setup('mysql:host='.DB_SERVER.';dbname='.DB_NAME, DB_USER, DB_PASSWORD);
// R::freeze( TRUE ); //чтобы БД не изменялась
 ?>