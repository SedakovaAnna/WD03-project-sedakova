<?php 

unset($_SESSION['logged_user']);
unset($_SESSION['login']);
unset($_SESSION['role']);
session_destroy();//закрыть сессию
setcookie(session_name(), '', time() - 60*60*24*32, '/');//стереть куки
header("Location: " . HOST); //главная

?>