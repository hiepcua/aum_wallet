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
$_isAdmin=1;
if($_isAdmin==0):
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
								<th>Trạng thái</th>
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
								<td>'.$str_status.'</td>
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
<?php
endif;
if($_isAdmin==1):
?>
<h1>Danh sách user</h1>
<div class="responsive">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>STT</th>
				<th>User ID</th>
				<th>Trạng thái</th>
				<th>Chi tiết</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$MAX_ROWS=50;
			$res_wallets = SysGetList('tbl_wallet', array(), "ORDER BY `cdate` DESC");
			$total_rows = count($res_wallets);
			$max_pages = ceil($total_rows/$MAX_ROWS);
			$cur_page = getCurentPage($max_pages);
			$start = ($cur_page - 1) * $MAX_ROWS;
			$limit = ' LIMIT '.$start.','. $MAX_ROWS;
			$sql.= $limit;
			$obj->Query($sql);

			$i=0;
			foreach ($res_transsion as $key => $value) {
				$i++;
				$str_status = '';
				switch ($value['isactive']) {
					case '0':
					$str_status.='<i class="fas fa-toggle-on cgray"></i>';
					break;
					case '1':
					$str_status.='<i class="fas fa-toggle-on cgreen"></i>';
					break;
					default:
					$str_status.='<i class="fas fa-toggle-on cgray"></i>';
					break;
				}
				echo '<tr>
				<td width="50" align="center">'.$i.'</td>
				<td>'.$value['user_id'].'</td>
				<td>'.number_format($value['money']).' vnđ</td>
				<td>'.$value['contents'].'</td>
				<td><a href="javascript: void(0)" onclick="active(this)" data-id="'.$value['id'].'">'.$str_status.'</a></td>
				<td>Xác nhận</td>
				</tr>';
			}
			?>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		getTable(" AND `is_trash` = 0", "0", "LIMIT 0,20", "");

		$('#btn_list_trash_member').click(function(){
			$('#txt_status').val('trash');
			$('#frm_search').submit();
		});

		$('#btn_list_member').click(function(){
			$('#txt_status').val('');
			$('#frm_search').submit();
		});
	});

	function getTable(strwhere, search, limit, trash){
		var _url="http://localhost/bus247.vn/ajaxs/customer/get_table.php";
		var _data={
			"strwhere": strwhere,
			"search": search,
			"limit": limit,
			"trash": trash,
		};

		$.get(_url, _data, function(req){
			$('#data-table').html(req);
		});
	}

	function addnew(){
		var _url="http://localhost/bus247.vn/ajaxs/customer/form_add.php";
		$.get(_url, function(req){
			$('#popup_modal .modal-dialog').addClass('modal-lg');
			$('#popup_modal .modal-title').html('Thêm mới khách hàng');
			$('#popup_modal .modal-body').html(req);
			$('#popup_modal').modal('show');
		});
	}

	function edit(id){
		if(parseInt(id)!==0){
			var _url="http://localhost/bus247.vn/ajaxs/customer/form_edit.php";
			$.get(_url, {"id": id}, function(req){
				$('#popup_modal .modal-dialog').addClass('modal-lg');
				$('#popup_modal .modal-title').text('Cập nhật khách hàng');
				$('#popup_modal .modal-body').html(req);
				$('#popup_modal').modal('show');
			});
		}
	}

	function active(e){
		var id = e.getAttribute('data-id');
		$.post('http://localhost/bus247.vn/ajaxs/customer/active.php', {"id": id}, function(res){
			if(parseInt(res)==1){
				window.location.reload();
			}else if(parseInt(res)==3){
				alert('Bạn không có quyền thực hiện chức năng này!');
			}else{
				alert('Lỗi!');
			}
		});
	}

	function delete_one(e){
		var id = e.getAttribute('data-id');
		if(confirm('Bạn có chắc muốn xóa?')){
			$.post('http://localhost/bus247.vn/ajaxs/customer/delete.php', {"id": id}, function(res){
				if(parseInt(res)==1){
					window.location.reload();
				}else if(parseInt(res)==3){
					alert('Bạn không có quyền thực hiện chức năng này!');
				}else{
					alert('Lỗi!');
				}
			});
		}
	}
</script>
<?php
endif;
?>
<div class="clearfix"></div>