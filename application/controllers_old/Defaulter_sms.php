<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Defaulter_sms extends MY_Controller{
	public function __construct(){
		parent:: __construct();
		$this->loggedOut();
	    $this->load->model('Farheen','farheen');
	}
	
	public function defaulter_classwise()
	{
		$viewupto = $this->input->post('viewupto');
		$classs = $this->input->post('classs');
		$sec = $this->input->post('sec');
		if($sec == 'All')
		{
		  $student = $this->db->query("select ADM_NO,FIRST_NM,ROLL_NO,C_MOBILE,APR_FEE,MAY_FEE,JUNE_FEE,JULY_FEE,AUG_FEE,SEP_FEE,OCT_FEE,NOV_FEE,DEC_FEE,JAN_FEE,FEB_FEE,MAR_FEE,DISP_CLASS,DISP_SEC,FEB_ATT,C_MOBILE,ifnull((Select sum(total) from previous_year_feegeneration where adm_no=st.ADM_NO),0) as previous_dues from student as st where CLASS='$classs' and disp_sec<>'Z' AND student_status='ACTIVE' order by class,sec,first_Nm asc")->result();
		}
		else
		{
		  $student = $this->db->query("select ADM_NO,FIRST_NM,ROLL_NO,C_MOBILE,APR_FEE,MAY_FEE,JUNE_FEE,JULY_FEE,AUG_FEE,SEP_FEE,OCT_FEE,NOV_FEE,DEC_FEE,JAN_FEE,FEB_FEE,MAR_FEE,DISP_CLASS,DISP_SEC,FEB_ATT,C_MOBILE,ifnull((Select sum(total) from previous_year_feegeneration where adm_no=st.ADM_NO),0) as previous_dues from student as st where CLASS='$classs' AND SEC='$sec' and student_status='ACTIVE' order by class,sec,first_Nm asc")->result();
		}
		
		
		$student_cnt = count($student);
		
		if($viewupto=='APR')
		{
			$monthin = array('APR');
			$loop_cnt = 1;
		}
		elseif($viewupto=='MAY')
		{
			$monthin = array('APR','MAY');
			$loop_cnt = 2;
		}
		elseif($viewupto=='JUN')
		{
			$monthin = array('APR','MAY','JUN');
			$loop_cnt = 3;
		}
		elseif($viewupto=='JUL')
		{
			$monthin = array('APR','MAY','JUN','JUL');
			$loop_cnt = 4;
		}
		elseif($viewupto=='AUG')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG');
			$loop_cnt = 5;
		}
		elseif($viewupto=='SEP')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP');
			$loop_cnt = 6;
		}
		elseif($viewupto=='OCT')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT');
			$loop_cnt = 7;
		}
		elseif($viewupto=='NOV')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV');
			$loop_cnt = 8;
		}
		elseif($viewupto=='DEC')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC');
			$loop_cnt = 9;
		}
		elseif($viewupto=='JAN')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN');
			$loop_cnt = 10;
		}
		elseif($viewupto=='FEB')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN','FEB');
			$loop_cnt = 11;
		}
		elseif($viewupto=='MAR')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN','FEB','MAR');
			$loop_cnt = 12;
		}
		else{
			
		}
		
		 ?>
