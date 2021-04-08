<?php
defined('ISHOME') or die("You can't access this page!");
if(!$UserLogin->isLogin()) die("You can't access this page!");
$objdata=new CLS_MYSQL();
$com=isset($_GET['com'])?strip_tags(trim($_GET['com'])):'frontpage';
?>
<div class='bgColor' id='site_header'>
	<div class='logo pull-left'><a href="<?php echo ROOTHOST;?>">
		<img src="<?php echo ROOTHOST;?>images/logo/logo55.png" class="img-responsive">
	</a></div>
	<div class='header_content'>
		<div class="navbar-container container-fluid">
			<div class="nav-right">
				<ul class="list-unstyle">
					<?php if($UserLogin->Permission('config')==true || $UserLogin->Permission('user')==true) { ?>
						<li><a href='javascript:void(0);'>
							<i class="fa fa-graduation-cap" aria-hidden="true"></i> Hệ thống</a>
							<ul class="submenu">
								<?php if($UserLogin->Permission('config')==true) { ?>
									<li><a href="<?php echo ROOTHOST;?>config">Cấu hình hệ thống</a></li>
								<?php } if($UserLogin->Permission('user')==true) { ?>
									<li><a href="<?php echo ROOTHOST;?>user">Quản lý User - Phân quyền</a></li>
								<?php }?>
							</ul>
						</li>
					<?php } ?>
					<li>
						<div class="btn-group form-profile">
							<div class="pull-left action dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								<a href="javascript:void(0);" id="nav_registry" ><span class='avatar-small'><i class="fa fa-user fa-2" aria-hidden="true"></i></span> <?php echo $UserLogin->getInfo('lastname').' '.$UserLogin->getInfo('firstname');?> </a><i class="fa fa-caret-down" aria-hidden="true"></i>
							</div>
							<ul class="dropdown-menu pull-right">
								<li><a href="<?php echo ROOTHOST;?>profile"><i class="fa fa-info-circle"></i> Thông tin tài khoản</a></li>
								<li><a href="<?php echo ROOTHOST;?>changepass"><i class="fa fa-key"></i> Đổi mật khẩu</a></li>
								<li><a href="<?php echo ROOTHOST;?>logout" rel="nofollow,noindex"><i class="fa fa-power-off"></i> Đăng xuất</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>