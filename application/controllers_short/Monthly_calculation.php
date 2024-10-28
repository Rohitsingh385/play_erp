<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Monthly_calculation extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->loggedOut();
		$this->load->model('Mymodel', 'dbcon');
		$this->load->model('Farheen', 'farheen');
		$this->load->model('Alam', 'alam');
	}
	public function get_pay_details()
	{
		$adm_no  	= $this->input->post('adm_no');
		$ward_type  = $this->input->post('ward_type');
		$bsn		= $this->input->post('bsn');
		$rect_date = $this->input->post('rcpt_date');
		$bsa		= $this->input->post('bsa');
		$ffm		= $this->input->post('ffm');
		$month_data = $this->input->post('chkbox');

		//fetching data from the data base//
		$student_data = $this->farheen->select('student', '*', "ADM_NO='$adm_no'");
		$session 	  = $this->farheen->select('session_master', '*', "Active_Status='1'");
		$payment_mode = $this->farheen->select('payment_mode', '*');
		$bank		  = $this->farheen->select('bank_master', '*');

		if (isset($student_data)) {
			$admission_no = $student_data[0]->ADM_NO;
			$STUDENTID = $student_data[0]->STUDENTID;
			$emp_ward     = $student_data[0]->EMP_WARD;
			$class        = $student_data[0]->CLASS;
			$hostel       = $student_data[0]->HOSTEL;
			$MUSIC    	  = $student_data[0]->MUSIC;
			$COMPUTER     = $student_data[0]->COMPUTER;
			$SESSIONID    = $student_data[0]->SESSIONID;
			$SCHOLAR      = $student_data[0]->SCHOLAR;
			$science	  = $student_data[0]->BUS_NO;
			$stop_amt_code = $student_data[0]->STOPNO;
			$stu_aprfee   = $student_data[0]->APR_FEE;
			$adm_status   = $student_data[0]->mid_session_admission_status;
			$Admission_month = $student_data[0]->Admission_month;
			$mid_payment_status = $student_data[0]->mid_session_payment_status;
		}
		$adm_len = strlen(($adm_no));
		$adm_substr = substr($adm_no, $adm_len - 2, $adm_len);
		if (isset($session)) {
			$Session_ID = $session[0]->Session_ID;
			$Session_Nm = $session[0]->Session_Nm;
			$Session_Year = $session[0]->Session_Year;
			$Active_Status = $session[0]->Active_Status;
		}
		//echo '$adm_no'.$adm_no;
		if ($SCHOLAR == 1) {
			//$scholar_data = $this->farheen->select('scholarship','*',"STUDENTID='$STUDENTID'");
			$scholar_data = $this->farheen->select('scholarship', '*', "ADM_NO='$adm_no'");
			$Apply_From = $scholar_data[0]->Apply_From;
			$Apply_From_ID = $scholar_data[0]->AWARDED;
		}
		$cnt = 0;
		$h_fee = 0;
		$t = 0;
		$total_amt = 0;
		$final_amount = array();
		foreach ($month_data as $value) {
			$month = $value;
			$temp = $month;
			$cnt++;

			for ($i = 1; $i <= 25; $i++) {
				$t = 0;
				$h_fee = 0;

				$feehead[$i] 	= $this->farheen->select('feehead', '*', "ACT_CODE='$i'");
				@$act_code[$i] 	= $feehead[$i][0]->ACT_CODE;
				@$fee_head[$i] 	= $feehead[$i][0]->FEE_HEAD;
				@$monthly[$i] 	= $feehead[$i][0]->MONTHLY;
				@$AccG[$i]		= $feehead[$i][0]->AccG;
				@$CL_BASED[$i]	= $feehead[$i][0]->CL_BASED;
				@$AMOUNT[$i]		= $feehead[$i][0]->AMOUNT;
				@$EMP[$i]		= $feehead[$i][0]->EMP;
				@$CCL[$i]			= $feehead[$i][0]->CCL;
				@$SPL[$i]			= $feehead[$i][0]->SPL;
				@$EXT[$i]			= $feehead[$i][0]->EXT;
				@$INTERNAL[$i]		= $feehead[$i][0]->INTERNAL;
				@$HType[$i]			= $feehead[$i][0]->HType;
				@$APR[$i]			= $feehead[$i][0]->APR;
				@$may[$i]			= $feehead[$i][0]->may;
				@$JUN[$i]			= $feehead[$i][0]->JUN;
				@$JUL[$i]			= $feehead[$i][0]->JUL;
				@$AUG[$i]			= $feehead[$i][0]->AUG;
				@$SEP[$i]			= $feehead[$i][0]->SEP;
				@$OCT[$i]			= $feehead[$i][0]->OCT;
				@$NOV[$i]			= $feehead[$i][0]->NOV;
				@$DECM[$i]			= $feehead[$i][0]->DECM;
				@$JAN[$i]			= $feehead[$i][0]->JAN;
				@$FEB[$i]			= $feehead[$i][0]->FEB;
				@$MAR[$i]			= $feehead[$i][0]->MAR;
				@$Annual[$i]         = $feehead[$i][0]->Annual;

				//fetching data from feeclw//
				$feeclw   = $this->farheen->select('fee_clw', '*', "FH='$i' AND CL='$class'");
				$feeclw_AMOUNT[$i]   = $feeclw[0]->AMOUNT;
				$feeclw_EMP[$i]      = $feeclw[0]->EMP;
				$feeclw_CCL[$i]      = $feeclw[0]->CCL;
				$feeclw_SPL[$i]      = $feeclw[0]->SPL;
				$feeclw_EXT[$i]      = $feeclw[0]->EXT;
				$feeclw_INTERNAL[$i] = $feeclw[0]->INTERNAL;

				if ($monthly[$i] == 1) // calculation on the basis of month base //
				{
					if ($adm_status == 1 && $Admission_month == $month) {
						$temp = 1;
					}
					$mnth_val = $this->farheen->feehead_mnth($temp, $i);
					$fhead_mnth =  $mnth_val[0]->mnth;
					if ($fhead_mnth == 1) {
						if ($CL_BASED[$i] == 1) // calculation on the basis of class base //
						{
							//new implimantation
							if ($adm_status == 1) {

								$Admission_month = '1';

								if ($mid_payment_status == 'N/A' || $mid_payment_status == '') {
									switch ($emp_ward) {
										case 1:
											$amt_fee = $feeclw_AMOUNT[$i];
											// echo 'case 1 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										case 2:
											$amt_fee = $feeclw_EMP[$i];
											// echo 'case 2 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										case 3:
											$amt_fee = $feeclw_CCL[$i];
											// echo 'case 3 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										case 4:
											$amt_fee = $feeclw_SPL[$i];
											// echo 'case 4 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										case 5:
											$amt_fee = $feeclw_EXT[$i];
											// echo 'case 5 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										case 6:
											$amt_fee = $feeclw_INTERNAL[$i];
											// echo 'case 6 '.$amt_fee.'<br>';
											// echo 'i = '.$i.'<br>';
											break;
										default:
											$amt_fee = 0;
											break;
									}
								}
							}

							//till here
							else {
								switch ($emp_ward) {
									case 1:
										$amt_fee = $feeclw_AMOUNT[$i];
										break;
									case 2:
										$amt_fee = $feeclw_EMP[$i];
										break;
									case 3:
										$amt_fee = $feeclw_CCL[$i];
										break;
									case 4:
										$amt_fee = $feeclw_SPL[$i];
										break;
									case 5:
										$amt_fee = $feeclw_EXT[$i];
										break;
									case 6:
										$amt_fee = $feeclw_INTERNAL[$i];
										break;
									default:
										$amt_fee = 0;
										break;
								}
							}
							if ($SCHOLAR == 1) // calculation on the basis of the scholarship //
							{
								$scholar = $this->farheen->scholar_data($act_code[$i], $adm_no, $Apply_From_ID);
								@$scholar_val =  $scholar[0]->schl;

								if ($HType[$i] == 'No') {
									$h_fee = $amt_fee;
								} elseif ($HType[$i] == 'COMPUTER') {
									if ($COMPUTER == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'MUSIC') {
									if ($MUSIC == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BUS') {
									$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
									$h_fee = $bus_fee[0]->BUSAMOUNT;
								} elseif ($HType[$i] == 'SCIENCE') {
									$h_fee = ($amt_fee * $science);
								} elseif ($HType[$i] == 'LATEFINE') {

									$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
									$l_status = $late_fine->status;
									$l_collection_mode = $late_fine->collection_mode;
									$l_month_applied = $late_fine->month_applied;
									$l_date_applied = $late_fine->date_applied;
									$l_late_amount = $late_fine->late_amount;
									$current_month = date('m');
									if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
										$current_month = $current_month + 12;
									}
									$sys_date = date('d');
									if ($month == 1) {
										$m = 4;
									} elseif ($month == 2) {
										$m = 5;
									} elseif ($month == 3) {
										$m = 6;
									} elseif ($month == 4) {
										$m = 7;
									} elseif ($month == 5) {
										$m = 8;
									} elseif ($month == 6) {
										$m = 9;
									} elseif ($month == 7) {
										$m = 10;
									} elseif ($month == 8) {
										$m = 11;
									} elseif ($month == 9) {
										$m = 12;
									} elseif ($month == 10) {
										$m = 13;
									} elseif ($month == 11) {
										$m = 14;
									} elseif ($month == 12) {
										$m = 15;
									}

									$diff = $current_month - $m;

									// if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
									// $late_fee = 0;
									// } 

									if ($l_status == 1) {

										if ($diff > 0) {

											$late_fee = $l_late_amount * $diff;
										} elseif ($diff = 0) {

											if ($l_date_applied <= $sys_date) {
												$late_fee = $l_late_amount;
											} else {
												$late_fee = 0;
											}
										} else {

											$late_fee = 0;
										}

										$h_fee = $late_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'HOSTEL') {
									$h_fee = $amt_fee;
								}
								if ($h_fee > 0) {
									if ($scholar_val <= $h_fee) {
										$h_fee = $h_fee - $scholar_val;
									} else {
										$h_fee;
									}
								}
							} else {

								//Non Scholarship 
								if ($HType[$i] == 'No') {
									$h_fee = $amt_fee;
								} elseif ($HType[$i] == 'COMPUTER') {
									if ($COMPUTER == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'MUSIC') {
									if ($MUSIC == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BUS') {
									$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
									$h_fee = $bus_fee[0]->BUSAMOUNT;
								} elseif ($HType[$i] == 'SCIENCE') {
									$h_fee = $amt_fee * $science;
								} elseif ($HType[$i] == 'LATEFINE') {
									$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
									$l_status = $late_fine->status;
									$l_collection_mode = $late_fine->collection_mode;
									$l_month_applied = $late_fine->month_applied;
									$l_date_applied = $late_fine->date_applied;
									$l_late_amount = $late_fine->late_amount;
									$current_month = date('m');
									if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
										$current_month = $current_month + 12;
									}
									$sys_date = date('d');
									if ($month == 1) {
										$m = 4;
									} elseif ($month == 2) {
										$m = 5;
									} elseif ($month == 3) {
										$m = 6;
									} elseif ($month == 4) {
										$m = 7;
									} elseif ($month == 5) {
										$m = 8;
									} elseif ($month == 6) {
										$m = 9;
									} elseif ($month == 7) {
										$m = 10;
									} elseif ($month == 8) {
										$m = 11;
									} elseif ($month == 9) {
										$m = 12;
									} elseif ($month == 10) {
										$m = 13;
									} elseif ($month == 11) {
										$m = 14;
									} elseif ($month == 12) {
										$m = 15;
									}

									$diff = $current_month - $m;

									// if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
									// $late_fee = 0;
									// } 
									if ($l_status == 1) {

										if ($diff > 0) {

											$late_fee = $l_late_amount * $diff;
										} elseif ($diff = 0) {

											if ($l_date_applied <= $sys_date) {
												$late_fee = $l_late_amount;
											} else {
												$late_fee = 0;
											}
										} else {

											$late_fee = 0;
										}

										$h_fee = $late_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BOOK') {
									$h_fee = 0;
								} elseif ($HType[$i] == 'DUES') {
									$h_fee = 0;
								} elseif ($HType[$i] == 'HOSTEL') {
									$h_fee = 0;
								}
							}
						} else {
							//Non class base
							switch ($emp_ward) {
								case 1:
									$amt_fee = $AMOUNT[$i];
									break;
								case 2:
									$amt_fee = $EMP[$i];
									break;
								case 3:
									$amt_fee = $CCL[$i];
									break;
								case 4:
									$amt_fee = $SPL[$i];
									break;
								case 5:
									$amt_fee = $EXT[$i];
									break;
								case 6:
									$amt_fee = $INTERNAL[$i];
									break;
								default:
									$amt_fee = 0;
									break;
							}

							// echo $amt_fee;
							if ($SCHOLAR == 1) // calculation on the basis of the scholarship //
							{
								$scholar = $this->farheen->scholar_data($act_code[$i], $adm_no, $Apply_From_ID);
								@$scholar_val =  $scholar[0]->schl;

								// echo $scholar_val;
								if ($HType[$i] == 'No') {
									$h_fee = $amt_fee;
								} elseif ($HType[$i] == 'COMPUTER') {
									if ($COMPUTER == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'MUSIC') {
									if ($MUSIC == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BUS') {
									$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
									$h_fee = (sizeof($bus_fee) == 0) ? 0 : $bus_fee[0]->BUSAMOUNT;
								} elseif ($HType[$i] == 'SCIENCE') {
									$h_fee = ($amt_fee * $science);
								} elseif ($HType[$i] == 'LATEFINE') {

									$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
									$l_status = $late_fine->status;
									$l_collection_mode = $late_fine->collection_mode;
									$l_month_applied = $late_fine->month_applied;
									$l_date_applied = $late_fine->date_applied;
									$l_late_amount = $late_fine->late_amount;
									$current_month = date('m');
									if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
										$current_month = $current_month + 12;
									}
									$sys_date = date('d');
									if ($month == 1) {
										$m = 4;
									} elseif ($month == 2) {
										$m = 5;
									} elseif ($month == 3) {
										$m = 6;
									} elseif ($month == 4) {
										$m = 7;
									} elseif ($month == 5) {
										$m = 8;
									} elseif ($month == 6) {
										$m = 9;
									} elseif ($month == 7) {
										$m = 10;
									} elseif ($month == 8) {
										$m = 11;
									} elseif ($month == 9) {
										$m = 12;
									} elseif ($month == 10) {
										$m = 13;
									} elseif ($month == 11) {
										$m = 14;
									} elseif ($month == 12) {
										$m = 15;
									}

									$diff = $current_month - $m;

									// if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
									//	$late_fee = 0;
									// } 

									if ($l_status == 1) {

										if ($diff > 0) {

											$late_fee = $l_late_amount * $diff;
										} elseif ($diff = 0) {

											if ($l_date_applied <= $sys_date) {
												$late_fee = $l_late_amount;
											} else {
												$late_fee = 0;
											}
										} else {

											$late_fee = 0;
										}

										$h_fee = $late_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'HOSTEL') {
									$h_fee = $amt_fee;
								}
								if ($h_fee > 0) {
									if ($scholar_val <= $h_fee) {
										$h_fee = $h_fee - $scholar_val;
									} else {
										$h_fee;
									}
								}
							} else {    // calculation on the basis of without scholarship //

								if ($HType[$i] == 'No') {
									$h_fee = $amt_fee;
								} elseif ($HType[$i] == 'COMPUTER') {
									if ($COMPUTER == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'MUSIC') {
									if ($MUSIC == 1) {
										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BUS') {
									$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
									$h_fee = (sizeof($bus_fee) == 0) ? 0 : $bus_fee[0]->BUSAMOUNT;
								} elseif ($HType[$i] == 'SCIENCE') {
									$h_fee = $amt_fee * $science;
								} elseif ($HType[$i] == 'LATEFINE') {
									$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
									$l_status = $late_fine->status;
									$l_collection_mode = $late_fine->collection_mode;
									$l_month_applied = $late_fine->month_applied;
									$l_date_applied = $late_fine->date_applied;
									$l_late_amount = $late_fine->late_amount;
									$current_month = date('m');
									if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
										$current_month = $current_month + 12;
									}
									$sys_date = date('d');
									if ($month == 1) {
										$m = 4;
									} elseif ($month == 2) {
										$m = 5;
									} elseif ($month == 3) {
										$m = 6;
									} elseif ($month == 4) {
										$m = 7;
									} elseif ($month == 5) {
										$m = 8;
									} elseif ($month == 6) {
										$m = 9;
									} elseif ($month == 7) {
										$m = 10;
									} elseif ($month == 8) {
										$m = 11;
									} elseif ($month == 9) {
										$m = 12;
									} elseif ($month == 10) {
										$m = 13;
									} elseif ($month == 11) {
										$m = 14;
									} elseif ($month == 12) {
										$m = 15;
									}

									$diff = $current_month - $m;


									//if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
									// $late_fee = 0;
									// } 

									if ($l_status == 1) {

										if ($diff > 0) {

											$late_fee = $l_late_amount * $diff;
										} elseif ($diff = 0) {

											if ($l_date_applied <= $sys_date) {
												$late_fee = $l_late_amount;
											} else {
												$late_fee = 0;
											}
										} else {

											$late_fee = 0;
										}

										$h_fee = $late_fee;
									} else {
										$h_fee = 0;
									}
								} elseif ($HType[$i] == 'BOOK') {
									$h_fee = 0;
								} elseif ($HType[$i] == 'DUES') {
									$h_fee = 0;
								} elseif ($HType[$i] == 'HOSTEL') {
									$h_fee = 0;
								}
							}
						}
					} else {
						// echo 'if month is not Condition for new admission fee';

					}
				} else {
					if ($CL_BASED[$i] == 1) // calculation on the basis of class base //
					{
						switch ($emp_ward) {
							case 1:
								$amt_fee = $feeclw_AMOUNT[$i];
								break;
							case 2:
								$amt_fee = $feeclw_EMP[$i];
								break;
							case 3:
								$amt_fee = $feeclw_CCL[$i];
								break;
							case 4:
								$amt_fee = $feeclw_SPL[$i];
								break;
							case 5:
								$amt_fee = $feeclw_EXT[$i];
								break;
							case 6:
								$amt_fee = $feeclw_INTERNAL[$i];
								break;
							default:
								$amt_fee = 0;
								break;
						}

						if ($SCHOLAR == 1) // calculation on the basis of the scholarship //
						{
							$scholar = $this->farheen->scholar_data($act_code[$i], $adm_no, $Apply_From_ID);
							@$scholar_val =  $scholar[0]->schl;

							if ($HType[$i] == 'No') {
								if ($Session_Year == $SESSIONID) {
									if ($fhead_mnth == 1) {

										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								}
							} elseif ($HType[$i] == 'COMPUTER') {
								if ($COMPUTER == 1) {
									$h_fee = $amt_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'MUSIC') {
								if ($MUSIC == 1) {
									$h_fee = $amt_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'BUS') {
								$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
								$h_fee = (sizeof($bus_fee) == 0) ? 0 : $bus_fee[0]->BUSAMOUNT;
							} elseif ($HType[$i] == 'SCIENCE') {
								$h_fee = ($amt_fee * $science);
							} elseif ($HType[$i] == 'LATEFINE') {

								$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
								$l_status = $late_fine->status;
								$l_collection_mode = $late_fine->collection_mode;
								$l_month_applied = $late_fine->month_applied;
								$l_date_applied = $late_fine->date_applied;
								$l_late_amount = $late_fine->late_amount;
								$current_month = date('m');
								if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
									$current_month = $current_month + 12;
								}
								$sys_date = date('d');
								if ($month == 1) {
									$m = 4;
								} elseif ($month == 2) {
									$m = 5;
								} elseif ($month == 3) {
									$m = 6;
								} elseif ($month == 4) {
									$m = 7;
								} elseif ($month == 5) {
									$m = 8;
								} elseif ($month == 6) {
									$m = 9;
								} elseif ($month == 7) {
									$m = 10;
								} elseif ($month == 8) {
									$m = 11;
								} elseif ($month == 9) {
									$m = 12;
								} elseif ($month == 10) {
									$m = 13;
								} elseif ($month == 11) {
									$m = 14;
								} elseif ($month == 12) {
									$m = 15;
								}

								$diff = $current_month - $m;

								// if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
								//	$late_fee = 0;
								// } 

								if ($l_status == 1) {

									if ($diff > 0) {

										$late_fee = $l_late_amount * $diff;
									} elseif ($diff = 0) {

										if ($l_date_applied <= $sys_date) {

											$late_fee = $l_late_amount;
										} else {

											$late_fee = 0;
										}
									} else {

										$late_fee = 0;
									}

									$h_fee = $late_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'HOSTEL') {
								$h_fee = $amt_fee;
							}
							if ($h_fee > 0) {
								if ($scholar_val <= $h_fee) {
									$h_fee = $h_fee - $scholar_val;
								} else {
									$h_fee;
								}
							}
						} else {

							//Non Scholarship 
							if ($HType[$i] == 'No') {
								if ($Session_Year == $SESSIONID) {
									if ($fhead_mnth == 1) {

										$h_fee = $amt_fee;
									} else {
										$h_fee = 0;
									}
								}
							} elseif ($HType[$i] == 'COMPUTER') {
								if ($COMPUTER == 1) {
									$h_fee = $amt_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'MUSIC') {
								if ($MUSIC == 1) {
									$h_fee = $amt_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'BUS') {
								$bus_fee = $this->farheen->getbusamountmonthwise($adm_no, $month);
								$h_fee = (sizeof($bus_fee) == 0) ? 0 : $bus_fee[0]->BUSAMOUNT;
							} elseif ($HType[$i] == 'SCIENCE') {
								$h_fee = $amt_fee * $science;
							} elseif ($HType[$i] == 'LATEFINE') {

								$late_fine = $this->farheen->selectSingleData('latefine_master', '*', "ID='1'");
								$l_status = $late_fine->status;
								$l_collection_mode = $late_fine->collection_mode;
								$l_month_applied = $late_fine->month_applied;
								$l_date_applied = $late_fine->date_applied;
								$l_late_amount = $late_fine->late_amount;
								$current_month = date('m');
								if ($current_month == 1 || $current_month == 2 || $current_month == 3) {
									$current_month = $current_month + 12;
								}
								$sys_date = date('d');
								if ($month == 1) {
									$m = 4;
								} elseif ($month == 2) {
									$m = 5;
								} elseif ($month == 3) {
									$m = 6;
								} elseif ($month == 4) {
									$m = 7;
								} elseif ($month == 5) {
									$m = 8;
								} elseif ($month == 6) {
									$m = 9;
								} elseif ($month == 7) {
									$m = 10;
								} elseif ($month == 8) {
									$m = 11;
								} elseif ($month == 9) {
									$m = 12;
								} elseif ($month == 10) {
									$m = 13;
								} elseif ($month == 11) {
									$m = 14;
								} elseif ($month == 12) {
									$m = 15;
								}

								$diff = $current_month - $m;

								// if ($stu_aprfee == 'N/A' && $adm_substr == '23') {
								// $late_fee = 0;
								// } 

								if ($l_status == 1) {

									if ($diff > 0) {

										$late_fee = $l_late_amount * $diff;
									} elseif ($diff = 0) {

										if ($l_date_applied <= $sys_date) {
											$late_fee = $l_late_amount;
										} else {
											$late_fee = 0;
										}
									} else {

										$late_fee = 0;
									}

									$h_fee = $late_fee;
								} else {
									$h_fee = 0;
								}
							} elseif ($HType[$i] == 'BOOK') {
								$h_fee = 0;
							} elseif ($HType[$i] == 'DUES') {
								$h_fee = 0;
							} elseif ($HType[$i] == 'HOSTEL') {
								$h_fee = 0;
							}
						}
					} else {
					}
				}

				if ($cnt == 1) {
					$final_amount[$i] = $h_fee;
				} else {

					$t = $final_amount[$i];
					$final_amount[$i] = $t + $h_fee;
				}
			}
		}

		for ($i = 1; $i <= 25; $i++) {
			"feehead" . $i . "->" . $final_amount[$i] . "<br/>";

			$total_amt +=  $final_amount[$i];
		}
		// if ($class_nm == "P.NUR" || $class_nm == "NUR" || $class_nm == "PREP") {
		// 	$fee9amt = '1000';
		// 	$fee14amt = '1000';
		// } elseif ($class_nm == "II" || $class_nm == "III" || $class_nm == "IV" || $class_nm == "I" || $class_nm == "V" || $class_nm == "VI" || $class_nm == "VII" || $class_nm == "VIII" || $class_nm == "IX" || $class_nm == "X") {
		// 	$fee9amt = '4500';
		// 	$fee14amt = '4500';
		// } else {
		// 	if ($WARD == "1" || $WARD == "5" || $WARD == "2"  || $WARD == "4") {
		// 		$fee9amt = '4500';
		// 		$fee14amt = '4500';
		// 	}
		// }
		//echo '$final_amount[9]: '.$final_amount[9];
		//echo '<br/>';
		//echo '$total_fee9: '.$total_fee9;	
		//echo '<br/>';
		//echo '$final_amount[14]: '.$final_amount[14];
		//echo '<br/>';
		//echo '$total_fee14: '.$total_fee14;	
		// if ($total_fee9 == $final_amount[9]) {
		// 	$finalfee9amt = 0;
		// } else {
		// 	$finalfee9amt = $final_amount[9];
		// }

		// if ($total_fee14 == $final_amount[14]) {
		// 	$finalfee14amt = 0;
		// } else {
		// 	$finalfee14amt = $final_amount[14];
		// }

		//$total_amount = $final_amount[1]+$final_amount[2]+$final_amount[3]+$final_amount[4]+$final_amount[5]+$final_amount[6]+$final_amount[7]+$final_amount[8]+$final_amount[9]+$final_amount[10]+$final_amount[11]+$final_amount[12]+$final_amount[13]+$final_amount[14]+$final_amount[15]+$final_amount[16]+$final_amount[17]+$final_amount[18]+$final_amount[19]+$final_amount[20]+$final_amount[21]+$final_amount[22]+$final_amount[22]+$final_amount[23]+$final_amount[24]+$final_amount[25];

		
		//RECOVERD SHORT AMOUNT COLLECTION

		$rsa = $this->db->query("SELECT SUM(SHORT_AMOUNT) as short_sum, SUM(Recovered_Short_Amt)as rec_sum FROM short_recoverd_payment WHERE ADM_NO = '$adm_no' AND applicable='1' group by ADM_NO;")->result();

		$short_amt = $rsa[0]->short_sum; //-2280
		$rec_amt = $rsa[0]->rec_sum;     //0
		$recover = 0;
		$recover = $short_amt - $rec_amt;

		$total_amount = $final_amount[1] + $final_amount[2] + $final_amount[3] + $final_amount[4] + $final_amount[5] + $final_amount[6] + $final_amount[7] + $final_amount[8] + $final_amount[9] + $final_amount[10] + $final_amount[11] + $final_amount[12] + $final_amount[13] + $final_amount[14] + $final_amount[15] + $final_amount[16] + $final_amount[17] + $final_amount[18] + $final_amount[19] + $final_amount[20] + $final_amount[21] + $final_amount[22] + $final_amount[22] + $final_amount[23] + $final_amount[24] + $final_amount[25];
		$gross_amount = $final_amount[1] + $final_amount[2] + $final_amount[3] + $final_amount[4] + $final_amount[5] + $final_amount[6] + $final_amount[7] + $final_amount[8] + $final_amount[9] + $final_amount[10] + $final_amount[11] + $final_amount[12] + $final_amount[13] + $final_amount[14] + $final_amount[15] + $final_amount[16] + $final_amount[17] + $final_amount[18] + $final_amount[19] + $final_amount[20] + $final_amount[21] + $final_amount[22] + $final_amount[22] + $final_amount[23] + $final_amount[24] + $final_amount[25] + $recover;

		$feeheadlock = $this->db->query("SELECT * FROM FEE_HEAD_LOCKING")->result();
		$fee1lock = $feeheadlock[0]->Check_On;
		$fee2lock = $feeheadlock[1]->Check_On;
		$fee3lock = $feeheadlock[2]->Check_On;
		$fee4lock = $feeheadlock[3]->Check_On;
		$fee5lock = $feeheadlock[4]->Check_On;
		$fee6lock = $feeheadlock[5]->Check_On;
		$fee7lock = $feeheadlock[6]->Check_On;
		$fee8lock = $feeheadlock[7]->Check_On;
		$fee9lock = $feeheadlock[8]->Check_On;
		$fee10lock = $feeheadlock[9]->Check_On;
		$fee11lock = $feeheadlock[10]->Check_On;
		$fee12lock = $feeheadlock[11]->Check_On;
		$fee13lock = $feeheadlock[12]->Check_On;
		$fee14lock = $feeheadlock[13]->Check_On;
		$fee15lock = $feeheadlock[14]->Check_On;
		$fee16lock = $feeheadlock[15]->Check_On;
		$fee17lock = $feeheadlock[16]->Check_On;
		$fee18lock = $feeheadlock[17]->Check_On;
		$fee19lock = $feeheadlock[18]->Check_On;
		$fee20lock = $feeheadlock[19]->Check_On;
		$fee21lock = $feeheadlock[20]->Check_On;
		$fee22lock = $feeheadlock[21]->Check_On;
		$fee23lock = $feeheadlock[22]->Check_On;
		$fee24lock = $feeheadlock[23]->Check_On;
		$fee25lock = $feeheadlock[24]->Check_On;


		$paid_amt = $this->db->query("SELECT SUM(Fee1)fee1,SUM(Fee2)fee2,SUM(Fee3)fee3,SUM(Fee4)fee4,SUM(Fee5)fee5,SUM(Fee6)fee6,SUM(Fee7)fee7,SUM(Fee8)fee8,SUM(Fee9)fee9,SUM(Fee10)fee10,SUM(Fee11)fee11,SUM(Fee12)fee12,SUM(Fee13)fee13,SUM(Fee14)fee14,SUM(Fee15)fee15,SUM(Fee16)fee16,SUM(Fee17)fee17,SUM(Fee18)fee18,SUM(Fee19)fee19,SUM(Fee20)fee20,SUM(Fee21)fee21,SUM(Fee22)fee22,SUM(Fee23)fee23,SUM(Fee24)fee24,SUM(Fee25)fee25 FROM `daycoll` where ADM_NO='$adm_no'")->result();

		$paid_amt1 = $paid_amt[0]->fee1;
		$paid_amt2 = $paid_amt[0]->fee2;
		$paid_amt3 = $paid_amt[0]->fee3;
		$paid_amt4 = $paid_amt[0]->fee4;
		$paid_amt5 = $paid_amt[0]->fee5;
		$paid_amt6 = $paid_amt[0]->fee6;
		$paid_amt7 = $paid_amt[0]->fee7;
		$paid_amt8 = $paid_amt[0]->fee8;
		$paid_amt9 = $paid_amt[0]->fee9;
		$paid_amt10 = $paid_amt[0]->fee10;
		$paid_amt11 = $paid_amt[0]->fee11;
		$paid_amt12 = $paid_amt[0]->fee12;
		$paid_amt13 = $paid_amt[0]->fee13;
		$paid_amt14 = $paid_amt[0]->fee14;
		$paid_amt15 = $paid_amt[0]->fee15;
		$paid_amt16 = $paid_amt[0]->fee16;
		$paid_amt17 = $paid_amt[0]->fee17;
		$paid_amt18 = $paid_amt[0]->fee18;
		$paid_amt19 = $paid_amt[0]->fee19;
		$paid_amt20 = $paid_amt[0]->fee20;
		$paid_amt21 = $paid_amt[0]->fee21;
		$paid_amt22 = $paid_amt[0]->fee22;
		$paid_amt23 = $paid_amt[0]->fee23;
		$paid_amt24 = $paid_amt[0]->fee24;
		$paid_amt25 = $paid_amt[0]->fee25;

		$array = array(
			'adm_no' 	=> $admission_no,
			'feehead1'  => $fee_head[1],
			'feehead2'  => $fee_head[2],
			'feehead3'  => $fee_head[3],
			'feehead4'  => $fee_head[4],
			'feehead5'  => $fee_head[5],
			'feehead6'  => $fee_head[6],
			'feehead7'  => $fee_head[7],
			'feehead8'  => $fee_head[8],
			'feehead9'  => $fee_head[9],
			'feehead10' => $fee_head[10],
			'feehead11' => $fee_head[11],
			'feehead12' => $fee_head[12],
			'feehead13' => $fee_head[13],
			'feehead14' => $fee_head[14],
			'feehead15' => $fee_head[15],
			'feehead16' => $fee_head[16],
			'feehead17' => $fee_head[17],
			'feehead18' => $fee_head[18],
			'feehead19' => $fee_head[19],
			'feehead20' => $fee_head[20],
			'feehead21' => $fee_head[21],
			'feehead22' => $fee_head[22],
			'feehead23' => $fee_head[23],
			'feehead24' => $fee_head[24],
			'feehead25' => $fee_head[25],
			//'apr'       => $aprr1,
			//'may'       => $mayy1,
			//'jun'       => $junn1,
			//'jul'       => $jull1,
			//'aug'       => $augg1,
			//'sep'       => $sepp1,
			//'oct'       => $octt1,
			//'nov'       => $novv1,
			//'dec'       => $decc1,
			//'jan'       => $jann1,
			//'feb'       => $febb1,
			//'mar'       => $marr1,
			'AccG1' => $AccG[1],
			'AccG2' => $AccG[2],
			'AccG3' => $AccG[3],
			'AccG4' => $AccG[4],
			'AccG5' => $AccG[5],
			'AccG6' => $AccG[6],
			'AccG7' => $AccG[7],
			'AccG8' => $AccG[8],
			'AccG9' => $AccG[9],
			'AccG10' => $AccG[10],
			'AccG11' => $AccG[11],
			'AccG12' => $AccG[12],
			'AccG13' => $AccG[13],
			'AccG14' => $AccG[14],
			'AccG15' => $AccG[15],
			'AccG16' => $AccG[16],
			'AccG17' => $AccG[17],
			'AccG18' => $AccG[18],
			'AccG19' => $AccG[19],
			'AccG20' => $AccG[20],
			'AccG21' => $AccG[21],
			'AccG22' => $AccG[22],
			'AccG23' => $AccG[23],
			'AccG24' => $AccG[24],
			'AccG25' => $AccG[25],
			'paid_amt1' => $paid_amt1,
			'paid_amt2' => $paid_amt2,
			'paid_amt3' => $paid_amt3,
			'paid_amt4' => $paid_amt4,
			'paid_amt5' => $paid_amt5,
			'paid_amt6' => $paid_amt6,
			'paid_amt7' => $paid_amt7,
			'paid_amt8' => $paid_amt8,
			'paid_amt9' => $paid_amt9,
			'paid_amt10' => $paid_amt10,
			'paid_amt11' => $paid_amt11,
			'paid_amt12' => $paid_amt12,
			'paid_amt13' => $paid_amt13,
			'paid_amt14' => $paid_amt14,
			'paid_amt15' => $paid_amt15,
			'paid_amt16' => $paid_amt16,
			'paid_amt17' => $paid_amt17,
			'paid_amt18' => $paid_amt18,
			'paid_amt19' => $paid_amt19,
			'paid_amt20' => $paid_amt20,
			'paid_amt21' => $paid_amt21,
			'paid_amt22' => $paid_amt22,
			'paid_amt23' => $paid_amt23,
			'paid_amt24' => $paid_amt24,
			'paid_amt25' => $paid_amt25,
			'amt_feehead1' => $final_amount[1],
			'amt_feehead2' => $final_amount[2],
			'amt_feehead3' => $final_amount[3],
			'amt_feehead4' => $final_amount[4],
			'amt_feehead5' => $final_amount[5],
			'amt_feehead6' => $final_amount[6],
			'amt_feehead7' => $final_amount[7],
			'amt_feehead8' => $final_amount[8],
			'amt_feehead9' => $final_amount[9],
			'amt_feehead10' => $final_amount[10],
			'amt_feehead11' => $final_amount[11],
			'amt_feehead12' => $final_amount[12],
			'amt_feehead13' => $final_amount[13],
			'amt_feehead14' => $final_amount[14],
			'amt_feehead15' => $final_amount[15],
			'amt_feehead16' => $final_amount[16],
			'amt_feehead17' => $final_amount[17],
			'amt_feehead18' => $final_amount[18],
			'amt_feehead19' => $final_amount[19],
			'amt_feehead20' => $final_amount[20],
			'amt_feehead21' => $final_amount[21],
			'amt_feehead22' => $final_amount[22],
			'amt_feehead23' => $final_amount[23],
			'amt_feehead24' => $final_amount[24],
			'amt_feehead25' => $final_amount[25],
			'total_amount'  => $total_amount,
			'payment_mode'  => $payment_mode,
			'bank'			=> $bank,
			'student_data'	=> $student_data,
			'ward_type'     => $ward_type,
			'bsn'           => $bsn,
			'bsa'			=> $bsa,
			'ffm'			=> $ffm,
			'rcpt_date'    => $rect_date,
			'recover'    => $recover,
			'month'    => $month,
			'gross_amount' => $gross_amount,
			'fee1lock' => $fee1lock,
			'fee2lock' => $fee2lock,
			'fee3lock' => $fee3lock,
			'fee4lock' => $fee4lock,
			'fee5lock' => $fee5lock,
			'fee6lock' => $fee6lock,
			'fee7lock' => $fee7lock,
			'fee8lock' => $fee8lock,
			'fee9lock' => $fee9lock,
			'fee10lock' => $fee10lock,
			'fee11lock' => $fee11lock,
			'fee12lock' => $fee12lock,
			'fee13lock' => $fee13lock,
			'fee14lock' => $fee14lock,
			'fee15lock' => $fee15lock,
			'fee16lock' => $fee16lock,
			'fee17lock' => $fee17lock,
			'fee18lock' => $fee18lock,
			'fee19lock' => $fee19lock,
			'fee20lock' => $fee20lock,
			'fee21lock' => $fee21lock,
			'fee22lock' => $fee22lock,
			'fee23lock' => $fee23lock,
			'fee24lock' => $fee24lock,
			'fee25lock' => $fee25lock,
		);

		$this->load->view('Fee_collection/feehaead_calculation_monthwise', $array);
	}



	// public function get_pay_details()
	// {
	// 	// echo '<pre>';print_r($_POST);die;
	// 	$adm_no  	= $this->input->post('adm_no');
	// 	//$rcpt_no 	= $this->input->post('rcpt_no');
	// 	$rcpt_date 	= $this->input->post('rcpt_date');
	// 	$ward_type  = $this->input->post('ward_type');
	// 	$bsn		= $this->input->post('bsn');
	// 	$bsa		= $this->input->post('bsa');
	// 	$ffm		= $this->input->post('ffm');
	// 	$aprr	 	= $this->input->post('apr');
	// 	$mayy 	 	= $this->input->post('may');
	// 	$junn 	 	= $this->input->post('jun');
	// 	$jull 	 	= $this->input->post('jul');
	// 	$augg	 	= $this->input->post('aug');
	// 	$sepp	 	= $this->input->post('sep');
	// 	$octt	 	= $this->input->post('oct');
	// 	$novv	 	= $this->input->post('nov');
	// 	$decc    	= $this->input->post('dec');
	// 	$jann 	 	= $this->input->post('jan');
	// 	$febb	 	= $this->input->post('feb');
	// 	$marr	 	= $this->input->post('mar');
	// 	//fetching data from the data base//
	// 	$student_data = $this->dbcon->select('student','*',"ADM_NO='$adm_no'");
	// 	$session 	  = $this->dbcon->select('session_master','*',"Active_Status='1'");
	// 	$payment_mode = $this->dbcon->select('payment_mode','*');
	// 	$bank		  = $this->dbcon->select('bank_master','*');
	// 	//end of fetching of data//
	// 	if(isset($student_data))
	// 	{
	// 		$admission_no = $student_data[0]->ADM_NO;
	// 		$emp_ward     = $student_data[0]->EMP_WARD;
	// 		$class        = $student_data[0]->CLASS;
	// 		$hostel       = $student_data[0]->HOSTEL;
	// 		$COMPUTER     = $student_data[0]->COMPUTER;
	// 		$SESSIONID    = $student_data[0]->SESSIONID;
	// 		$SCHOLAR      = $student_data[0]->SCHOLAR;
	// 		$science	  = $student_data[0]->BUS_NO;
	// 		$stop_amt_code= $student_data[0]->STOPNO;
	// 		$stu_aprfee   = $student_data[0]->APR_FEE;
	// 		$stu_febfee   = $student_data[0]->FEB_FEE;

	// 	}
	// 	if(isset($stop_amt_code))
	// 	{
	// 		$stop_amt = $this->dbcon->select('stop_amt','*',"STOP_NO='$stop_amt_code'");
	// 		$stoppage_amounts = $stop_amt[0]->AMT;
	// 		$stop_apr = $stop_amt[0]->APR_FEE;
	// 		$stop_may = $stop_amt[0]->MAY_FEE;
	// 		$stop_jun = $stop_amt[0]->JUN_FEE;
	// 		$stop_jul = $stop_amt[0]->JUL_FEE;
	// 		$stop_aug = $stop_amt[0]->AUG_FEE;
	// 		$stop_sep = $stop_amt[0]->SEP_FEE;
	// 		$stop_oct = $stop_amt[0]->OCT_FEE;
	// 		$stop_nov = $stop_amt[0]->NOV_FEE;
	// 		$stop_dec = $stop_amt[0]->DEC_FEE;
	// 		$stop_jan = $stop_amt[0]->JAN_FEE;
	// 		$stop_feb = $stop_amt[0]->FEB_FEE;
	// 		$stop_mar = $stop_amt[0]->MAR_FEE;
	// 	}
	// 	/* getting session year from database */
	// 	if(isset($session))
	// 	{
	// 		$Session_ID = $session[0]->Session_ID;
	// 		$Session_Nm = $session[0]->Session_Nm;
	// 		$Session_Year = $session[0]->Session_Year;
	// 		$Active_Status = $session[0]->Active_Status;
	// 	}
	// 	/* ending session data from database*/
	// 	if($SCHOLAR==1)
	// 	{
	// 		$scholar_data = $this->dbcon->select('scholarship','*',"ADM_NO='$admission_no'");
	// 		$s[1] = $scholar_data[0]->S1;
	// 		$s[2] = $scholar_data[0]->S2;
	// 		$s[3] = $scholar_data[0]->S3;
	// 		$s[4] = $scholar_data[0]->S4;
	// 		$s[5] = $scholar_data[0]->S5;
	// 		$s[6] = $scholar_data[0]->S6;
	// 		$s[7] = $scholar_data[0]->S7;
	// 		$s[8] = $scholar_data[0]->S8;
	// 		$s[9] = $scholar_data[0]->S9;
	// 		$s[10] = $scholar_data[0]->S10;
	// 		$s[11] = $scholar_data[0]->S11;
	// 		$s[12] = $scholar_data[0]->S12;
	// 		$s[13] = $scholar_data[0]->S13;
	// 		$s[14] = $scholar_data[0]->S14;
	// 		$s[15] = $scholar_data[0]->S15;
	// 		$s[16] = $scholar_data[0]->S16;
	// 		$s[17] = $scholar_data[0]->S17;
	// 		$s[18] = $scholar_data[0]->S18;
	// 		$s[19] = $scholar_data[0]->S19;
	// 		$s[20] = $scholar_data[0]->S20;
	// 		$s[21] = $scholar_data[0]->S21;
	// 		$s[22] = $scholar_data[0]->S22;
	// 		$s[23] = $scholar_data[0]->S23;
	// 		$s[24] = $scholar_data[0]->S24;
	// 		$s[25] = $scholar_data[0]->S25;
	// 		$Apply_From = $scholar_data[0]->Apply_From;
	// 	}
	// 	for($i=1;$i<=25;$i++)
	// 	{
	// 		$feehead[$i] 	= $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
	// 		$act_code[$i] 	= $feehead[$i][0]->ACT_CODE;
	// 		$fee_head[$i] 	= $feehead[$i][0]->FEE_HEAD;
	// 		$AccG[$i] 		= $feehead[$i][0]->AccG;
	// 		$monthly[$i] 	= $feehead[$i][0]->MONTHLY;
	// 		$CL_BASED[$i]	= $feehead[$i][0]->CL_BASED;
	// 		$AMOUNT[$i]		= $feehead[$i][0]->AMOUNT;
	// 		$EMP[$i]		= $feehead[$i][0]->EMP;
	// 		$CCL[$i]			= $feehead[$i][0]->CCL;
	// 		$SPL[$i]			= $feehead[$i][0]->SPL;
	// 		$EXT[$i]			= $feehead[$i][0]->EXT;
	// 		$INTERNAL[$i]		= $feehead[$i][0]->INTERNAL;
	// 		$HType[$i]			= $feehead[$i][0]->HType;
	// 		$APR[$i]			= $feehead[$i][0]->APR;
	// 		$may[$i]			= $feehead[$i][0]->may;
	// 		$JUN[$i]			= $feehead[$i][0]->JUN;
	// 		$JUL[$i]			= $feehead[$i][0]->JUL;
	// 		$AUG[$i]			= $feehead[$i][0]->AUG;
	// 		$SEP[$i]			= $feehead[$i][0]->SEP;
	// 		$OCT[$i]			= $feehead[$i][0]->OCT;
	// 		$NOV[$i]			= $feehead[$i][0]->NOV;
	// 		$DECM[$i]			= $feehead[$i][0]->DECM;
	// 		$JAN[$i]			= $feehead[$i][0]->JAN;
	// 		$FEB[$i]			= $feehead[$i][0]->FEB;
	// 		$MAR[$i]			= $feehead[$i][0]->MAR;

	// 		// fetching data from the database //
	// 		$feeclw   = $this->dbcon->select('fee_clw','*',"FH='$i' AND CL='$class'");
	// 		$feeclw_AMOUNT[$i]   = $feeclw[0]->AMOUNT;
	// 		$feeclw_EMP[$i]      = $feeclw[0]->EMP;
	// 		$feeclw_CCL[$i]      = $feeclw[0]->CCL;
	// 		$feeclw_SPL[$i]      = $feeclw[0]->SPL;
	// 		$feeclw_EXT[$i]      = $feeclw[0]->EXT;
	// 		$feeclw_INTERNAL[$i] = $feeclw[0]->INTERNAL;
	// 		// end of the fetching data form the feeclw //
	// 		if($HType[$i] == "LATEFINE"){
	// 			$late_fine = $this->dbcon->selectSingleData('latefine_master','*',"ID='1'");
	// 			$l_status = $late_fine->status;
	// 			$l_collection_mode = $late_fine->collection_mode;
	// 			$l_month_applied = $late_fine->month_applied;
	// 			$l_date_applied = $late_fine->date_applied;
	// 			$l_late_amount = $late_fine->late_amount;
	// 			if($l_status == 1){
	// 				if($l_collection_mode == 1)// 1= monthly collection
	// 				{
	// 					$current_month = date('m');
	// 					if($current_month>=04 && $current_month<$l_month_applied){
	// 						$amt_feehead[$i] = 0;
	// 					}else{
	// 						$sys_date = date("d-m-Y");
	// 						$sys_num = strtotime($sys_date);
	// 						if($monthly[$i]==1){
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_date = $l_date_applied."-"."04"."-".$Session_Year;
	// 								$apr_num = strtotime($apr_date);
	// 								if($apr_num<=$sys_num)
	// 								{
	// 									$apr_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$apr_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_date = $l_date_applied."-"."05"."-".$Session_Year;
	// 								$may_num = strtotime($may_date);
	// 								if($may_num<=$sys_num)
	// 								{
	// 									$may_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$may_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_date = $l_date_applied."-"."06"."-".$Session_Year;
	// 								$jun_num = strtotime($jun_date);
	// 								if($jun_num<=$sys_num)
	// 								{
	// 									$jun_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$jun_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_date = $l_date_applied."-"."07"."-".$Session_Year;
	// 								$jul_num = strtotime($jul_date);
	// 								if($jul_num<=$sys_num)
	// 								{
	// 									$jul_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$jul_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_date = $l_date_applied."-"."08"."-".$Session_Year;
	// 								$aug_num = strtotime($aug_date);
	// 								if($aug_num<=$sys_num)
	// 								{
	// 									$aug_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$aug_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_date = $l_date_applied."-"."09"."-".$Session_Year;
	// 								$sep_num = strtotime($sep_date);
	// 								if($sep_num<=$sys_num)
	// 								{
	// 									$sep_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$sep_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_date = $l_date_applied."-"."10"."-".$Session_Year;
	// 								$oct_num = strtotime($oct_date);
	// 								if($oct_num<=$sys_num)
	// 								{
	// 									$oct_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$oct_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_date = $l_date_applied."-"."11"."-".$Session_Year;
	// 								$nov_num = strtotime($nov_date);
	// 								if($nov_num<=$sys_num)
	// 								{
	// 									$nov_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$nov_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_date = $l_date_applied."-"."12"."-".$Session_Year;
	// 								$dec_num = strtotime($dec_date);
	// 								if($dec_num<=$sys_num)
	// 								{
	// 									$dec_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$dec_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$y = $Session_Year;
	// 								$year = $y+1;
	// 								$jan_date = $l_date_applied."-"."01"."-".$year;
	// 								$jan_num = strtotime($jan_date);
	// 								if($jan_num<=$sys_num)
	// 								{
	// 									$jan_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$jan_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$y = $Session_Year;
	// 								$year = $y+1;
	// 								$feb_date = $l_date_applied."-"."02"."-".$year;
	// 								$feb_num = strtotime($feb_date);
	// 								if($feb_num<=$sys_num)
	// 								{
	// 									$feb_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$feb_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$y = $Session_Year;
	// 								$year = $y+1;
	// 								$mar_date = $l_date_applied."-"."03"."-".$year;
	// 								$mar_num = strtotime($mar_date);
	// 								if($mar_num<=$sys_num)
	// 								{
	// 									$mar_fee = $l_late_amount;
	// 								}else
	// 								{
	// 									$mar_fee = 0;
	// 								}
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						else{
	// 							$amt_feehead[$i] = 0;
	// 						}
	// 					}


	// 				}
	// 				elseif($l_collection_mode == 2)// 2= daily collection
	// 				{
	// 					$amt_feehead[$i] = 0;
	// 				}
	// 				else
	// 				{
	// 					$amt_feehead[$i] = 0;
	// 				}
	// 			}else{
	// 				$amt_feehead[$i] = 0;
	// 			}

	// 		}elseif($HType[$i]=='BUS'){
	// 			if($monthly[$i]==1){
	// 				if($aprr=='APR' && $APR[$i]==1)
	// 				{
	// 					$apr_fee = $stop_apr;
	// 				}
	// 				else
	// 				{
	// 					$apr_fee = 0;
	// 				}
	// 				if($mayy=='MAY' && $may[$i]==1)
	// 				{
	// 					$may_fee = $stop_may;
	// 				}
	// 				else
	// 				{
	// 					$may_fee = 0;
	// 				}
	// 				if($junn=='JUN' && $JUN[$i]==1)
	// 				{
	// 					$jun_fee = $stop_jun;
	// 				}
	// 				else
	// 				{
	// 					$jun_fee = 0;
	// 				}
	// 				if($jull=='JUL' && $JUL[$i]==1)
	// 				{
	// 					$jul_fee = $stop_jul;
	// 				}
	// 				else
	// 				{
	// 					$jul_fee = 0;
	// 				}
	// 				if($augg=='AUG' && $AUG[$i]==1)
	// 				{
	// 					$aug_fee = $stop_aug;
	// 				}
	// 				else
	// 				{
	// 					$aug_fee = 0;
	// 				}
	// 				if($sepp=='SEP' && $SEP[$i]==1)
	// 				{
	// 					$sep_fee = $stop_sep;
	// 				}
	// 				else
	// 				{
	// 					$sep_fee = 0;
	// 				}
	// 				if($octt=='OCT' && $OCT[$i]==1)
	// 				{
	// 					$oct_fee = $stop_oct;
	// 				}
	// 				else
	// 				{
	// 					$oct_fee = 0;
	// 				}
	// 				if($novv=='NOV' && $NOV[$i]==1)
	// 				{
	// 					$nov_fee = $stop_nov;
	// 				}
	// 				else
	// 				{
	// 					$nov_fee = 0;
	// 				}
	// 				if($decc=='DEC' && $DECM[$i]==1)
	// 				{
	// 					$dec_fee = $stop_dec;
	// 				}
	// 				else
	// 				{
	// 					$dec_fee = 0;
	// 				}
	// 				if($jann=='JAN' && $JAN[$i]==1)
	// 				{
	// 					$jan_fee = $stop_jan;
	// 				}
	// 				else
	// 				{
	// 					$jan_fee = 0;
	// 				}
	// 				if($febb=='FEB' && $FEB[$i]==1)
	// 				{
	// 					$feb_fee = $stop_feb;
	// 				}
	// 				else
	// 				{
	// 					$feb_fee = 0;
	// 				}
	// 				if($marr=='MAR' && $MAR[$i]==1)
	// 				{
	// 					$mar_fee = $stop_mar;
	// 				}
	// 				else
	// 				{
	// 					$mar_fee = 0;
	// 				}
	// 				$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 			}
	// 			else{
	// 				$amt_feehead[$i] = 0;
	// 			}
	// 		}else{
	// 			if($monthly[$i]==1) // calculation for the month base fee which is old student //
	// 			{
	// 				if($CL_BASED[$i]==1) // calculation on the basis of class base //
	// 				{
	// 					switch($emp_ward)
	// 					{
	// 						case 1:
	// 						$amt_fee = $feeclw_AMOUNT[$i];
	// 						break;
	// 						case 2:
	// 						$amt_fee = $feeclw_EMP[$i];
	// 						break;
	// 						case 3:
	// 						$amt_fee = $feeclw_CCL[$i];
	// 						break;
	// 						case 4:
	// 						$amt_fee = $feeclw_CCL[$i];
	// 						break;
	// 						case 5:
	// 						$amt_fee = $feeclw_SPL[$i];
	// 						break;
	// 						case 6:
	// 						$amt_fee = $feeclw_EXT[$i];
	// 						break;
	// 						default:
	// 						$amt_fee = 0;
	// 						break;

	// 					}
	// 					// Checking the head type of the student //
	// 					if($HType[$i]=='No')
	// 					{
	// 						$h_fee = $amt_fee;
	// 					}
	// 					elseif($HType[$i]=='COMPUTER')
	// 					{
	// 						if($COMPUTER==1)
	// 						{
	// 							$h_fee = $amt_fee;
	// 						}
	// 						else
	// 						{
	// 							$h_fee = 0;
	// 						}
	// 					}
	// 					elseif($HType[$i]=='SCIENCE')
	// 					{
	// 						$h_fee = $amt_fee*$science;
	// 					}
	// 					elseif($HType[$i]=='HOSTEL')
	// 					{
	// 						if($hostel==1)
	// 						{
	// 							$h_fee = $amt_fee;
	// 						}
	// 						else
	// 						{
	// 							$h_fee = 0;
	// 						}
	// 					}
	// 					elseif($HType[$i]=='BOOK')
	// 					{
	// 						$h_fee = $amt_fee;
	// 					}
	// 					elseif($HType[$i]=='DUES'){
	// 						$h_fee = 0;
	// 					}
	// 					else
	// 					{
	// 						$h_fee = 0;
	// 					}
	// 					// End Of Checking Head Type //
	// 					if($SCHOLAR==1) // calculation on the basis of the scholarship //
	// 					{
	// 						if($Apply_From=='APR') // scholar ship apply from apr month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='MAY') //  scholar ship given from may month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JUN') // scholar given by jun month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JUl') // scholar given from jul
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='AUG') // scholar given by aug
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='SEP') // scholar given by sep
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='OCT')  // scholar given by oct month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='NOV') // scholar given by nov month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='DEC') // scholar given from dec month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JAN') // scholar given from jan month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='FEB') // scholar given from  feb month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='MAR') // scholar given from mar month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						else // scholar without any month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 					}
	// 					else // calculation without scholarship for student //
	// 					{
	// 						if($aprr=='APR' && $APR[$i]==1)
	// 						{
	// 							$apr_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$apr_fee = 0;
	// 						}
	// 						if($mayy=='MAY' && $may[$i]==1)
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 						{
	// 							$apr_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$apr_fee = 0;
	// 						}
	// 							$may_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$may_fee = 0;
	// 						}
	// 						if($junn=='JUN' && $JUN[$i]==1)
	// 						{
	// 							$jun_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jun_fee = 0;
	// 						}
	// 						if($jull=='JUL' && $JUL[$i]==1)
	// 						{
	// 							$jul_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jul_fee = 0;
	// 						}
	// 						if($augg=='AUG' && $AUG[$i]==1)
	// 						{
	// 							$aug_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$aug_fee = 0;
	// 						}
	// 						if($sepp=='SEP' && $SEP[$i]==1)
	// 						{
	// 							$sep_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$sep_fee = 0;
	// 						}
	// 						if($octt=='OCT' && $OCT[$i]==1)
	// 						{
	// 							$oct_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$oct_fee = 0;
	// 						}
	// 						if($novv=='NOV' && $NOV[$i]==1)
	// 						{
	// 							$nov_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$nov_fee = 0;
	// 						}
	// 						if($decc=='DEC' && $DECM[$i]==1)
	// 						{
	// 							$dec_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$dec_fee = 0;
	// 						}
	// 						if($jann=='JAN' && $JAN[$i]==1)
	// 						{
	// 							$jan_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jan_fee = 0;
	// 						}
	// 						if($febb=='FEB' && $FEB[$i]==1)
	// 						{
	// 							$feb_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$feb_fee = 0;
	// 						}
	// 						if($marr=='MAR' && $MAR[$i]==1)
	// 						{
	// 							$mar_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$mar_fee = 0;
	// 						}
	// 						$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 					}
	// 				}
	// 				else // calculation on the basis of without class base //
	// 				{
	// 					switch($emp_ward)
	// 					{
	// 						case 1:
	// 						$amt_fee = $AMOUNT[$i];
	// 						break;
	// 						case 2:
	// 						$amt_fee = $EMP[$i];
	// 						break;
	// 						case 3:
	// 						$amt_fee = $CCL[$i];
	// 						break;
	// 						case 4:
	// 						$amt_fee = $SPL[$i];
	// 						break;
	// 						case 5:
	// 						$amt_fee = $EXT[$i];
	// 						break;
	// 						case 6:
	// 						$amt_fee = $INTERNAL[$i];
	// 						break;
	// 						default:
	// 						$amt_fee = 0;
	// 						break;

	// 					}
	// 					// Checking the head type of the student //
	// 					if($HType[$i]=='No')
	// 					{
	// 						$h_fee = $amt_fee;
	// 					}
	// 					elseif($HType[$i]=='COMPUTER')
	// 					{
	// 						if($COMPUTER==1)
	// 						{
	// 							$h_fee = $amt_fee;
	// 						}
	// 						else
	// 						{
	// 							$h_fee = 0;
	// 						}
	// 					}
	// 					elseif($HType[$i]=='SCIENCE')
	// 					{
	// 						$h_fee = $amt_fee*$science;
	// 					}
	// 					elseif($HType[$i]=='BUS')
	// 					{
	// 						$h_fee = $stoppage_amounts;
	// 					}
	// 					ELSEIF($HType[$i]=='HOSTEL')
	// 					{
	// 						IF($hostel==1)
	// 						{
	// 							$h_fee = $amt_fee;
	// 						}
	// 						ELSE
	// 						{
	// 							$h_fee = 0;
	// 						}
	// 					}
	// 					ELSEIF($HType[$i]=='BOOK')
	// 					{
	// 						$h_fee = $amt_fee;
	// 					}
	// 					ELSE
	// 					{
	// 						$h_fee = 0;
	// 					}
	// 					if($SCHOLAR==1) // calculation on the basis of the scholarship //
	// 					{
	// 						if($Apply_From=='APR') // scholar ship apply from apr month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='MAY') //  scholar ship given from may month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JUN') // scholar given by jun month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JUl') // scholar given from jul
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='AUG') // scholar given by aug
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='SEP') // scholar given by sep
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='OCT')  // scholar given by oct month
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='NOV') // scholar given by nov month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='DEC') // scholar given from dec month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='JAN') // scholar given from jan month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='FEB') // scholar given from  feb month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						elseif($Apply_From=='MAR') // scholar given from mar month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee-$s[$i];
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 						else // scholar without any month //
	// 						{
	// 							if($aprr=='APR' && $APR[$i]==1)
	// 							{
	// 								$apr_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$apr_fee = 0;
	// 							}
	// 							if($mayy=='MAY' && $may[$i]==1)
	// 							{
	// 								$may_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$may_fee = 0;
	// 							}
	// 							if($junn=='JUN' && $JUN[$i]==1)
	// 							{
	// 								$jun_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jun_fee = 0;
	// 							}
	// 							if($jull=='JUL' && $JUL[$i]==1)
	// 							{
	// 								$jul_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jul_fee = 0;
	// 							}
	// 							if($augg=='AUG' && $AUG[$i]==1)
	// 							{
	// 								$aug_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$aug_fee = 0;
	// 							}
	// 							if($sepp=='SEP' && $SEP[$i]==1)
	// 							{
	// 								$sep_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$sep_fee = 0;
	// 							}
	// 							if($octt=='OCT' && $OCT[$i]==1)
	// 							{
	// 								$oct_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$oct_fee = 0;
	// 							}
	// 							if($novv=='NOV' && $NOV[$i]==1)
	// 							{
	// 								$nov_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$nov_fee = 0;
	// 							}
	// 							if($decc=='DEC' && $DECM[$i]==1)
	// 							{
	// 								$dec_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$dec_fee = 0;
	// 							}
	// 							if($jann=='JAN' && $JAN[$i]==1)
	// 							{
	// 								$jan_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$jan_fee = 0;
	// 							}
	// 							if($febb=='FEB' && $FEB[$i]==1)
	// 							{
	// 								$feb_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$feb_fee = 0;
	// 							}
	// 							if($marr=='MAR' && $MAR[$i]==1)
	// 							{
	// 								$mar_fee = $h_fee;
	// 							}
	// 							else
	// 							{
	// 								$mar_fee = 0;
	// 							}
	// 							$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 						}
	// 					}  
	// 					else // calculation without scholarship for student //
	// 					{
	// 						if($aprr=='APR' && $APR[$i]==1)
	// 						{
	// 							$apr_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$apr_fee = 0;
	// 						}
	// 						if($mayy=='MAY' && $may[$i]==1)
	// 						{
	// 							$may_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$may_fee = 0;
	// 						}
	// 						if($junn=='JUN' && $JUN[$i]==1)
	// 						{
	// 							$jun_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jun_fee = 0;
	// 						}
	// 						if($jull=='JUL' && $JUL[$i]==1)
	// 						{
	// 							$jul_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jul_fee = 0;
	// 						}
	// 						if($augg=='AUG' && $AUG[$i]==1)
	// 						{
	// 							$aug_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$aug_fee = 0;
	// 						}
	// 						if($sepp=='SEP' && $SEP[$i]==1)
	// 						{
	// 							$sep_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$sep_fee = 0;
	// 						}
	// 						if($octt=='OCT' && $OCT[$i]==1)
	// 						{
	// 							$oct_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$oct_fee = 0;
	// 						}
	// 						if($novv=='NOV' && $NOV[$i]==1)
	// 						{
	// 							$nov_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$nov_fee = 0;
	// 						}
	// 						if($decc=='DEC' && $DECM[$i]==1)
	// 						{
	// 							$dec_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$dec_fee = 0;
	// 						}
	// 						if($jann=='JAN' && $JAN[$i]==1)
	// 						{
	// 							$jan_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$jan_fee = 0;
	// 						}
	// 						if($febb=='FEB' && $FEB[$i]==1)
	// 						{
	// 							$feb_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$feb_fee = 0;
	// 						}
	// 						if($marr=='MAR' && $MAR[$i]==1)
	// 						{
	// 							$mar_fee = $h_fee;
	// 						}
	// 						else
	// 						{
	// 							$mar_fee = 0;
	// 						}
	// 						$amt_feehead[$i] = $apr_fee+$may_fee+$jun_fee+$jul_fee+$aug_fee+$sep_fee+$oct_fee+$nov_fee+$dec_fee+$jan_fee+$feb_fee+$mar_fee;
	// 					}

	// 				}
	// 			}
	// 			else // calculation for the new student where fee type for one month //
	// 			{
	// 				if($Session_Year==$SESSIONID)// Calculation For New Student Without Month Wise //
	// 				{
	// 					if($stu_aprfee=='N/A' || $stu_aprfee=='NOT ADMITTED')
	// 					{
	// 						if($CL_BASED[$i]==1)
	// 						{
	// 							switch($emp_ward)
	// 							{
	// 								case 1:
	// 								$amt_fee = $feeclw_AMOUNT[$i];
	// 								break;
	// 								case 2:
	// 								$amt_fee = $feeclw_EMP[$i];
	// 								break;
	// 								case 3:
	// 								$amt_fee = $feeclw_CCL[$i];
	// 								break;
	// 								case 4:
	// 								$amt_fee = $feeclw_CCL[$i];
	// 								break;
	// 								case 5:
	// 								$amt_fee = $feeclw_SPL[$i];
	// 								break;
	// 								case 6:
	// 								$amt_fee = $feeclw_EXT[$i];
	// 								break;
	// 								default:
	// 								$amt_fee = 0;
	// 								break;

	// 							}
	// 							// Checking the head type of the student //
	// 							if($HType[$i]=='No')
	// 							{
	// 								$h_fee = $amt_fee;
	// 							}
	// 							elseif($HType[$i]=='COMPUTER')
	// 							{
	// 								if($COMPUTER==1)
	// 								{
	// 									$h_fee = $amt_fee;
	// 								}
	// 								else
	// 								{
	// 									$h_fee = 0;
	// 								}
	// 							}
	// 							elseif($HType[$i]=='SCIENCE')
	// 							{
	// 								$h_fee = $amt_fee*$science;
	// 							}
	// 							elseif($HType[$i]=='BUS')
	// 							{
	// 								$h_fee = $stoppage_amounts;
	// 							}
	// 							ELSEIF($HType[$i]=='HOSTEL')
	// 							{
	// 								IF($hostel==1)
	// 								{
	// 									$h_fee = $amt_fee;
	// 								}
	// 								ELSE
	// 								{
	// 									$h_fee = 0;
	// 								}
	// 							}
	// 							ELSEIF($HType[$i]=='BOOK')
	// 							{
	// 								$h_fee = $amt_fee;
	// 							}
	// 							ELSE
	// 							{
	// 								$h_fee = 0;
	// 							}
	// 							// End Of Checking Head Type //
	// 							if($SCHOLAR==1)
	// 							{
	// 								if($Apply_From=='APR') // scholar ship apply from apr month
	// 								{
	// 									if($aprr=='APR')
	// 									{
	// 										$apr_fee = $h_fee-$s[$i];
	// 									}
	// 									else
	// 									{
	// 										$apr_fee = 0;
	// 									}
	// 									$amt_feehead[$i] = $apr_fee;

	// 								}
	// 								else
	// 								{
	// 									if($aprr=='APR')
	// 									{
	// 										$amt_feehead[$i] = $h_fee;
	// 									}
	// 									else
	// 									{
	// 										$amt_feehead[$i] = 0;
	// 									}

	// 								}
	// 							}
	// 							else
	// 							{
	// 								if($aprr=='APR')
	// 								{
	// 									$apr_fee = $h_fee;
	// 								}
	// 								else
	// 								{
	// 									$apr_fee = 0;
	// 								}
	// 								$amt_feehead[$i] = $apr_fee;
	// 							}
	// 						}
	// 						else
	// 						{
	// 							switch($emp_ward)
	// 							{
	// 								case 1:
	// 								$amt_fee = $AMOUNT[$i];
	// 								break;
	// 								case 2:
	// 								$amt_fee = $EMP[$i];
	// 								break;
	// 								case 3:
	// 								$amt_fee = $CCL[$i];
	// 								break;
	// 								case 4:
	// 								$amt_fee = $SPL[$i];
	// 								break;
	// 								case 5:
	// 								$amt_fee = $EXT[$i];
	// 								break;
	// 								case 6:
	// 								$amt_fee = $INTERNAL[$i];
	// 								break;
	// 								default:
	// 								$amt_fee = 0;
	// 								break;

	// 							}
	// 							// Checking the head type of the student //
	// 							if($HType[$i]=='No')
	// 							{
	// 								$h_fee = $amt_fee;
	// 							}
	// 							elseif($HType[$i]=='COMPUTER')
	// 							{
	// 								if($COMPUTER==1)
	// 								{
	// 									$h_fee = $amt_fee;
	// 								}
	// 								else
	// 								{
	// 									$h_fee = 0;
	// 								}
	// 							}
	// 							elseif($HType[$i]=='SCIENCE')
	// 							{
	// 								$h_fee = $amt_fee*$science;
	// 							}
	// 							elseif($HType[$i]=='BUS')
	// 							{
	// 								$h_fee = $stoppage_amounts;
	// 							}
	// 							ELSEIF($HType[$i]=='HOSTEL')
	// 							{
	// 								IF($hostel==1)
	// 								{
	// 									$h_fee = $amt_fee;
	// 								}
	// 								ELSE
	// 								{
	// 									$h_fee = 0;
	// 								}
	// 							}
	// 							ELSEIF($HType[$i]=='BOOK')
	// 							{
	// 								$h_fee = $amt_fee;
	// 							}
	// 							ELSE
	// 							{
	// 								$h_fee = 0;
	// 							}
	// 							if($SCHOLAR==1)
	// 							{
	// 								if($Apply_From=='APR') // scholar ship apply from apr month
	// 								{
	// 									if($aprr=='APR')
	// 									{
	// 										$apr_fee = $h_fee-$s[$i];
	// 									}
	// 									else
	// 									{
	// 										$apr_fee = 0;
	// 									}
	// 									$amt_feehead[$i] = $apr_fee;

	// 								}
	// 								else
	// 								{
	// 									if($aprr=='APR')
	// 									{
	// 										$amt_feehead[$i] = $h_fee;
	// 									}
	// 									else
	// 									{
	// 										$amt_feehead[$i] = 0;
	// 									}

	// 								}
	// 							}
	// 							else
	// 							{
	// 								if($aprr=='APR')
	// 								{
	// 									$apr_fee = $h_fee;
	// 								}
	// 								else
	// 								{
	// 									$apr_fee = 0;
	// 								}
	// 								$amt_feehead[$i] = $apr_fee;
	// 							}
	// 						}
	// 					}
	// 					else
	// 					{
	// 						$amt_feehead[$i] = 0;
	// 					}
	// 				}
	// 				else // calculation for old student without month wise //
	// 				{
	// 					$amt_feehead[$i] = 0;
	// 				}
	// 			}
	// 		}

	// 	}

	// 	$total_amount = $amt_feehead[1]+$amt_feehead[2]+$amt_feehead[3]+$amt_feehead[4]+$amt_feehead[5]+$amt_feehead[6]+$amt_feehead[7]+$amt_feehead[8]+$amt_feehead[9]+$amt_feehead[10]+$amt_feehead[11]+$amt_feehead[12]+$amt_feehead[13]+$amt_feehead[14]+$amt_feehead[15]+$amt_feehead[16]+$amt_feehead[17]+$amt_feehead[18]+$amt_feehead[19]+$amt_feehead[20]+$amt_feehead[21]+$amt_feehead[22]+$amt_feehead[22]+$amt_feehead[23]+$amt_feehead[24]+$amt_feehead[25];
	// 	$array = array(
	// 			'adm_no' 	=> $admission_no,
	// 			'feehead1'  => $fee_head[1],
	// 			'feehead2'  => $fee_head[2],
	// 			'feehead3'  => $fee_head[3],
	// 			'feehead4'  => $fee_head[4],
	// 			'feehead5'  => $fee_head[5],
	// 			'feehead6'  => $fee_head[6],
	// 			'feehead7'  => $fee_head[7],
	// 			'feehead8'  => $fee_head[8],
	// 			'feehead9'  => $fee_head[9],
	// 			'feehead10' => $fee_head[10],
	// 			'feehead11' => $fee_head[11],
	// 			'feehead12' => $fee_head[12],
	// 			'feehead13' => $fee_head[13],
	// 			'feehead14' => $fee_head[14],
	// 			'feehead15' => $fee_head[15],
	// 			'feehead16' => $fee_head[16],
	// 			'feehead17' => $fee_head[17],
	// 			'feehead18' => $fee_head[18],
	// 			'feehead19' => $fee_head[19],
	// 			'feehead20' => $fee_head[20],
	// 			'feehead21' => $fee_head[21],
	// 			'feehead22' => $fee_head[22],
	// 			'feehead23' => $fee_head[23],
	// 			'feehead24' => $fee_head[24],
	// 			'feehead25' => $fee_head[25],
	// 			'apr'       => $aprr,
	// 			'may'       => $mayy,
	// 			'jun'       => $junn,
	// 			'jul'       => $jull,
	// 			'aug'       => $augg,
	// 			'sep'       => $sepp,
	// 			'oct'       => $octt,
	// 			'nov'       => $novv,
	// 			'dec'       => $decc,
	// 			'jan'       => $jann,
	// 			'feb'       => $febb,
	// 			'mar'       => $marr,
	// 			'amt_feehead1' => $amt_feehead[1],
	// 			'amt_feehead2' => $amt_feehead[2],
	// 			'amt_feehead3' => $amt_feehead[3],
	// 			'amt_feehead4' => $amt_feehead[4],
	// 			'amt_feehead5' => $amt_feehead[5],
	// 			'amt_feehead6' => $amt_feehead[6],
	// 			'amt_feehead7' => $amt_feehead[7],
	// 			'amt_feehead8' => $amt_feehead[8],
	// 			'amt_feehead9' => $amt_feehead[9],
	// 			'amt_feehead10' => $amt_feehead[10],
	// 			'amt_feehead11' => $amt_feehead[11],
	// 			'amt_feehead12' => $amt_feehead[12],
	// 			'amt_feehead13' => $amt_feehead[13],
	// 			'amt_feehead14' => $amt_feehead[14],
	// 			'amt_feehead15' => $amt_feehead[15],
	// 			'amt_feehead16' => $amt_feehead[16],
	// 			'amt_feehead17' => $amt_feehead[17],
	// 			'amt_feehead18' => $amt_feehead[18],
	// 			'amt_feehead19' => $amt_feehead[19],
	// 			'amt_feehead20' => $amt_feehead[20],
	// 			'amt_feehead21' => $amt_feehead[21],
	// 			'amt_feehead22' => $amt_feehead[22],
	// 			'amt_feehead23' => $amt_feehead[23],
	// 			'amt_feehead24' => $amt_feehead[24],
	// 			'amt_feehead25' => $amt_feehead[25],
	// 			'AccG1' => $AccG[1],
	// 			'AccG2' => $AccG[2],
	// 			'AccG3' => $AccG[3],
	// 			'AccG4' => $AccG[4],
	// 			'AccG5' => $AccG[5],
	// 			'AccG6' => $AccG[6],
	// 			'AccG7' => $AccG[7],
	// 			'AccG8' => $AccG[8],
	// 			'AccG9' => $AccG[9],
	// 			'AccG10' => $AccG[10],
	// 			'AccG11' => $AccG[11],
	// 			'AccG12' => $AccG[12],
	// 			'AccG13' => $AccG[13],
	// 			'AccG14' => $AccG[14],
	// 			'AccG15' => $AccG[15],
	// 			'AccG16' => $AccG[16],
	// 			'AccG17' => $AccG[17],
	// 			'AccG18' => $AccG[18],
	// 			'AccG19' => $AccG[19],
	// 			'AccG20' => $AccG[20],
	// 			'AccG21' => $AccG[21],
	// 			'AccG22' => $AccG[22],
	// 			'AccG23' => $AccG[23],
	// 			'AccG24' => $AccG[24],
	// 			'AccG25' => $AccG[25],
	// 			'total_amount'  => $total_amount,
	// 			'payment_mode'  => $payment_mode,
	// 			'bank'			=> $bank,
	// 			//'rcpt_no'		=> $rcpt_no,
	// 			'student_data'	=> $student_data,
	// 			'ward_type'     => $ward_type,
	// 			'bsn'           => $bsn,
	// 			'bsa'			=> $bsa,
	// 			'ffm'			=> $ffm,
	// 			'rcpt_date'     => $rcpt_date
	// 		);
	// 		$this->load->view('Fee_collection/feehaead_calculation_monthwise',$array);
	// }
}
