<?php
session_start();
define('incl_path','../../global/libs/');
define('libs_path','../../libs/');
require_once(incl_path.'gfconfig.php');
require_once(incl_path.'gfinit.php');
require_once(incl_path.'gffunc.php');
require_once(incl_path.'gffunc_wallet.php');
require_once(libs_path.'cls.mysql.php');

$strwhere = isset($_GET['strwhere'])? trim($_GET['strwhere']): '';
$_start = isset($_GET['start'])? (int)$_GET['start']: 0;
$_max_row = isset($_GET['max_row'])? (int)$_GET['max_row']: 0;

function listTable($strwhere="", $start, $max_row){
	$strsql="$strwhere LIMIT $start,$max_row";
	$res = SysGetList('tbl_wallet', [], $strsql);
	if(count($res)>0){
		$rowcount = 0;
		foreach ($res as $key => $rows) {
			$rowcount++;
			$_id = $rows['id'];
			$_user_id = $rows['user_id'];
			$_cdate = date("d-m-Y, H:i:s", $rows['cdate']);

			if($rows['isactive'] == 1) 
				$icon_active    = "<i class='fa fa-toggle-on cgreen'></i>";
			else $icon_active   = '<i class="fa fa-toggle-off cgray" aria-hidden="true"></i>';

			echo "<tr>";
			echo "<td width='30' class='text-center'>".$rowcount."</td>";

			echo "<td><a href='".ROOTHOST."wallet_detail/".$_user_id."' target='_blank'>".$_user_id."</a></td>";
			echo "<td align='center' width='80><a href='javascript: void(0)' onclick='active(this)' data-id='".$_id."'>".$icon_active."</a></td>";

			echo "<td align='center' width='80'><a href='".ROOTHOST."wallet_detail/".$_user_id."' target='_blank'><i class='fa fa-edit'></i></a></td>";

			echo "</tr>";
		}
	}else{
		echo "<tr><td colspan='4' class='text-center'>Data is empty!</td></tr>";
	}
}
listTable($strwhere, $_start, $_max_row);
?>