<form method="post" action="<?php echo base_url('Defaulter_sms/view_chk_sms'); ?>">
  <button id='generate_btn' class='btn btn-danger btn-lg' disabled>Send SMS</button><br><br>
		<table class='table table-bordered' id='example'>
		  <thead>
			  <tr>
			  <th style='background:#337ab7; color:#fff !important;'><input type="checkbox" id='viewCheckAll'></th>
	          <th style="background: #337ab7; color: white !important;">SNO</th>
	          <th style="background: #337ab7; color: white !important;">Mobile No.</th>
	          <th style="background: #337ab7; color: white !important;">SMS</th>
	        </tr>
		  </thead>
	  <tbody>
	 
	  <?php
	   $month_print = '';
	   $str_month = '';
	   $mon = '';
	   $total_amount = 0;
	   $unpaid_mnth = 0;
	   $previous_duess = 0;
	   $grand_tot=0;
	   $grand_tot_prev=0;
	   $grand_tot_currnt=0;
	   $c=1;
	   $pre=0;
	    for($i=0;$i<$student_cnt;$i++)
		{
			 $str_month = '';
			$month_print = '';
			$adm_no = $student[$i]->ADM_NO;
			$class_sec = $student[$i]->DISP_CLASS ."-".$student[$i]->DISP_SEC;
			$feb_att=$student[$i]->FEB_ATT;
			    $MON_FEE[0] = $student[$i]->APR_FEE;
				$MON_FEE[1] = $student[$i]->MAY_FEE;
				$MON_FEE[2] = $student[$i]->JUNE_FEE;
				$MON_FEE[3] = $student[$i]->JULY_FEE;
				$MON_FEE[4] = $student[$i]->AUG_FEE;
				$MON_FEE[5] = $student[$i]->SEP_FEE;
				$MON_FEE[6] = $student[$i]->OCT_FEE;
				$MON_FEE[7] = $student[$i]->NOV_FEE;
				$MON_FEE[8] = $student[$i]->DEC_FEE;
				$MON_FEE[9] = $student[$i]->JAN_FEE;
				$MON_FEE[10] = $student[$i]->FEB_FEE;
				$MON_FEE[11] = $student[$i]->MAR_FEE;
				@$previous_duess = $student[$i]->previous_dues;
					
		        for($l=0;$l<$loop_cnt;$l++)
				{
					if($MON_FEE[$l]=='N/A' OR  $MON_FEE[$l]=='')
					{
						$month_print.= $monthin[$l].',';
						if($str_month!=''){
						  $str_month = $str_month.",'". $monthin[$l]."'";
							
						}else{
							$str_month ="'".$monthin[$l]."'";
						}
					}
					
				}
				if(!empty($str_month))
				{
					$unpaid_month = $this->farheen->select('feegeneration','sum(TOTAL)total',"ADM_NO='$adm_no' AND Month_NM in($str_month)");
					$unpaid_mnth = $unpaid_month[0]->total;
					
				}
				
				$total_amount = $previous_duess + $unpaid_mnth;
				
				if($total_amount>0)
				{
				 $grand_tot_prev= $grand_tot_prev+$previous_duess;
                 $grand_tot_currnt=$grand_tot_currnt+$unpaid_mnth;
                 $grand_tot=$grand_tot+$total_amount;				 
				
		?>			
		   <tr id='snd_<?php echo $c; ?>'>
			   
			   <?php  
			   if($previous_duess>0)
			   {
				   $mntt = 'PREV.DUES'.','.$month_print;
				   $month_upto = rtrim($mntt,',');
				  
			   }
			   else{
				   $month_upto = rtrim($month_print,',');
				  
			   }
			  
			   ?>
			   
			   <td><input type="checkbox" class='viewCheck' name="stu_mob[]" value='<?php echo $student[$i]->C_MOBILE; ?>'></td>
			   <td><?php echo $c; ?></td>
			   <td><?php echo $student[$i]->C_MOBILE; ?></td>
			   
			   <?php
					if($feb_att=="1")
						
					{
					$ann="";
					}
					else
					{
					//$ann="ANNUAL FEES,";
						$ann="";
					}
					?>
			   <td>
			   <input type='hidden' name='msg[<?php echo $student[$i]->C_MOBILE; ?>]' value='Dear Parent, Fee for your ward <?php echo $student[$i]->FIRST_NM .'(Adm. No.-'.$student[$i]->ADM_NO .')'; ?>  is due for the month of ( <?php echo $ann.' '.$month_upto; ?> ). Kindly Pay Fee at the earliest. Ignore, if already paid. Regards, Bachpan Anantpur'>
				Dear Parent, Fee for your ward <?php echo $student[$i]->FIRST_NM .'(Adm. No.-'.$student[$i]->ADM_NO .')'; ?>  is due for the month of ( <?php echo $ann.' '.$month_upto; ?> ).Kindly Pay Fee at the earliest. Ignore, if already paid. Regards, Bachpan Anantpur
			   </td>
			   
		   </tr>
		   <?php
					$c++;	
		   }
            
             $total_amount = 0;
             $unpaid_mnth = 0;	
             $previous_duess = 0;			 
	   }
	   ?>
	   </tbody>
	   
	  </table><br>
	  </form>
	  <script>
	   $(function () {
        		   $('#example').DataTable({
					'paging': false,
					'lengthChange': false,
					'searching': true,
					'ordering': false,
					'info': false,
					'autoWidth': false,
					dom: 'Bfrtip',
					footer: true,
					buttons: [

						{
							extend: 'excelHtml5',
							title: 'All Class wise Fee Head Wise Defaulter Reports',

						},

					]
				})
      });
		  
		  $('#viewCheckAll').click(function(){
           if($(this).prop("checked")) {
            $(".viewCheck").prop("checked", true);
			$("#generate_btn").prop('disabled',false);
           } else {
            $(".viewCheck").prop("checked", false);
			$("#generate_btn").prop('disabled',true);
        }                
    });
		  $('.viewCheck').click(function(){
           if($(".viewCheck").length == $(".viewCheck:checked").length) {
            $("#viewCheckAll").prop("checked", true);
			$("#generate_btn").prop('disabled',true);
           }else {
            $("#viewCheckAll").prop("checked", false); 
            $("#generate_btn").prop('disabled',false);			
        }
    });
	  </script>
	  <?php
	}
	
	public function defaulter_allclasswise()
	{
		$viewupto = $this->input->post('viewupto');
		$classs = $this->input->post('classs');
		$sec = $this->input->post('sec');
		$student = $this->db->query("select ADM_NO,FIRST_NM,ROLL_NO,C_MOBILE,APR_FEE,MAY_FEE,JUNE_FEE,JULY_FEE,AUG_FEE,SEP_FEE,OCT_FEE,NOV_FEE,DEC_FEE,JAN_FEE,FEB_FEE,MAR_FEE,DISP_CLASS,DISP_SEC,FEB_ATT,C_MOBILE, ifnull((Select sum(total) from previous_year_feegeneration where adm_no=st.ADM_NO),0) as previous_dues from student as st where student_status='ACTIVE' and disp_Sec<>'Z' order by class,sec,first_Nm asc")->result();
		
		$student_cnt = count($student);
		
		if($viewupto=='APR')
		{
			$monthin = array('APR');
			$loop_cnt = 1;
		}
		elseif($viewupto=='MAY')
		{
			$monthin = array('APR','MAY');
			$loop_cnt = 2;
		}
		elseif($viewupto=='JUN')
		{
			$monthin = array('APR','MAY','JUN');
			$loop_cnt = 3;
		}
		elseif($viewupto=='JUL')
		{
			$monthin = array('APR','MAY','JUN','JUL');
			$loop_cnt = 4;
		}
		elseif($viewupto=='AUG')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG');
			$loop_cnt = 5;
		}
		elseif($viewupto=='SEP')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP');
			$loop_cnt = 6;
		}
		elseif($viewupto=='OCT')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT');
			$loop_cnt = 7;
		}
		elseif($viewupto=='NOV')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV');
			$loop_cnt = 8;
		}
		elseif($viewupto=='DEC')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC');
			$loop_cnt = 9;
		}
		elseif($viewupto=='JAN')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN');
			$loop_cnt = 10;
		}
		elseif($viewupto=='FEB')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN','FEB');
			$loop_cnt = 11;
		}
		elseif($viewupto=='MAR')
		{
			$monthin = array('APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC','JAN','FEB','MAR');
			$loop_cnt = 12;
		}
		else{
			
		}
		
		 ?>
