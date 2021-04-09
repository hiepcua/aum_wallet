<?php
session_start();
define('incl_path','../../global/libs/');
define('libs_path','../../libs/');
require_once(incl_path.'gfconfig.php');
require_once(incl_path.'gfinit.php');
require_once(incl_path.'gffunc.php');
require_once(incl_path.'gffunc_user.php');
require_once(libs_path.'cls.mysql.php');

$username = isset($_POST['username']) ? str_replace(' ', '', $_POST['username']) : '';
if($username !== '') {
	$arr=array();
	$arr['username'] = $username;
	$arr['phone'] = $username;
	$arr['fullname'] = isset($_POST['fullname']) ? addslashes($_POST['fullname']) : '';
	$arr['email'] = isset($_POST['email']) ? addslashes($_POST['email']) : '';
	$arr['cdate'] = time();
	$arr['isactive'] = 1;

	SysAdd('tbl_customer', $arr);
	die('1');
}else{
	die('0');
}
?>