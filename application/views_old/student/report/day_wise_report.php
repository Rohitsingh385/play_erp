<style>
  button.dt-button, div.dt-button, a.dt-button {
	  padding:2px;
  }
  .dataTables_paginate .paginate_button.current {
	 padding:2px;  
  }
</style>
<form method="post" action="<?php echo base_url('student/report/Report/download_attendance_report'); ?>">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-lg-12">
				<input type="hidden" value="<?php echo  $dt ?>" name="dt">
				<input type="hidden" value="<?php echo  $classs; ?>" name="class">
				<input type="hidden" value="<?php echo  $sec; ?>" name="sec">
				<input type="hidden" value="<?php echo  $rpt_typ; ?>" name="rpt_typ">

				<button class="btn pull-right"><i class="fa fa-file-pdf-o"></i>PDF</button>
		</div>
	</div>
</form><br />
<table class='table' id='example'>
<thead>
  <tr>
	<th style="background:#5785c3; color:#fff">Adm No.</th>
	<th style="background:#5785c3; color:#fff">Stu Name</th>
	<th style="background:#5785c3; color:#fff">Roll</th>
	<th style="background:#5785c3; color:#fff">Class</th>
	<th style="background:#5785c3; color:#fff">Sec</th>
	<th style="background:#5785c3; color:#fff">Attendance</th>
	<th style="background:#5785c3; color:#fff">Mobile</th>
  </tr>
</thead>  
<tbody>
  <?php
	if($fetch_data){
		foreach($fetch_data as $data){
			?>
			  <tr>
				<td><?php echo $data->admno; ?></td>
				<td><?php echo $data->stunm; ?></td>
				<td><?php echo $data->roll; ?></td>
				<td><?php echo $data->classnm; ?></td>
				<td><?php echo $data->secnm; ?></td>
				<?php
				  if($data->att_status == 'P'){
				?>
				    <td style="color:green;"><b><?php echo $data->att_status; ?></b></td>
				<?php
				  }else if($data->att_status == 'A'){
					?>
					<td style="color:red;"><b><?php echo $data->att_status; ?></b></td>
					<?php
				  }else{
					?>
					<td style="color:orange; cursor:pointer"><b data-toggle="tooltip" data-placement="bottom" title='<?php echo $data->remarks; ?>'><?php echo $data->att_status; ?></b></td>
					<?php
				  }
				?>
				<td><?php echo $data->cmob; ?></td>
			  </tr>
			<?php
		}
	}
  ?>
</tbody>  
</table>

