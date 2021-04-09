<?php
session_start();
define('incl_path','../../global/libs/');
define('libs_path','../../libs/');
require_once(incl_path.'gfconfig.php');
require_once(incl_path.'gfinit.php');
require_once(incl_path.'gffunc.php');
require_once(libs_path.'cls.mysql.php');
require_once(libs_path.'cls.users.php');

$objuser=new CLS_USER;
if(!$objuser->isLogin()) die("E01");
$id = antiData($_POST['id']);
if($id !== 0){
	$time = time();
	$objmysql = new CLS_MYSQL();
	$sql="UPDATE `tbl_wallet` SET `isactive` = if(`isactive`=1,0,1), `mdate`=$time WHERE `id`='".$id."'";
	$objmysql->Exec($sql);
	die('1');
}else{
	die('0');
}
?>