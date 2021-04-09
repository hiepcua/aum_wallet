<?php
defined("ISHOME") or die("Can not acess this page, please come back!");
global $UserLogin;
$strWhere='';
$username = $GLOBALS['username'];
$_USER_ID = '123456ABC';
$res_wallet = get_wallet_by_user_id($_USER_ID);
if(count($res_wallet) <= 0) die('Không tồn tại!'); 
$row = $res_wallet[0];
$_free = $row['free'];
$_locked = $row['locked'];
$_total_banlance = $_free + $_locked;

// ------------------------------------
$get_userid = '';
if(isset($_GET['userid']) && $_GET['userid']!==''){
	$get_userid = antiData($_GET['userid']);
	$strWhere.=" AND user_id='".$get_userid."'";
}

$MAX_ROWS=25;
$total_rows = SysCount('tbl_wallet',$strWhere);
$max_pages = ceil($total_rows/$MAX_ROWS);
$cur_page = getCurentPage($max_pages);
$start = ($cur_page - 1) * $MAX_ROWS;
$strWhere.=' ORDER BY `cdate` DESC';

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
<?php
endif;
if($_isAdmin==1):
?>
<h1>Danh sách user</h1>
<div class="search_box panel panel-warning"><div class="panel-body"><div class="media row">
	<form name="frm_search" id="frm_search" method="post">
		<div class="form-group">
			<div class="col-md-2 col-xs-6">
				<input type="text" name="tk_userid" id="tk_userid" value="<?php echo $get_userid;?>" placeholder="Mã user" class="form-control"> 
			</div>
			<div class="col-md-2">
				<button type="button" name="tk_btnsearch" id="tk_btnsearch" class="btn btn-primary form-control">
				<i class="fa fa-search"></i> Tìm kiếm</button>
			</div>
		</div>
	</form>
</div></div></div>
<div class="responsive">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>STT</th>
				<th>User ID</th>
				<th class="text-center">Trạng thái</th>
				<th class="text-center">Chi tiết</th>
			</tr>
		</thead>
		<tbody id="data-table"></tbody>
	</table>
	<nav class="d-flex justify-content-center text-center">
		<?php paging($total_rows,$MAX_ROWS,$cur_page); ?>
	</nav>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#tk_userid").keypress(function(e){
			if(e.which==13) SubmitSearch();
		});
		$("#tk_btnsearch").click(function(){
			SubmitSearch();
		});

		getTable("<?php echo $strWhere;?>", "<?php echo $start;?>", "<?php echo $MAX_ROWS;?>");

		$('#btn_list_trash_member').click(function(){
			$('#txt_status').val('trash');
			$('#frm_search').submit();
		});

		$('#btn_list_member').click(function(){
			$('#txt_status').val('');
			$('#frm_search').submit();
		});
	});

	function SubmitSearch() {
		var _userid = $("#tk_userid").val();

		var url = window.location.href;
		var urlSplit = url.split( "?" );  
		var searchParams = new URLSearchParams(window.location.search);

		if(searchParams.has("userid")===true){ searchParams.delete("userid");}
		searchParams.append("userid",_userid);

		var obj = { Title : null, Url: urlSplit[0] + "?"+searchParams.toString()}; 
		history.pushState(null, obj.Title, obj.Url);
		window.location.reload();
	}

	function getTable(strwhere, start, max_row){
		var _url="<?php ROOTHOST;?>ajaxs/wallet/get_table.php";
		var _data={
			"strwhere": strwhere,
			"start": start,
			"max_row": max_row
		};

		$.get(_url, _data, function(req){
			$('#data-table').html(req);
		});
	}

	function addnew(){
		var _url="<?php ROOTHOST;?>ajaxs/wallet/form_add.php";
		$.get(_url, function(req){
			$('#popup_modal .modal-dialog').addClass('modal-lg');
			$('#popup_modal .modal-title').html('Thêm mới khách hàng');
			$('#popup_modal .modal-body').html(req);
			$('#popup_modal').modal('show');
		});
	}

	function edit(id){
		if(parseInt(id)!==0){
			var _url="<?php ROOTHOST;?>ajaxs/wallet/form_edit.php";
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
		$.post('<?php ROOTHOST;?>ajaxs/wallet/active.php', {"id": id}, function(res){
			console.log(res);
			if(parseInt(res)==1){
				window.location.reload();
			}else if(parseInt(res)==3){
				showMess('Bạn không có quyền thực hiện chức năng này!');
			}else{
				showMess('Lỗi!', 'error');
			}
		});
	}

	function delete_one(e){
		var id = e.getAttribute('data-id');
		if(confirm('Bạn có chắc muốn xóa?')){
			$.post('<?php ROOTHOST;?>ajaxs/wallet/delete.php', {"id": id}, function(res){
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