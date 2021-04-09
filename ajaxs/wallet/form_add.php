<?php
session_start();
define('incl_path','../../global/libs/');
define('libs_path','../../libs/');
require_once(incl_path.'gfconfig.php');
require_once(incl_path.'gfinit.php');
require_once(incl_path.'gffunc.php');
require_once(incl_path.'gffunc_user.php');
require_once(libs_path.'cls.mysql.php');
?>
<br/>
<div class='ajx_mess' style='color:#f00;'></div>
<form name="frm_action" id="frm_action" action="" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label>Số điện thoại</label><font color="red">(*)</font>
		<input type="number" name="username" class="form-control required" value="" placeholder="Số điện thoại">
	</div>

	<div class="form-group">
		<label>Tên khách hàng</label>
		<input type="text" name="fullname" class="form-control" value="" placeholder="Tên khách hàng">
	</div>

	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control" value="" placeholder="Email">
	</div>

	<div class="text-center toolbar">
		<button type="submit" id="cmdsave_tab" class="save btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cloud-arrow-down-fill" viewBox="0 0 16 16">
			<path d="M8 2a5.53 5.53 0 0 0-3.594 1.342c-.766.66-1.321 1.52-1.464 2.383C1.266 6.095 0 7.555 0 9.318 0 11.366 1.708 13 3.781 13h8.906C14.502 13 16 11.57 16 9.773c0-1.636-1.242-2.969-2.834-3.194C12.923 3.999 10.69 2 8 2zm2.354 6.854l-2 2a.5.5 0 0 1-.708 0l-2-2a.5.5 0 1 1 .708-.708L7.5 9.293V5.5a.5.5 0 0 1 1 0v3.793l1.146-1.147a.5.5 0 0 1 .708.708z"/>
		</svg> Thêm mới</button>
	</div>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$("form#frm_action").submit(function(e) {
			if(validForm()){
				e.preventDefault();
				var formData = new FormData(this);

				var _url="<?php echo ROOTHOST;?>ajaxs/customer/process_add.php";
				$.ajax({
					url: _url,
					type: 'POST',
					data: formData,
					success: function (res) {
						if(parseInt(res) == 1){
							window.location.reload();
						}else if(parseInt(res)==3){
							alert('Bạn không có quyền thực hiện chức năng này!');
						}else{
							alert('Lỗi!');
						}
					},
					cache: false,
					contentType: false,
					processData: false
				});
			}else{
				e.preventDefault();
			}
		});
	});

	function validForm(){
		var flag = true;
		$('#popup_modal .required').each(function(){
			var val = $(this).val();
			if(!val || val=='' || val=='0') {
				$(this).parents('.form-group').addClass('error');
				flag = false;
			}

			if(flag==false) {
				$('.ajx_mess').html('Những mục có đánh dấu * là những thông tin bắt buộc.');
			}
		});
		return flag;
	}
</script>