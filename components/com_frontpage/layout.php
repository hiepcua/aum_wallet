<?php
defined("ISHOME") or die("Can not acess this page, please come back!");
global $UserLogin;
$username = $GLOBALS['username'];
$_USER_ID = '123456ABC';
$res_wallet = get_wallet_by_user_id($_USER_ID);
if(count($res_wallet) <= 0) die('Không tồn tại!'); 
$row = $res_wallet[0];
$_free = $row['free'];
$_locked = $row['locked'];
$_total_banlance = $_free + $_locked;
?>
<div class="dashboard_page">
	<div class="panel panel-primary">
		<div class="panel-heading">Thông tin ví</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">Tổng:</div>
				<div class="col-md-10"><strong><?php echo number_format($_total_banlance);?></strong> vnđ</div>
			</div>
			<div class="row">
				<div class="col-md-2">Số dư khả dụng:</div>
				<div class="col-md-10"><strong><?php echo number_format($_free);?></strong> vnđ</div>
			</div>
			<div class="row">
				<div class="col-md-2">Locked:</div>
				<div class="col-md-10"><strong><?php echo number_format($_locked);?></strong> vnđ</div>
			</div>
		</div>
	</div>

	<div class="panel panel-warning">
		<div class="panel-heading">Giao dịch chờ xác nhận</div>
		<div class="panel-body">
			<?php
			$res_history = get_histories($_USER_ID);
			if(count($res_history)>0){
				?>
				<div class="row">
					<div class="col-md-2">Tổng</div>
					<div class="col-md-10">1.000.000 VNĐ</div>
				</div>
				<div class="row">
					<div class="col-md-2">Số dư khả dụng</div>
					<div class="col-md-10">8000.000 VNĐ</div>
				</div>
				<div class="row">
					<div class="col-md-2">Locked</div>
					<div class="col-md-10">200.000 VNĐ</div>
				</div>
				<?php
			}
			?>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">Lịch sử giao dịch</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">Tổng</div>
				<div class="col-md-10">1.000.000 VNĐ</div>
			</div>
			<div class="row">
				<div class="col-md-2">Số dư khả dụng</div>
				<div class="col-md-10">8000.000 VNĐ</div>
			</div>
			<div class="row">
				<div class="col-md-2">Locked</div>
				<div class="col-md-10">200.000 VNĐ</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>