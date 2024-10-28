<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends MY_Controller{
	public function __construct(){
		parent:: __construct();
		$this->loggedOut();
	    $this->load->model('Mymodel','dbcon');
	}
	public function typeofreports(){
		$this->fee_template('Reports/reports');
	}
	
	public function daily_monthlycollecion()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if($ROLE_ID == 10){ // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"Collection_mode='1'");
		}
		else{ // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"User_Id='$User_Id'");
		}
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		$data = array(
			'user_id' => $user_id,
			'feehead1' => $feehead[1],
			'feehead2' => $feehead[2],
			'feehead3' => $feehead[3],
			'feehead4' => $feehead[4],
			'feehead5' => $feehead[5],
			'feehead6' => $feehead[6],
			'feehead7' => $feehead[7],
			'feehead8' => $feehead[8],
			'feehead9' => $feehead[9],
			'feehead10' => $feehead[10],
			'feehead11' => $feehead[11],
			'feehead12' => $feehead[12],
			'feehead13' => $feehead[13],
			'feehead14' => $feehead[14],
			'feehead15' => $feehead[15],
			'feehead16' => $feehead[16],
			'feehead17' => $feehead[17],
			'feehead18' => $feehead[18],
			'feehead19' => $feehead[19],
			'feehead20' => $feehead[20],
			'feehead21' => $feehead[21],
			'feehead22' => $feehead[22],
			'feehead23' => $feehead[23],
			'feehead24' => $feehead[24],
			'feehead25' => $feehead[25],
			'ROLE_ID'  => $ROLE_ID
		);
		$this->fee_template('Reports/daily_monthlycollecion',$data);
	}
	public function single_date()
	{
		$collectiontype    = $this->input->post('collectiontype');
		$feecollectiontype = $this->input->post('feecollectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$single			   = $this->input->post('single');
		$date_type=$single;
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		
		if($feecollectiontype=='All')
		{
			
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('daycoll','*',"Collection_Mode=$collectiontype AND RECT_DATE='$date_type'");
			}
			else{
			
				$data1 = $this->dbcon->select('daycoll','*',"User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE='$date_type'");
			}
			
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/daily_collection_report',$array);
		}
		elseif($feecollectiontype=='PRE')
		{
			
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('previous_year_collection','*',"Collection_Mode=$collectiontype AND RECT_DATE='$date_type'");
				
			}
			else{
			
				$data1 = $this->dbcon->select('previous_year_collection','*',"User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE='$date_type'");
			}
			
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/daily_collection_report',$array);
		}
		else if($feecollectiontype=='Monthly')
		{   
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			}
			else{
			$data1 = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			}
			
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/daily_collection_report',$array);
		}
		else if($feecollectiontype=='MISL')
		{
			$data1 = $this->dbcon->select('daycoll','*',"mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/daily_collection_report',$array);
		}
		else if($feecollectiontype=='NONE')
		{
			$data1 = $this->dbcon->select('daycoll','*',"ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/daily_collection_report',$array);
		} 
		else
		{
			$data1 = "dada";
		}
	}
	public function mult_date()
	{
		$collectiontype = $this->input->post('collectiontype');
		$feecollectiontype = $this->input->post('feecollectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$multiple_date1	   = $this->input->post('multiple_date1');
		$multiple_date2	   = $this->input->post('multiple_date2');
		
		// Declare an empty array 
		$array_date = array(); 
		  
		// Use strtotime function 
		$Variable1 = strtotime($multiple_date1); 
		$Variable2 = strtotime($multiple_date2); 
		  
		// Use for loop to store dates into array 
		// 86400 sec = 24 hrs = 60*60*24 = 1 day 
		for ($currentDate = $Variable1; $currentDate <= $Variable2;  
										$currentDate += (86400)) { 
											  
		$Store = date('Y-m-d', $currentDate); 
		$array_date[] = $Store; 
		}
		$count_date = count($array_date);
		
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		
		if($feecollectiontype=='All')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				else
				{
				
					$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report',$array);
		}
		elseif($feecollectiontype=='PRE')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('previous_year_collection','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				
				$data_array[] = $data1;
				}
				else
				{
				
					$data1 = $this->dbcon->selectSingleData('previous_year_collection','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report',$array);
		}
		else if($feecollectiontype=='Monthly')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				else
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				
				
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report',$array);
		}
		else if($feecollectiontype=='MISL')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report',$array);
		}
		else if($feecollectiontype=='NONE')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report',$array);
		} 
		else
		{
			$data1 = "dada";
		}
	}
	// function calling for the genetating pdf //
	public function daily_report()
	{
		ini_set('display_errors',-1);
		ini_set('memory_limit', '1024M');
		$collectiontype    = $this->input->post('ct1');
		$feecollectiontype = $this->input->post('fct1');
		$collectioncounter = $this->input->post('cc1');
		$single			   = $this->input->post('sd1');
		$date_type=$single;
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		$School_setting = $this->dbcon->select('school_setting','*');
		$session_master = $this->dbcon->select('session_master','*',"Active_Status=1");
		$account = $this->dbcon->select('accg','*');
		if($feecollectiontype=='All')
		{
			
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('daycoll','*',"Collection_Mode='$collectiontype' AND RECT_DATE='$date_type'");
			}
			else{
			
				$data1 = $this->dbcon->select('daycoll','*',"User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' AND RECT_DATE='$date_type'");
			}
			
			
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'date_type' => $date_type
			);
			$this->load->view('Reports/daily_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->set_option('isRemoteEnabled', true);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("daily_all_report.pdf", array("Attachment"=>0));
			
		}
		if($feecollectiontype=='PRE')
		{
			
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('previous_year_collection','*',"Collection_Mode='$collectiontype' AND RECT_DATE='$date_type'");
			}
			else{
			
				$data1 = $this->dbcon->select('previous_year_collection','*',"User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' AND RECT_DATE='$date_type'");
			}
			
			
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'date_type' => $date_type
			);
			$this->load->view('Reports/daily_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->set_option('isRemoteEnabled', true);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("daily_pre_report.pdf", array("Attachment"=>0));
			
		}
		else if($feecollectiontype=='Monthly')
		{
			if($collectioncounter == '%')
			{
				$data1 = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			}
			else{
			$data1 = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			}
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'date_type' => $date_type
			);
			$this->load->view('Reports/daily_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Daily_Monthly.pdf", array("Attachment"=>0));
			
		}
		else if($feecollectiontype=='MISL')
		{
			$data1 = $this->dbcon->select('daycoll','*',"mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'date_type' => $date_type
			);
			$this->load->view('Reports/daily_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Daily_Misl.pdf", array("Attachment"=>0));
		}
		else if($feecollectiontype=='NONE')
		{
			$data1 = $this->dbcon->select('daycoll','*',"ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$date_type'");
			$array = array(
				'data1'     => $data1,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'date_type' => $date_type
			);
			$this->load->view('Reports/daily_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Daily_None.pdf", array("Attachment"=>0));
			
		} 
		else
		{
			$data1 = "dada";
		}
	}
	public function monthly_report()
	{
		ini_set('display_errors',-1);
		$collectiontype    = $this->input->post('ct2');
		$feecollectiontype = $this->input->post('fct2');
		$collectioncounter = $this->input->post('cc2');
		$single			   = $this->input->post('sd2');
		$double			   = $this->input->post('sdf2');
		
		// Declare an empty array 
		$array_date = array(); 
		  
		// Use strtotime function 
		$Variable1 = strtotime($single); 
		$Variable2 = strtotime($double); 
		  
		// Use for loop to store dates into array 
		// 86400 sec = 24 hrs = 60*60*24 = 1 day 
		for ($currentDate = $Variable1; $currentDate <= $Variable2;  
										$currentDate += (86400)) { 
											  
		$Store = date('Y-m-d', $currentDate); 
		$array_date[] = $Store; 
		}
		$count_date = count($array_date);
		
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		$School_setting = $this->dbcon->select('school_setting','*');
		$session_master = $this->dbcon->select('session_master','*',"Active_Status=1");
		$account = $this->dbcon->select('accg','*');
		if($feecollectiontype=='All')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				else
				{
				
					$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				
			}
			
			if($collectioncounter == '%')
			{
			
			$collection_type = $this->db->query("select * from daycoll where Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'")->result();
			}
			else
			{
			$collection_type = $this->dbcon->select('daycoll','*',"User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'");
			}
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Monthly_report_all.pdf", array("Attachment"=>0));
			
		}
		if($feecollectiontype=='PRE')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('previous_year_collection','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				else
				{
				
					$data1 = $this->dbcon->selectSingleData('previous_year_collection','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				
			}
			$collection_type = $this->dbcon->select('previous_year_collection','*',"Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'");
			
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Monthly_report_all.pdf", array("Attachment"=>0));
			
		}
		else if($feecollectiontype=='Monthly')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				if($collectioncounter == '%')
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				else
				{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
				}
				
			}
			if($collectioncounter == '%')
			{
			$collection_type = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'");
			}
			else
			{
			$collection_type = $this->dbcon->select('daycoll','*',"ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'");
			}
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Monthly_Reports.pdf", array("Attachment"=>0));
			
		}
		else if($feecollectiontype=='MISL')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
			}
			$collection_type = $this->dbcon->select('daycoll','*',"mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'");
			$array = array(
				'data_array'     => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Monthly_Misl.pdf", array("Attachment"=>0));
		}
		else if($feecollectiontype=='NONE')
		{
			$data_array = array();
			for($i=0;$i<$count_date;$i++)
			{
				$data1 = $this->dbcon->selectSingleData('daycoll','DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25',"ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]'");
				$data_array[] = $data1;
			}
			$collection_type = $this->dbcon->select('daycoll','*',"ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'");
			$array = array(
				'data_array'=> $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf',$array);
			
			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Monthly_None.pdf", array("Attachment"=>0));
			
		} 
		else
		{
			$data1 = "dada";
		}
	}
	public function Fee_head_Defaulter_List(){
		$month_master = $this->dbcon->select('feegeneration','DISTINCT(Month_NM)');
		$class = $this->dbcon->select('classes','*');
		$sec = $this->dbcon->select('sections','*');
		$feehead = $this->dbcon->select('feehead','SHNAME');
		$array = array(
			'month_master' => $month_master,
			'class' => $class,
			'sec' => $sec,
			'feehead' => $feehead
			);
		$this->fee_template('Reports/defaulter_headwise_list',$array);
	}
	
	public function headwise_summary()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if($ROLE_ID == 10){ // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"Collection_mode='1'");
		}
		else{ // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"User_Id='$User_Id'");
		}
		
		$data = array(
			'user_id' => $user_id,
			'ROLE_ID'  => $ROLE_ID
			);
		
	   $this->fee_template('Reports/headwise_summary',$data);
	}
	
	public function headwise_data()
	{
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collected_by');
		$single			   = $this->input->post('strt_date');
		$double			   = $this->input->post('end_date');
       
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
			//$feehead = $this->db->query("select fh.ACT_CODE,fh.FEE_HEAD,(Select sum() from daycoll where Collection_Mode=1 AND RECT_DATE>='$single' AND RECT_DATE<='$double')as amt from feehead as fh order by fh.ACT_CODE")->result();
		
		
			if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
			}
			
			$array = array(
				'data'     => $data,
				'feehead' => $feehead,
				'collectiontype' => $collectiontype,
				'collectioncounter' => $collectioncounter,
				'single' => $single,
				'double' => $double,
				
			);
		
			$this->load->view('Reports/headwise_summary_report',$array);
		
	}
		
		public function headwise_pdf(){
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$single			   = $this->input->post('single');
		$double			   = $this->input->post('double');
		
		$school_setting = $this->dbcon->select('school_setting','*');
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
		if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
			}
			
		$array = array(
			'school_setting' => $school_setting,
			'data' => $data,
			'feehead' => $feehead,
			'single' => $single,
			'double' => $double,
			'collectioncounter' => $collectioncounter,
			'collectiontype' => $collectiontype,
		);
		
		$this->load->view('Reports/headwise_summary_pdf',$array);
		
		$html = $this->output->get_output();
		$this->load->library('pdf');
		$this->dompdf->loadHtml($html);
		$this->dompdf->setPaper('A4', 'Portrait');
		$this->dompdf->render();
		$this->dompdf->stream("Head wise Summary Report.pdf", array("Attachment"=>0));
	}
	
	public function pre_headwise_summary()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if($ROLE_ID == 10){ // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"Collection_mode='1'");
		}
		else{ // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"User_Id='$User_Id'");
		}
		
		$data = array(
			'user_id' => $user_id,
			'ROLE_ID'  => $ROLE_ID
			);
		
	   $this->fee_template('Reports/pre_headwise_summary',$data);
	}
	
	public function pre_headwise_data()
	{
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collected_by');
		$single			   = $this->input->post('strt_date');
		$double			   = $this->input->post('end_date');
       
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
			//$feehead = $this->db->query("select fh.ACT_CODE,fh.FEE_HEAD,(Select sum() from daycoll where Collection_Mode=1 AND RECT_DATE>='$single' AND RECT_DATE<='$double')as amt from feehead as fh order by fh.ACT_CODE")->result();
		
		
			if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from previous_year_collection where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from previous_year_collection where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
			}
			
			$array = array(
				'data'     => $data,
				'feehead' => $feehead,
				'collectiontype' => $collectiontype,
				'collectioncounter' => $collectioncounter,
				'single' => $single,
				'double' => $double,
				
			);
		
			$this->load->view('Reports/pre_headwise_summary_report',$array);
		
	}
	
		public function pre_headwise_pdf(){
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$single			   = $this->input->post('single');
		$double			   = $this->input->post('double');
		
		$school_setting = $this->dbcon->select('school_setting','*');
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
		if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from previous_year_collection where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from previous_year_collection where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'")->result_array();
			}
			
		$array = array(
			'school_setting' => $school_setting,
			'data' => $data,
			'feehead' => $feehead,
			'single' => $single,
			'double' => $double,
			'collectioncounter' => $collectioncounter,
			'collectiontype' => $collectiontype,
		);
		
		$this->load->view('Reports/pre_headwise_summary_pdf',$array);
		
		$html = $this->output->get_output();
		$this->load->library('pdf');
		$this->dompdf->loadHtml($html);
		$this->dompdf->setPaper('A4', 'Portrait');
		$this->dompdf->render();
		$this->dompdf->stream("Head wise Summary Report(Pre Colletion).pdf", array("Attachment"=>0));
	}
	
	public function adv_headwise_summary()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if($ROLE_ID == 10){ // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"Collection_mode='1'");
		}
		else{ // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"User_Id='$User_Id'");
		}
		
		$data = array(
			'user_id' => $user_id,
			'ROLE_ID'  => $ROLE_ID
			);
		
	   $this->fee_template('Reports/adv_headwise_summary',$data);
	}
	
	public function adv_headwise_data()
	{
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collected_by');
		$single			   = $this->input->post('strt_date');
		$double			   = $this->input->post('end_date');
       
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
			//$feehead = $this->db->query("select fh.ACT_CODE,fh.FEE_HEAD,(Select sum() from daycoll where Collection_Mode=1 AND RECT_DATE>='$single' AND RECT_DATE<='$double')as amt from feehead as fh order by fh.ACT_CODE")->result();
		
		
			if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double' AND SEC='Z'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double' AND SEC='Z'")->result_array();
			}
			
			$array = array(
				'data'     => $data,
				'feehead' => $feehead,
				'collectiontype' => $collectiontype,
				'collectioncounter' => $collectioncounter,
				'single' => $single,
				'double' => $double,
				
			);
		
			$this->load->view('Reports/adv_headwise_summary_report',$array);
		
	}
	
	public function Fee_Defaulter_List(){
		$month_master = $this->dbcon->select('feegeneration','DISTINCT(Month_NM)');
		$class = $this->dbcon->select('classes','*');
		$sec = $this->dbcon->select('sections','*');
		$array = array(
			'month_master' => $month_master,
			'class' => $class,
			'sec' => $sec
			);
		$this->fee_template('Reports/defaulter_list',$array);
	}
	
	public function Fee_Defaulter_sms(){
		$User_Id = $this->session->userdata('user_id');
		$month_master = $this->dbcon->select('feegeneration','DISTINCT(Month_NM)');
		//$class = $this->dbcon->select('classes','*');
		
		 
		$class = $this->db->query("select * from classes")->result();
		
		$sec = $this->dbcon->select('sections','*');
		$array = array(
			'month_master' => $month_master,
			'class' => $class,
			'sec' => $sec
			);
		$this->fee_template('Reports/defaulter_list_sms',$array);
	}
	
	public function adv_headwise_pdf(){
		$collectiontype    = $this->input->post('collectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$single			   = $this->input->post('single');
		$double			   = $this->input->post('double');
		
		$school_setting = $this->dbcon->select('school_setting','*');
		$feehead = $this->db->query("select FEE_HEAD from feehead order by ACT_CODE")->result();
		if($collectioncounter == '%')
			{
				$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double' AND SEC='Z'")->result_array();
				
			}
			else{
			
					$data = $this->db->query("select sum(TOTAL)tot,sum(Fee1)Fee1,sum(Fee2)Fee2,sum(Fee3)Fee3,SUM(Fee4)Fee4,SUM(Fee5)Fee5,SUM(Fee6)Fee6,SUM(Fee7)Fee7,SUM(Fee8)Fee8,SUM(Fee9)Fee9,SUM(Fee10)Fee10,SUM(Fee11)Fee11,SUM(Fee12)Fee12,sum(Fee13)Fee13,sum(Fee14)Fee14,sum(Fee15)Fee15,SUM(Fee16)Fee16,SUM(Fee17)Fee17,SUM(Fee18)Fee18,SUM(Fee19)Fee19,SUM(Fee20)Fee20,SUM(Fee21)Fee21,SUM(Fee22)Fee22,SUM(Fee23)Fee23,SUM(Fee24)Fee24,SUM(Fee25)Fee25 from daycoll where User_Id LIKE '$collectioncounter' AND Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double' AND SEC='Z'")->result_array();
			}
			
		$array = array(
			'school_setting' => $school_setting,
			'data' => $data,
			'feehead' => $feehead,
			'single' => $single,
			'double' => $double,
			'collectioncounter' => $collectioncounter,
			'collectiontype' => $collectiontype,
		);
		
		$this->load->view('Reports/adv_headwise_summary_pdf',$array);
		
		$html = $this->output->get_output();
		$this->load->library('pdf');
		$this->dompdf->loadHtml($html);
		$this->dompdf->setPaper('A4', 'Portrait');
		$this->dompdf->render();
		$this->dompdf->stream("Head wise Summary Report(Advance Collection).pdf", array("Attachment"=>0));
	}
	public function monthlycollecion()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if($ROLE_ID == 10){ // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"Collection_mode='1'");
		}
		else{ // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll','DISTINCT(User_Id)',"User_Id='$User_Id'");
		}
		for($i=1;$i<=25;$i++)
		{
			$feehead[$i] = $this->dbcon->select('feehead','*',"ACT_CODE='$i'");
		}
		$data = array(
			'user_id' => $user_id,
			'feehead1' => $feehead[1],
			'feehead2' => $feehead[2],
			'feehead3' => $feehead[3],
			'feehead4' => $feehead[4],
			'feehead5' => $feehead[5],
			'feehead6' => $feehead[6],
			'feehead7' => $feehead[7],
			'feehead8' => $feehead[8],
			'feehead9' => $feehead[9],
			'feehead10' => $feehead[10],
			'feehead11' => $feehead[11],
			'feehead12' => $feehead[12],
			'feehead13' => $feehead[13],
			'feehead14' => $feehead[14],
			'feehead15' => $feehead[15],
			'feehead16' => $feehead[16],
			'feehead17' => $feehead[17],
			'feehead18' => $feehead[18],
			'feehead19' => $feehead[19],
			'feehead20' => $feehead[20],
			'feehead21' => $feehead[21],
			'feehead22' => $feehead[22],
			'feehead23' => $feehead[23],
			'feehead24' => $feehead[24],
			'feehead25' => $feehead[25],
			'ROLE_ID'  => $ROLE_ID
		);
		$this->fee_template('Reports/monthly_collection',$data);
	}
	public function sunilmonthlycollecion()
	{
		$ROLE_ID = $this->session->userdata('ROLE_ID');
		$User_Id = $this->session->userdata('user_id');
		if ($ROLE_ID == 10) { // setting role id for fee admin where role id is 10
			$user_id = $this->dbcon->select('daycoll', 'DISTINCT(User_Id)', "Collection_mode='1'");
		} else { // setting role id for bank collection where role id is 14
			$user_id = $this->dbcon->select('daycoll', 'DISTINCT(User_Id)', "User_Id='$User_Id'");
		}
		for ($i = 1; $i <= 25; $i++) {
			$feehead[$i] = $this->dbcon->select('feehead', '*', "ACT_CODE='$i'");
		}
		$data = array(
			'user_id' => $user_id,
			'feehead1' => $feehead[1],
			'feehead2' => $feehead[2],
			'feehead3' => $feehead[3],
			'feehead4' => $feehead[4],
			'feehead5' => $feehead[5],
			'feehead6' => $feehead[6],
			'feehead7' => $feehead[7],
			'feehead8' => $feehead[8],
			'feehead9' => $feehead[9],
			'feehead10' => $feehead[10],
			'feehead11' => $feehead[11],
			'feehead12' => $feehead[12],
			'feehead13' => $feehead[13],
			'feehead14' => $feehead[14],
			'feehead15' => $feehead[15],
			'feehead16' => $feehead[16],
			'feehead17' => $feehead[17],
			'feehead18' => $feehead[18],
			'feehead19' => $feehead[19],
			'feehead20' => $feehead[20],
			'feehead21' => $feehead[21],
			'feehead22' => $feehead[22],
			'feehead23' => $feehead[23],
			'feehead24' => $feehead[24],
			'feehead25' => $feehead[25],
			'ROLE_ID'  => $ROLE_ID
		);
		$this->fee_template('Reports/sunilmonthly_collection', $data);
	}
	public function sunilmult_date()
	{
		$collectiontype = $this->input->post('collectiontype');
		$feecollectiontype = $this->input->post('feecollectiontype');
		$collectioncounter = $this->input->post('collectioncounter');
		$multiple_date1	   = $this->input->post('multiple_date1');
		$multiple_date2	   = $this->input->post('multiple_date2');

		// Declare an empty array 
		$array_date = array();

		// Use strtotime function 
		$Variable1 = strtotime($multiple_date1);
		$Variable2 = strtotime($multiple_date2);

		// Use for loop to store dates into array 
		// 86400 sec = 24 hrs = 60*60*24 = 1 day 
		for (
			$currentDate = $Variable1;
			$currentDate <= $Variable2;
			$currentDate += (86400)
		) {

			$Store = date('Y-m-d', $currentDate);
			$array_date[] = $Store;
		}
		$count_date = count($array_date);

		for ($i = 1; $i <= 25; $i++) {
			$feehead[$i] = $this->dbcon->select('feehead', '*', "ACT_CODE='$i'");
		}

		if ($feecollectiontype == 'All') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {

				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				} else {

					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report', $array);
		} elseif ($feecollectiontype == 'PRE') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {

				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('previous_year_collection', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");

					$data_array[] = $data1;
				} else {

					$data1 = $this->dbcon->selectSingleData('previous_year_collection', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report', $array);
		} else if ($feecollectiontype == 'Monthly') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				} else {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report', $array);
		} else if ($feecollectiontype == 'MISL') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
				$data_array[] = $data1;
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/monthly_collection_report', $array);
		} else if ($feecollectiontype == 'NONE') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
				$data_array[] = $data1;
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25]
			);
			$this->load->view('Reports/sunilmonthly_collection_report', $array);
		} else {
			$data1 = "dada";
		}
	}
	public function sunilmonthly_report()
	{
		ini_set('display_errors', -1);
		$collectiontype    = $this->input->post('ct2');
		$feecollectiontype = $this->input->post('fct2');
		$collectioncounter = $this->input->post('cc2');
		$single			   = $this->input->post('sd2');
		$double			   = $this->input->post('sdf2');

		// Declare an empty array 
		$array_date = array();

		// Use strtotime function 
		$Variable1 = strtotime($single);
		$Variable2 = strtotime($double);

		// Use for loop to store dates into array 
		// 86400 sec = 24 hrs = 60*60*24 = 1 day 
		for (
			$currentDate = $Variable1;
			$currentDate <= $Variable2;
			$currentDate += (86400)
		) {

			$Store = date('Y-m-d', $currentDate);
			$array_date[] = $Store;
		}
		$count_date = count($array_date);

		for ($i = 1; $i <= 25; $i++) {
			$feehead[$i] = $this->dbcon->select('feehead', '*', "ACT_CODE='$i'");
		}
		$School_setting = $this->dbcon->select('school_setting', '*');
		$session_master = $this->dbcon->select('session_master', '*', "Active_Status=1");
		$account = $this->dbcon->select('accg', '*');
		if ($feecollectiontype == 'All') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				} else {

					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}

			if ($collectioncounter == '%') {

				$collection_type = $this->db->query("select * from daycoll where Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double' AND RECT_NO LIKE 'D%'")->result();
			} else {
				$collection_type = $this->dbcon->select('daycoll', '*', "User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double' AND RECT_NO LIKE 'D%'");
			}

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf', $array);

			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Sunil Enterprises Monthly_report_all.pdf", array("Attachment" => 0));
		}
		if ($feecollectiontype == 'PRE') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('previous_year_collection', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				} else {

					$data1 = $this->dbcon->selectSingleData('previous_year_collection', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "User_Id LIKE '$collectioncounter' && Collection_Mode=$collectiontype AND RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}
			$collection_type = $this->dbcon->select('previous_year_collection', '*', "Collection_Mode=$collectiontype AND RECT_DATE>='$single' AND RECT_DATE<='$double'  AND RECT_NO LIKE 'D%'");

			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf', $array);

			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Sunil Enterprises Monthly_report_all.pdf", array("Attachment" => 0));
		} else if ($feecollectiontype == 'Monthly') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				if ($collectioncounter == '%') {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				} else {
					$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
					$data_array[] = $data1;
				}
			}
			if ($collectioncounter == '%') {
				$collection_type = $this->dbcon->select('daycoll', '*', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double'  AND RECT_NO LIKE 'D%'");
			} else {
				$collection_type = $this->dbcon->select('daycoll', '*', "ADM_NO!='NONE' && mid(period,1,4)!='MISL' && mid(period,1,3)!='PRE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double' AND RECT_NO LIKE 'D%'");
			}
			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf', $array);

			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Sunil Enterprises Monthly_Reports.pdf", array("Attachment" => 0));
		} else if ($feecollectiontype == 'MISL') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
				$data_array[] = $data1;
			}
			$collection_type = $this->dbcon->select('daycoll', '*', "mid(period,1,4)='MISL' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double' AND RECT_NO LIKE 'D%'");
			$array = array(
				'data_array'     => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/monthly_collection_pdf', $array);

			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Sunil Enterprises Monthly_Misl.pdf", array("Attachment" => 0));
		} else if ($feecollectiontype == 'NONE') {
			$data_array = array();
			for ($i = 0; $i < $count_date; $i++) {
				$data1 = $this->dbcon->selectSingleData('daycoll', 'DISTINCT(RECT_DATE)AS RECT_DATE, min(RECT_NO) AS RECT_NO_start, MAX(RECT_NO) AS RECT_NO_end, sum(TOTAL) AS TOTAL, sum(Fee1) AS Fee1, SUM(Fee2) AS Fee2, SUM(Fee3)Fee3, sum(Fee4)Fee4, sum(Fee5)Fee5, sum(Fee6)Fee6, sum(Fee7)Fee7, sum(Fee8)Fee8, sum(Fee9)Fee9, sum(Fee10)Fee10, sum(Fee11)Fee11, SUM(Fee12)Fee12, sum(Fee13)Fee13, SUM(Fee14)Fee14, SUM(Fee15)Fee15, sum(Fee16)Fee16, sum(Fee17)Fee17, sum(Fee18)Fee18, sum(Fee19)Fee19, sum(Fee20)Fee20, sum(Fee21)Fee21, sum(Fee22)Fee22, SUM(Fee23)Fee23, sum(Fee24)Fee24, SUM(Fee25)Fee25', "ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE='$array_date[$i]' AND RECT_NO LIKE 'D%'");
				$data_array[] = $data1;
			}
			$collection_type = $this->dbcon->select('daycoll', '*', "ADM_NO='NONE' && User_Id LIKE '$collectioncounter' && Collection_Mode='$collectiontype' && RECT_DATE>='$single' AND RECT_DATE<='$double' AND RECT_NO LIKE 'D%'");
			$array = array(
				'data_array' => $data_array,
				'feehead1'  => $feehead[1],
				'feehead2'  => $feehead[2],
				'feehead3'  => $feehead[3],
				'feehead4'  => $feehead[4],
				'feehead5'  => $feehead[5],
				'feehead6'  => $feehead[6],
				'feehead7'  => $feehead[7],
				'feehead8'  => $feehead[8],
				'feehead9'  => $feehead[9],
				'feehead10' => $feehead[10],
				'feehead11' => $feehead[11],
				'feehead12' => $feehead[12],
				'feehead13' => $feehead[13],
				'feehead14' => $feehead[14],
				'feehead15' => $feehead[15],
				'feehead16' => $feehead[16],
				'feehead17' => $feehead[17],
				'feehead18' => $feehead[18],
				'feehead19' => $feehead[19],
				'feehead20' => $feehead[20],
				'feehead21' => $feehead[21],
				'feehead22' => $feehead[22],
				'feehead23' => $feehead[23],
				'feehead24' => $feehead[24],
				'feehead25' => $feehead[25],
				'fromdate'  => $single,
				'todate'    => $double,
				'School_setting' => $School_setting,
				'feecollectiontype' => $feecollectiontype,
				'collectioncounter' => $collectioncounter,
				'account'	=> $account,
				'collection_type' => $collection_type
			);
			$this->load->view('Reports/sunilmonthly_collection_pdf', $array);

			$html = $this->output->get_output();
			$this->load->library('pdf');
			$this->dompdf->loadHtml($html);
			$this->dompdf->setPaper('A3', 'landscape');
			$this->dompdf->render();
			$this->dompdf->stream("Sunil Enterprises Monthly_None.pdf", array("Attachment" => 0));
		} else {
			$data1 = "dada";
		}
	}
}