<form method="post" action="<?php echo base_url('Defaulter_sms/view_chk_sms'); ?>">
  <button id='generate_btn' class='btn btn-success btn-lg' disabled>Send SMS</button><br><br>
		<table class='table table-bordered' id='example'>
		  <thead>
			  <tr>
			  <th style='background:#337ab7; color:#fff !important;'><input type="checkbox" id='viewCheckAll'></th>
	          <th style="background: #337ab7; color: white !important;">SNO</th>
	          <th style="background: #337ab7; color: white !important;">Mobile No.</th>
	         
	          <th style="background: #337ab7; color: white !important;">SMS</th>
	         
	        </tr>
		  </thead>
	  <tbody>
	 
	  <?php
	   $month_print = '';
	   $str_month = '';
	   $mon = '';
	   $total_amount = 0;
	   $unpaid_mnth = 0;
	   $previous_duess = 0;
	   $grand_tot=0;
	   $grand_tot_prev=0;
		$feb_att=0;
	   $grand_tot_currnt=0;
	   $c=1;
	   $pre=0;
	    for($i=0;$i<$student_cnt;$i++)
		{
			 $str_month = '';
			$month_print = '';
			$adm_no = $student[$i]->ADM_NO;
			$class_sec = $student[$i]->DISP_CLASS ."-".$student[$i]->DISP_SEC;
			$feb_att= $student[$i]->FEB_ATT;
			    $MON_FEE[0] = $student[$i]->APR_FEE;
				$MON_FEE[1] = $student[$i]->MAY_FEE;
				$MON_FEE[2] = $student[$i]->JUNE_FEE;
				$MON_FEE[3] = $student[$i]->JULY_FEE;
				$MON_FEE[4] = $student[$i]->AUG_FEE;
				$MON_FEE[5] = $student[$i]->SEP_FEE;
				$MON_FEE[6] = $student[$i]->OCT_FEE;
				$MON_FEE[7] = $student[$i]->NOV_FEE;
				$MON_FEE[8] = $student[$i]->DEC_FEE;
				$MON_FEE[9] = $student[$i]->JAN_FEE;
				$MON_FEE[10] = $student[$i]->FEB_FEE;
				$MON_FEE[11] = $student[$i]->MAR_FEE;
				@$previous_duess = $student[$i]->previous_dues;
					
		        for($l=0;$l<$loop_cnt;$l++)
				{
					if($MON_FEE[$l]=='N/A' OR  $MON_FEE[$l]=='')
					{
						$month_print.= $monthin[$l].',';
						if($str_month!=''){
						  $str_month = $str_month.",'". $monthin[$l]."'";
							
						}else{
							$str_month ="'".$monthin[$l]."'";
						}
					}
					
				}
				if(!empty($str_month))
				{
					$unpaid_month = $this->farheen->select('feegeneration','sum(TOTAL)total',"ADM_NO='$adm_no' AND Month_NM in($str_month)");
					$unpaid_mnth = $unpaid_month[0]->total;
					
				}
				
				$total_amount = $previous_duess + $unpaid_mnth;
				
				if($total_amount>0)
				{
				 $grand_tot_prev= $grand_tot_prev+$previous_duess;
                 $grand_tot_currnt=$grand_tot_currnt+$unpaid_mnth;
                 $grand_tot=$grand_tot+$total_amount;				 
				
		?>			
		   <tr>
			   
			    
			   <?php  
			   if($previous_duess>0)
			   {
				   $mntt = 'PREV.DUES'.','.$month_print;
				   $month_upto = rtrim($mntt,',');
				  
			   }
			   else{
				   $month_upto = rtrim($month_print,',');
				  
			   }
			  
			   ?>
			   
			   <td><input type="checkbox" class='viewCheck' name="stu_mob[]" value='<?php echo $student[$i]->C_MOBILE; ?>'></td>
			   <td><?php echo $c; ?></td>
			   <td><?php echo $student[$i]->C_MOBILE; ?></td>
			    <?php
					
					if($feb_att=="1")
						
					{
					$ann="";
					}
					elseif($feb_att==0)
					{
					//$ann="ANNUAL FEES";
						$ann="";
					}
					?>
			  
			   <td>
					<input type='hidden' name='msg[<?php echo $student[$i]->C_MOBILE; ?>]' value='Dear Parent, Fee for your ward <?php echo $student[$i]->FIRST_NM .'(Adm. No.-'.$student[$i]->ADM_NO .')'; ?> is due for the month of ( <?php echo $month_upto,','.' '.$ann; ?> ). Kindly Pay Fee at the earliest. Ignore, if already paid. Regards, Bachpan Anantpur'>
					
				    Dear Parent, Fee for your ward <?php echo $student[$i]->FIRST_NM .'(Adm. No.-'.$student[$i]->ADM_NO .')' ?> is due for the month of ( <?php echo $month_upto,','.' '.$ann; ?> ). Kindly Pay Fee at the earliest. Ignore, if already paid. Regards, Bachpan Anantpur
			   </td>
			   
		   </tr>
		   <?php
					$c++;	
		   }
            
             $total_amount = 0;
             $unpaid_mnth = 0;	
             $previous_duess = 0;			 
	   }
	   ?>
	   </tbody>
	   
	  </table><br>
