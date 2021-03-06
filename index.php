<?php
session_start();
ini_set("display_errors",1);
require_once('global/libs/gfconfig.php');
require_once('global/libs/gfinit.php');
require_once('global/libs/gffunc.php');
require_once('global/libs/gffunc_wallet.php');
require_once('includes/gfconfig.php');
require_once('libs/cls.mysql.php');
require_once('libs/cls.users.php');
require_once('libs/cls.guser.php');
require_once('libs/cls.configsite.php');
require_once('libs/cls.wallet.php');

define('ISHOME',true);
//-------------- FULL URL --------------
global $_FULLURL;
if(!isset($_FULLURL)) $_FULLURL=$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
$COM = isset($_GET['com'])?strip_tags(htmlentities($_GET['com'])):'frontpage';
$task= isset($_GET['task'])?strip_tags(htmlentities($_GET['task'])):'';
global $UserLogin;
$UserLogin=new CLS_USER;
// danh sach khach hang cua saler
$gid = $UserLogin->getInfo('gid');
$username = $UserLogin->getInfo('username');
$objdata=new CLS_MYSQL;
// config site
$config=new CLS_CONFIG; $config->getList();
$conf = $config->Fetch_Assoc();
global $conf;

// style print
$html ='<style>
@media print {
	body {
		font: 13px "Times New Roman", Times, serif;
		line-height: 1.3;
		background: #fff !important;
		color: #000;
	}
	h1 {font-size: 24pt;}

	h2, h3, h4 {
		font-size: 14pt;
		margin-top: 25px;
	}
	.page-title {
		padding: 0;
		font-size: 24px;
		letter-spacing: -1px;
		display: block;
		color: #333;
		font-weight: 300;
		margin-bottom: 10px;
		margin-top: 10px;
		text-align:center;
	}
	.panel-warning {
		border-color: #faebcc;
	}
	.panel {
		margin-bottom: 20px;
		background-color: #fff;
		border: 1px solid transparent;
		border-radius: 4px;
		-webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05);
		box-shadow: 0 1px 1px rgba(0,0,0,.05);
	}
	.panel-body {
		padding: 15px;
	}
	table.table {
		background: white;
		border-collapse: collapse;
		width: 100%;
	}
	table.table tr, table.table th, table.table td {
		border: none;
		border-bottom: 1px solid #e8e8e8;
		font-size: 13px;
	}
	table.table th, table.table td {
		padding: 8px !important;
	}
	.table-bordered {
		border: 1px solid #ddd;
	}
	table.table-bordered tr, table.table-bordered th, table.table-bordered td {
		border: none;
		border-bottom: 1px solid #e8e8e8;
		font-size: 13px;
	}
	.table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, 
	.table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, 
	.table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
		border: 1px solid #ddd;
	}
}
</style>';
?>
<!doctype html>
<html lang='vi'>
<head>
	<meta charset="utf-8"/>
	<title><?php echo $conf['title'];?></title>
	<meta name="robots" content="noindex, nofollow" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>global/css/bootstrap.min.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>global/css/font-awesome.min.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>global/css/select2.min.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>global/css/bootstrap-datepicker.min.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>css/checkbox.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>css/loading.css'/>
	<link rel='stylesheet' href='<?php echo ROOTHOST;?>css/style.css'/>
	<script>var ROOTHOST = '<?php echo ROOTHOST;?>';</script>
	<script src='<?php echo ROOTHOST;?>global/js/jquery.min.js'></script>
	<script src='<?php echo ROOTHOST;?>global/js/bootstrap.min.js'></script>
	<script src='<?php echo ROOTHOST;?>global/js/select2.min.js'></script>
	<script src='<?php echo ROOTHOST;?>global/js/bootstrap-datepicker.min.js'></script>
	<script src='<?php echo ROOTHOST;?>global/js/bootstrap-datepicker.vi.js'></script>
	<script src="<?php echo ROOTHOST;?>js/script.js"></script>
	<script src="<?php echo ROOTHOST;?>js/func.js"></script>
	<script src="<?php echo ROOTHOST;?>js/main.js"></script>
	<script src="<?php echo ROOTHOST;?>js/script.min.js"></script>
</head>
<body>
	<?php
	if(!$UserLogin->isLogin()){
		include_once(COM_PATH."com_user/task/login.php");
	}else{
		?>
		<?php include('modules/mod_top_menu.php');?>
		<div id='site_body'>
			<div id='site_main' style="margin-left:0px!important">
				<div id='main_inner'>
					<?php
					$path_com="components/com_$COM/layout.php";
					if(is_file($path_com)) include($path_com);
					?>
				</div>
			</div>
		</div>
		<div id="myModalPopup" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"></h4>
					</div>
					<div class="modal-body"></div>
				</div>
			</div>
		</div>
		<div class="loading"></div>
	<?php } ?>
	<script>
		$(document).ready(function(){
			$('#logout').click(function(){
				var url = "<?php echo ROOTHOST;?>ajaxs/user/logout.php";
				$.post(url,function(req){
					window.location.reload();
				});
			})
			//prevent form resubmission when page is refreshed (F5 / CTRL+R)
			if ( window.history.replaceState ) {
				window.history.replaceState( null, null, window.location.href );
			}
			//input focus select all text
			$("input[type=text]").focus(function() {
				$(this).select();
			});
			$("input[type=number]").focus(function() {
				$(this).select();
			});
		})

		//table fix top when scroll down
		;(function($) {
			$.fn.fixMe = function() {
				return this.each(function() {
					var $this = $(this),
					$t_fixed;
					function init() {
						$t_fixed = $this.clone();
						$t_fixed.find("tbody").remove().end().addClass("fixed").insertBefore($this);
						resizeFixed();
					}
					function resizeFixed() {
						$t_fixed.find("th").each(function(index) {
							$(this).css("width",$this.find("th").eq(index).outerWidth()+"px");
						});
					}
					function scrollFixed() {
						var offset = $(this).scrollTop(),
						tableOffsetTop = $this.offset().top,
						tableOffsetBottom = tableOffsetTop + $this.height() - $this.find("thead").height();
						if(offset < tableOffsetTop || offset > tableOffsetBottom)
							$t_fixed.hide();
						else if(offset >= tableOffsetTop && offset <= tableOffsetBottom && $t_fixed.is(":hidden"))
							$t_fixed.show();
					}
					$(window).resize(resizeFixed);
					$(window).scroll(scrollFixed);
					init();
				});
			};
		})(jQuery);

		$(document).ready(function(){
			$("table.list").fixMe();
		});

		//show/hide loading
		function showLoading() {
			$(".loading").show();
		}
		function hideLoading() {
			$(".loading").hide();
		}
	</script>
</body>
</html>