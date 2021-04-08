<?php
/* Tạo ví */
function create_wallet($user_id){
	$cdate = time();
	$obj = new CLS_MYSQL;
	$sql = "INSERT INTO tbl_wallet SET (`user_id`,`free`,`locked`,`cdate`,`active`) VALUES ('$user_id',0,0,'$cdate',0)";
	$result = $obj->Query($sql);
}

/* Nhập tiền */
function input_money($money, $user_id, $contents, $is_confirm=fale){
	$obj = new CLS_MYSQL;
	if($is_confirm==false){
		$time = time();
		$sql = "INSERT INTO tbl_wallet SET (`user_id`,`free`) VALUES ('$user_id', '$money')";
		$obj->Exec("BEGIN");
		$result1 = $obj->Exec($sql);

		/* Thêm bảng lịch sử */
		$sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L1')";
		$result2 = $obj->Exec($sql);

		if($result1 && $result2) {
			$obj->Exec("COMMIT"); echo "success";
		}else { 
			$obj->Exec("ROLLBACK"); echo "error";
		}
	}else{
		$time = time();
		$sql = "INSERT INTO tbl_wallet SET (`user_id`,`locked`) VALUES ('$user_id', `locked` + '$money')";
		$obj->Exec("BEGIN");
		$result1 = $obj->Exec($sql);

		/* Thêm bảng lịch sử */
		$sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L0')";
		$result2 = $obj->Exec($sql);

		/* Thêm bảng giao dịch */
		$sql = "INSERT INTO tbl_wallet_transsion SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L0')";
		$result3 = $obj->Exec($sql);

		if($result1 && $result2 && $result3) {
			$obj->Exec("COMMIT"); echo "success";
		}else { 
			$obj->Exec("ROLLBACK"); echo "error";
		}
	}
}

/* Confirm xác nhận giao dịch: kế toán, admin xác nhận giao dịch */
function confirm_transsion($id_transsion){
	$row = getTranssionById($id_transsion);
	$id_wallet = isset($row['id_wallet']) && $row['id_wallet']!=='' ? (int)$row['id_wallet'] : 0;
	$money = $row['money'];
	$user_id = $row['user_id'];
	$obj = new CLS_MYSQL;
	$time = time();

	$obj->Exec("BEGIN");
	// Trừ locked + free với số money
	$sql = "UPDATE tbl_wallet SET `locked`=(locked-$money), `free`=(`free`+$money) WHERE id=".$id_wallet;
	$result3 = $obj->Exec($sql);

	// Tạo lịch sử
    $sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','Xác nhận giao dịch thành công',$time,'L1')";
	$result2 = $obj->Exec($sql);

	// Xóa transsion
	$sql = "DELETE FROM tbl_wallet_transsion WHERE id=".$id_transsion;
    $result1 = $obj->Exec($sql);

	if($result1 && $result2 && $result3) {
		$obj->Exec("COMMIT"); echo "success";
	}else { 
		$obj->Exec("ROLLBACK"); echo "error";
	}
}

/* 
 Get info transsion 
 Return array data if exist else empty array
*/
function getTranssionById($id_transsion){
	$obj = new CLS_MYSQL();
	$sql = "SELECT * FROM tbl_wallet_transsion WHERE id=".$id_transsion;
	$obj->Query();
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/* Hủy giao dịch (trừ locked, tạo lịch sử, xóa transsion)*/
function cancel_transsion($id_transsion){
	$row = getTranssionById($id_transsion);
	$id_wallet = isset($row['id_wallet']) && $row['id_wallet']!=='' ? (int)$row['id_wallet'] : 0;
	$money = $row['money'];
	$user_id = $row['user_id'];
	$obj = new CLS_MYSQL;
	$time = time();

	$obj->Exec("BEGIN");
	// Xóa transsion
	$sql = "DELETE FROM tbl_wallet_transsion WHERE id=".$id_transsion;
    $result1 = $obj->Exec($sql);

    // Tạo lịch sử
    $sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','Hủy giao dịch',$time,'L2')";
	$result2 = $obj->Exec($sql);

	// Trừ locked
	$sql = "UPDATE tbl_wallet SET `locked`=(locked-$money) WHERE id=".$id_wallet;
	$result3 = $obj->Exec($sql);

	if($result1 && $result2 && $result3) {
		$obj->Exec("COMMIT"); echo "success";
	}else { 
		$obj->Exec("ROLLBACK"); echo "error";
	}
}

/* 
 Get info wallet by id 
 Return array data if exist else empty array
*/
function get_wallet($id_wallet){
	$sql="SELECT * FROM tbl_wallet WHERE id=".$id_wallet;
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/* 
 Get info wallet by user_id 
 Return array data if exist else empty array
*/
function get_wallet_by_user_id($user_id){
	$sql="SELECT * FROM tbl_wallet WHERE user_id='".$user_id."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/*
 Active or deactive wallet
 Return true or false
*/
function active_wallet($id_wallet){
	$obj = new CLS_MYSQL();
	$cdate = time();
	$sql = "UPDATE `tbl_wallet` SET `isactive` = if(`isactive`=1,0,1) , `mdate`='$cdate' WHERE `id` in ('$id_wallet')";
	return $obj->Query($sql);
}

/*
 Get total_binance by id
*/
function get_total_binance($id_wallet){
	$sql="SELECT SUM (`free` + `locked`) AS total_binance FROM tbl_wallet WHERE id=".$id_wallet;
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$r = $obj->Fetch_Assoc();
        return $r['total_binance'];
	}else{
		return 0;
	}
}

/*
 Get total_binance by user_id
*/
function get_total_binance_by_user($user_id){
	$sql="SELECT SUM (`free` + `locked`) AS total_binance FROM tbl_wallet WHERE user_id='".$user_id."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$r = $obj->Fetch_Assoc();
        return $r['total_binance'];
	}else{
		return 0;
	}
}

/*
 Get free
*/
function get_free($id_wallet){
	$sql="SELECT `free` FROM tbl_wallet WHERE id='".$id_wallet."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$r = $obj->Fetch_Assoc();
        return $r['free'];
	}else{
		return 0;
	}
}

/*
 Get locked
*/
function get_locked($id_wallet){
	$sql="SELECT `locked` FROM tbl_wallet WHERE id='".$id_wallet."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$r = $obj->Fetch_Assoc();
        return $r['locked'];
	}else{
		return 0;
	}
}

/* 
 Get histories of wallet
 return array history
*/
function get_histories_by_id($id_wallet){
	$sql="SELECT * FROM tbl_wallet_histories WHERE id_wallet=".$id_wallet;
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/* 
 Get histories of wallet by user_id
 return array history
*/
function get_histories($user_id){
	$sql="SELECT * FROM tbl_wallet_histories WHERE user_id='".$user_id."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/* 
 Get transsion of wallet
 return array history
*/
function get_transsion($id_wallet){
	$sql="SELECT * FROM tbl_wallet_transsion WHERE id_wallet=".$id_wallet;
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}

/* 
 Get transsion of wallet by user_id
 return array history
*/
function get_transsion_by_user($user_id){
	$sql="SELECT * FROM tbl_wallet_transsion WHERE user_id='".$user_id."'";
	$obj = new CLS_MYSQL();
	$result = $obj->Query($sql);
	if($obj->Num_rows()>0){
		$arr=array();
        while($r=$obj->Fetch_Assoc()){
            $arr[]=$r;
        }
        return $arr;
	}else{
		return array();
	}
}
