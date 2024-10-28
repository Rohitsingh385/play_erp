<style>
  button.dt-button, div.dt-button, a.dt-button {
	  padding:2px;
  }
  .dataTables_paginate .paginate_button.current {
	 padding:2px;  
  }
  .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
		padding:5px 5px!important;
		white-space: nowrap !important;
	}
</style>
<form method="post" action="<?php echo base_url('student/report/Report/download_attendance_report_month'); ?>">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-lg-12">
				<input type="hidden" value="<?php echo  $classs; ?>" name="classs">
				<input type="hidden" value="<?php echo  $sec; ?>" name="sec">
				<input type="hidden" value="<?php echo  $month; ?>" name="month">

				<button class="btn pull-right"><i class="fa fa-file-pdf-o"></i>PDF</button>
		</div>
	</div>
</form><br />
<table class='table' id='example'>
<thead>
  <tr>
	<th style="background:#5785c3; color:#fff">Adm. No.</th>
	<th style="background:#5785c3; color:#fff">Stu Name</th>
	<th style="background:#5785c3; color:#fff">Roll</th>
	<th style="background:#5785c3; color:#fff">Class</th>

	<th style="background:#5785c3; color:#fff">Mobile</th>
	<?php for ($i=1; $i <= $total_days; $i++) { 
	  $date = $current_year.'-'.$mnth.'-'.$i;
	  ?>
	  <th style="background: #5785c3 !important; color: white !important;"><?php echo $i.'<br> '.date("D", strtotime($date)); ?></th>
	<?php } ?>  
  </tr>
</thead>  
<tbody>
  <?php
    foreach($resultList as $key => $value){ ?>
		<tr>
		  <td><?php echo $value['admno']; ?></td>
		  <td><?php echo $value['name']; ?></td>
		  <td><?php echo $value['roll']; ?></td>
		  <td><?php echo $value['class']; ?></td>
		
		  <td><?php echo $value['mobile']; ?></td>
		  <?php for ($k=1; $k <= $total_days; $k++) { ?>
			  <td>
			  	<?php 
			  		if($value[$k]['status'] == 'H')
			  		{
			  			echo '<strong><span style="color:#ad7e44;">'.$value[$k]['status'].'</span></strong>'; 
			  		}
			  		elseif($value[$k]['status'] == 'P' || $value[$k]['status'] == 'HD')
			  		{
			  			echo '<strong><span style="color:green;">'.$value[$k]['status'].'</span></strong>';
			  		}
			  		elseif($value[$k]['status'] == 'A')
			  		{
			  			echo '<strong><span style="color:red;">'.$value[$k]['status'].'</span></strong>';
			  		}else
			  		{
			  			echo '<strong>'.$value[$k]['status'].'</strong>';
			  		}
			  	?></td>
		  <?php } ?> 
		</tr>
	<?php }
  ?>
</tbody>  
</table>

<script>
   $('[data-toggle="tooltip"]').tooltip();   
   $('#example').DataTable({
		dom: 'Bfrtip',
		buttons: [
			// {
				// extend: 'copyHtml5',
				// title: 'Student Details',
				// exportOptions: {
					// columns: [ 0, 1, 2, 3, 4, 5 , 6, 7]
				// }
			// },
			{
				extend: 'excelHtml5',
				title: 'Student Details',
			},
			// {
				// extend: 'csvHtml5',
				// title: 'Student Details',
				// exportOptions: {
					// columns: [ 0, 1, 2, 3, 4, 5 , 6, 7]
				// }
			// },
			// {
				// extend: 'pdfHtml5',
				// title: 'Student Details',
			// },
		]
	});
</script>