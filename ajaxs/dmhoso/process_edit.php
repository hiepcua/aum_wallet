<?php
session_start();
require_once('../../global/libs/gfconfig.php');
require_once('../../global/libs/gfinit.php');
require_once('../../global/libs/gffunc.php');
require_once('../../libs/cls.mysql.php');
require_once('../../libs/cls.users.php');

$objuser=new CLS_USER;
if(!$objuser->isLogin()) die("E01");
if(isset($_POST['id'])) {
	$obj=new CLS_MYSQL;
	$id=(int)$_POST['id'];
	$name=addslashes(strip_tags($_POST['name']));
	$bac = strlen($_POST['bac']) > 0 && $_POST['bac']!=='all' ? addslashes(strip_tags($_POST['bac'])) : null;
	$sql="UPDATE tbl_dmhoso SET `name`='$name', `id_he`='".$bac."' WHERE id='$id'";
	$obj->Exec($sql);
	die('success');
}?>