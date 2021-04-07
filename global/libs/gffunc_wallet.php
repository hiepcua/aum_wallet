<?php
/* Nhập tiền */
function input_money($money, $user_id, $contents, $is_confirm=fale){
	$obj = new CLS_MYSQL;
	if($is_confirm==false){
		$time = time();
		$sql = "INSERT INTO tbl_wallet SET (`user_id`,`free`) VALUES ('$user_id', '$money')";
		$obj->Exec("BEGIN");
		$obj->Query($sql);
		$result1 = $obj->Exec($sql);

		$sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L1')";
		$obj->Query($sql);
		$result2 = $obj->Exec($sql);

		if($result1 && $result2) {
			$obj->Exec("COMMIT"); echo "success";
		}else { 
			$obj->Exec("ROLLBACK"); echo "error";
		}
	}else{
		$time = time();
		$sql = "INSERT INTO tbl_wallet SET (`user_id`,`locked`) VALUES ('$user_id', '$money')";
		$obj->Exec("BEGIN");
		$obj->Query($sql);
		$result1 = $obj->Exec($sql);

		/* Thêm bảng lịch sử */
		$sql = "INSERT INTO tbl_wallet_histories SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L0')";
		$obj->Query($sql);
		$result2 = $obj->Exec($sql);

		/* Thêm bảng giao dịch */
		$sql = "INSERT INTO tbl_wallet_transsion SET (`id_wallet`,`user_id`,`monney`,`contents`,`cdate`,`status`) VALUES ('$result1','$user_id','$money','$contents',$time,'L0')";
		$obj->Query($sql);
		$result3 = $obj->Exec($sql);

		if($result1 && $result2 && $result3) {
			$obj->Exec("COMMIT"); echo "success";
		}else { 
			$obj->Exec("ROLLBACK"); echo "error";
		}
	}
}

/* Confirm giao dịch kế toán, admin xác nhận giao dịch */
function confirm_transsion(){

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

/* Hủy giao dịch user hủy giao dịch (trừ locked, tạo lịch sử, xóa transsion)*/
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
	$result2 = $obj->Query($sql);

	// Trừ locked
	$sql = "UPDATE tbl_wallet SET `locked`=(locked-$money) WHERE id=".$id_wallet;
	$result3 = $obj->Query($sql);

	if($result1 && $result2 && $result3) {
		$obj->Exec("COMMIT"); echo "success";
	}else { 
		$obj->Exec("ROLLBACK"); echo "error";
	}
}