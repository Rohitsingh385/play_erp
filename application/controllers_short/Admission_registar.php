<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Admission_registar extends MY_Controller{
	public function __construct(){
		parent:: __construct();
		$this->loggedOut();
	    $this->load->model('Mymodel','dbcon');
	}
	public function show_registar_student(){
		$class = $this->dbcon->select('classes','*');
		$sec = $this->dbcon->select('sections','*');
		$array = array(
			'class' => $class,
			'sec' => $sec
			);
		$this->fee_template('admission_registar/student_registar',$array);
	}
	public function student_register_class(){
		$classs = $this->input->post('classs');
		$sec = $this->input->post('sec');
		// echo $sec;die;
		$session_master = $this->dbcon->select('session_master','*',"Active_Status=1");
		$year = $session_master[0]->Session_Year;
		$student = $this->dbcon->select('student st','ADM_NO,ROLL_NO,FIRST_NM,BIRTH_DT,FATHER_NM,MOTHER_NM,ADM_DATE,(SELECT CLASS_NM FROM classes WHERE classes.Class_No=st.ADM_CLASS)ADM_CLASS_id,(SELECT stoppage FROM stoppage WHERE stoppage.STOPNO=st.STOPNO)other_stop',"DISP_CLASS='$classs' AND DISP_SEC='$sec' AND SESSIONID='$year'");
		// echo $this->db->last_query();die;
		$array = array(
			'student' => $student
		);
		
		$this->load->view('admission_registar/show_data_class_wise',$array);
	}
	public function student_details_date_wise(){
		$date1 = $this->input->post('date1');
		$date2 = $this->input->post('date2');
		$session_master = $this->dbcon->select('session_master','*',"Active_Status=1");
		$year = $session_master[0]->Session_Year;
		$student = $this->dbcon->select('student st','ADM_NO,ROLL_NO,FIRST_NM,BIRTH_DT,FATHER_NM,MOTHER_NM,ADM_DATE,(SELECT CLASS_NM FROM classes WHERE classes.Class_No=st.ADM_CLASS)ADM_CLASS_id,(SELECT stoppage FROM stoppage WHERE stoppage.STOPNO=st.STOPNO)other_stop',"ADM_DATE BETWEEN '$date1' AND '$date2'");
		
		$array = array(
			'student' => $student
		);
		
		$this->load->view('admission_registar/show_data_class_wise',$array);
	}
}