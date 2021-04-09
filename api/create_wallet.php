<?php session_start();
require_once('../global/libs/gfconfig.php');
require_once('../global/libs/gfinit.php');
require_once('../global/libs/gffunc.php');
require_once('../global/libs/gffunc_wallet.php');
require_once('../includes/gfconfig.php');
require_once('../libs/cls.mysql.php');
require_once('../libs/cls.users.php');
$obj = new CLS_MYSQL;
if(isset($_POST['user_id']) && $_POST['user_id']!=='') {
	$user_id = antiData($_POST['user_id']);
	
	if(create_wallet($user_id)){
		die('success');
	}else{
		die('error');
	}
}
?>