</form>
	  <script>
	 $(function () {
        $('#example').DataTable({
					'paging': false,
					'lengthChange': false,
					'searching': true,
					'ordering': false,
					'info': false,
					'autoWidth': false,
					dom: 'Bfrtip',
					footer: true,
					buttons: [

						{
							extend: 'excelHtml5',
							title: 'All Class wise Fee Head Wise Defaulter Reports',

						},

					]
				})
      });
		  
		  $('#viewCheckAll').click(function(){
           if($(this).prop("checked")) {
            $(".viewCheck").prop("checked", true);
			$("#generate_btn").prop('disabled',false);
           } else {
            $(".viewCheck").prop("checked", false);
			$("#generate_btn").prop('disabled',true);
        }                
    });
		  $('.viewCheck').click(function(){
           if($(".viewCheck").length == $(".viewCheck:checked").length) {
            $("#viewCheckAll").prop("checked", true);
			$("#generate_btn").prop('disabled',true);
           }else {
            $("#viewCheckAll").prop("checked", false); 
            $("#generate_btn").prop('disabled',false);			
        }
    });
	  </script>
	  <?php
	}
	
	public function send_msg(){
		$template_id        = '1407162375069950769';
	    $mobile = $this->input->post('mbl');
		$nm = $this->input->post('nm');
		$mnth = $this->input->post('mnth');
		$message = "Dear Parents,\r\nFee for your ward $nm is due for the month of ($mnth). Kindly Pay Fee at the earliest. Ignore, if already paid. Regards. Bachpan Anantpur";
				
		$this->sms_lib->sendSMS($mobile,$message,$template_id);
	}
	
	public function view_chk_sms(){
		$template_id = '1407162375069950769';
		$stu_mob = $this->input->post('stu_mob[]');
		foreach($stu_mob as $key => $val){
			$msg = $this->input->post("msg[$val]");
			if($val != ''){
				$this->sms_lib->sendSMS($val,$msg,$template_id);	
			}
		}
		$this->session->set_flashdata('msg','<div class="alert alert-success"><strong>Success!</strong> Message Send Successfully..!</div>');
		redirect('Report/Fee_Defaulter_sms');
	}
}	

