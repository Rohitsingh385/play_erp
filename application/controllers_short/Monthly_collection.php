<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Monthly_collection extends MY_controller
{
	public function __construct()
	{
		parent::__construct();
		$this->loggedOut();
		$this->load->model('Mymodel', 'dbcon');
		$this->load->model('Farheen', 'farheen');
		$this->load->model('Alam', 'alam');
	}

	public function month_collection()
	{
		$stu_adm = $this->dbcon->select('student', 'ADM_NO', "Student_Status='ACTIVE'");
		$array = array(
			'stu_adm' => $stu_adm
		);
		$this->fee_template('Fee_collection/monthly_collection', $array);
	}

	public function monthly_adm_data()
	{
		$adm_no = $this->input->post('val');
		$stu_data = $this->dbcon->select('student', '*', "ADM_NO='$adm_no' AND Student_Status='ACTIVE'");
		if (!empty($stu_data)) {
			$stu_id = $stu_data[0]->STUDENTID;
		} else {
			$stu_id = "n/a";
		}
		$pre_dues = $this->dbcon->select('previous_year_feegeneration', 'sum(TOTAL)TOTAL', "ADM_NO='$adm_no'");
		$pre_dues_amt = $pre_dues[0]->TOTAL;
		if ($pre_dues_amt == null) {
			$pre_dues1 = 0;
		} else {
			$pre_dues1 = $pre_dues_amt;
		}

		$cnt = count($stu_data);
		$ar_data = array($cnt, $pre_dues1, $stu_id);
		echo json_encode($ar_data);
	}

	public function show_student()
	{
		$details = $this->dbcon->select('student', 'ADM_NO,FIRST_NM,DISP_CLASS,DISP_SEC,FATHER_NM,MOTHER_NM', "Student_Status='ACTIVE'");
		echo json_encode($details);
	}

	public function stu_data()
	{
		$adm_no = $this->input->post('val');
		$User_Id = $this->session->userdata('user_id');

		$stu_data = $this->dbcon->monthly_collection($adm_no);

		$month_data = $this->db->query("select * from month_master")->result();

		$ward = $stu_data[0]->HOUSENAME;
		if ($ward == "NONE" || $ward == "BACHPAN") {
			$master = $this->dbcon->select('master', '*', "User_ID='$User_Id' AND Collection_Type='3'");
		} else {
			$master = $this->dbcon->select('master', '*', "User_ID='$User_Id' AND Collection_Type='1'");
		}



		$array = array(
			'student_data' => $stu_data,
			'master' => $master,
			'month_data' => $month_data
		);
		$this->load->view('Fee_collection/month_collection_data', $array);
	}

	public function showledger_monthly_collection()
	{
		$adm = $this->input->post('adm_no');
		$std_ldgr = $this->dbcon->select('daycoll', '*', "ADM_NO='$adm'");
		echo json_encode($std_ldgr);
	}

	public function cancel_payment(){
		$adm = $this->input->post('adm');
		$checkdata = $this->farheen->checkData('*','student',"ADM_NO='$adm' AND Student_Status='ACTIVE'");
		if($checkdata){
			$stu_data = $this->farheen->select('student','*',"ADM_NO='$adm' AND Student_Status='ACTIVE'");
			$pay_status = $stu_data[0]->Counter_payment_status;
			if($pay_status == 0){
				echo "Alredy Cancel";
			}else{
				//$this->farheen->update('student',array('Counter_payment_status' => 0,'Login_Id' => "N/A"),"ADM_NO='$adm' AND Student_Status='ACTIVE'");
				echo "Cancel Success";
			}
			
		}else{
			echo "No Student Details Exist";
		}
	}

	public function month_detail()
	{
		$month = $this->input->post('chkboxx');
		$dat = array();
		foreach($month as $key => $value)
			{
				$dat[]=$value;
			    $mnt = implode("','",$dat);
		
		}
		
		$mnth_det = $this->db->query("select month_name from month_master where id IN('$mnt')")->result();
		
		$mntt = array();
		foreach($mnth_det as $key => $val)
			{
				
				$mntt[].=$val->month_name;
				
		    }
			
		$json = array('mntt'=>$mntt);
		echo json_encode($json);
	}
}
