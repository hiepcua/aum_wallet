<?php
session_start();
define('incl_path','../../global/libs/');
define('libs_path','../../libs/');
require_once(incl_path.'gfconfig.php');
require_once(incl_path.'gfinit.php');
require_once(incl_path.'gffunc.php');
require_once(incl_path.'gffunc_user.php');
require_once(libs_path.'cls.mysql.php');

$username = isset($_POST['username']) ? antiData($_POST["username"]) : 0;
$res_Customer = SysGetList('tbl_customer', array(), "AND `username`='".$username."'");
if(count($res_Customer) <= 0){
	echo 'Không có dữ liệu.'; 
	return;
}
$row = $res_Customer[0];
?>
<br/>
<div class="row">
	<div class="col-md-6">
		<div class="row form-group">
			<label class="control-label col-md-3">Họ tên: </label>
			<div class="col-md-9"><?php echo $row['fullname'];?></div>
		</div>

		<div class="row form-group">
			<label class="control-label col-md-3">SĐT: </label>
			<div class="col-md-9"><?php echo $row['phone'];?></div>
		</div>

		<div class="row form-group">
			<label class="control-label col-md-3">Email: </label>
			<div class="col-md-9"><?php echo $row['email'];?></div>
		</div>

		<div class="row form-group">
			<label class="control-label col-md-3">Địa chỉ: </label>
			<div class="col-md-9"><?php echo $row['address'];?></div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="row form-group">
			<label class="control-label col-md-3">Nguồn: </label>
			<div class="col-md-9"><?php echo ($row['source']=='' || $row['source']==null) ? 'Khác' : $row['source'];?></div>
		</div>

		<div class="row form-group">
			<label class="control-label col-md-3">Zalo ID: </label>
			<div class="col-md-9"><?php echo $row['zalo_id'];?></div>
		</div>

		<div class="row form-group">
			<label class="control-label col-md-3">Face ID: </label>
			<div class="col-md-9"><?php echo $row['facebook_id'];?></div>
		</div>
	</div>
</div>