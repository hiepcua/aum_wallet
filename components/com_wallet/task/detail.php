<?php
defined('ISHOME') or die('Can not acess this page, please come back!');
// $check_permission = $UserLogin->Permission('wallet');
// if($check_permission==false) die($GLOBALS['MSG_PERMIS']);
$strWhere="";
$_USER_ID = isset($_GET['userid']) ? antiData($_GET['userid']) : '';
$res_wallet = get_wallet_by_user_id($_USER_ID);
if(count($res_wallet) <= 0) die('Không tồn tại!'); 
$strWhere.=" AND `user_id`='".$_USER_ID."'";

$row = $res_wallet[0];
$_free = $row['free'];
$_locked = $row['locked'];
$_total_banlance = $_free + $_locked;

// ------------------------------------
$MAX_ROWS=25;
$total_rows = SysCount('tbl_wallet',$strWhere);
$max_pages = ceil($total_rows/$MAX_ROWS);
$cur_page = getCurentPage($max_pages);
$start = ($cur_page - 1) * $MAX_ROWS;
$strWhere.=' ORDER BY `cdate` DESC';
?>
<div class="container-fluid">
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
			$res_transsion = get_transsion($_USER_ID);
			if(count($res_transsion)>0){
				?>
				<div class="responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>STT</th>
								<th>User ID</th>
								<th>Số tiền</th>
								<th>Nội dung</th>
								<th>Thời gian</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							foreach ($res_transsion as $key => $value) {
								$i++;
								echo '<tr>
								<td width="50" align="center">'.$i.'</td>
								<td>'.$value['user_id'].'</td>
								<td>'.number_format($value['money']).' vnđ</td>
								<td>'.$value['contents'].'</td>
								<td>'.date('H:i:s, d-m-Y', $value['cdate']).'</td>
								<td>Xác nhận</td>
								</tr>';
							}
							?>
						</tbody>
					</table>
				</div>
				<?php
			}
			?>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">Lịch sử giao dịch</div>
		<div class="panel-body">
			<?php
			$res_history = get_histories($_USER_ID);
			if(count($res_history)>0){
				?>
				<div class="responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>STT</th>
								<th>User ID</th>
								<th>Số tiền</th>
								<th>Nội dung</th>
								<th>Thời gian</th>
								<th class="text-center">Trạng thái</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							foreach ($res_history as $key => $value) {
								$i++;
								$str_status = '';
								switch ($value['status']) {
									case 'L0':
										$str_status.='<label class="label label-default">L0 - Giao dịch mới</label>';
										break;
									case 'L1':
										$str_status.='<label class="label label-success">L1 - Hoàn thành</label>';
										break;
									case 'L2':
										$str_status.='<label class="label label-danger">L2 - Hủy</label>';
										break;
									default:
										$str_status.='<label class="label label-default">L0 - Giao dịch mới</label>';
										break;
								}
								echo '<tr>
								<td width="50" align="center">'.$i.'</td>
								<td>'.$value['user_id'].'</td>
								<td>'.number_format($value['money']).' vnđ</td>
								<td>'.$value['contents'].'</td>
								<td>'.date('H:i:s, d-m-Y', $value['cdate']).'</td>
								<td width="80" align="center">'.$str_status.'</td>
								</tr>';
							}
							?>
						</tbody>
					</table>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</div>