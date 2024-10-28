<style type="text/css">
 .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td 
  {
    color: black;
  }
   .loader {
      position: fixed;
      top: 50%;
      left: 50%;
        border: 16px solid #f3f3f3; /* Light grey */
        border-top: 16px solid #3498db; /* Blue */
        border-radius: 50%;
        width: 120px;
        height: 120px;
        animation: spin 2s linear infinite;
      }

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
  .absent {
    background-color: #ff8793;
  }
  .present {
    background-color: #a3dba2;
  }
 /* .late_in {
    background-color: #ffb37c;
  }
  .before_out {
    background-color: #458ac6;
    color: white;
  }
  .late_in_before_out {
    background-color: #d61515;
    color: white;
  }*/
  .holiday {
    background-color: #e9eda6;
  }
  div.zabuto_calendar ul.legend>span
  {
    color: black;
    font-size: 15px;
    font-weight: bold;
  }
  .error{
    color: red;
  }
  .custom-box {
     padding: 5px 0; 
}
.panel-heading{
  background: #417396 !important;
  font-weight: bold;
}
.panel:hover,.panel-heading:hover{
  background: #2c4e66 !important;
}
</style>
  <!-- Content Wrapper. Contains page content -->
  <div style="padding: 15px 25px; background-color: white;border-top: 3px solid #5785c3;margin-top: 10px;">
    <?php if(in_array('editEmpDashboard', permission_data)){ ?>
      <?php
       $tot_employee = $employee[0]->tot_emp;
       $tot_present = count($emp_attendance);
       $tot_absent = $tot_employee - $tot_present;
     ?>
    <div class='row'>
    

      <a href="<?php echo base_url('payroll/dashboard/principal_dashboard/presentStudent'); ?>">
        <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
          <div class="panel panel-default" style="background: #3278ab !important;color: white;font-size: 13px">
            <div class="panel-heading">Student</div>
            <div class="panel-body">
              <table style="width: 100%;padding: 2px;">
                <tr>
                  <td>Total :</td> <td class="text-right"><?php echo count($student); ?></td>
                </tr>
                <tr>
                  <td>Present :</td> <td class="text-right"> <?php echo $tot_present_stu =  $totalStudentPresent['total_present_period_table']+$totalStudentPresent['total_present_daily_table']; ?> </td>
                </tr>
                <tr>
                  <td>Absent : </td> <td class="text-right"><?php echo count($student) - $tot_present_stu; ?></td>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </a>

      <a href="<?php echo base_url('Report/daily_monthlycollecion'); ?>">
        <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
          <div class="panel panel-default" style="background: #3278ab !important;color: white;font-size: 13px">
            <div class="panel-heading">Fees Collection</div>
            <div class="panel-body">
              <table style="width: 100%;padding: 2px;">
                <tr>
                  <td>Today Collection :</td> <td class="text-right"><?php echo ($todaycollection['total_amt']=='')?0:$todaycollection['total_amt']; ?></td>
                </tr>
                <tr>
                  <td>.</td>
                </tr>
                <tr>
                  <td>.</td>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </a>

      
    </div>
    <?php } ?>
  <div class="row">
    <div class="col-sm-12">
      <div class="" style="padding-bottom: 20px;">
        <section class="content">
          <?php if(in_array('editEmpDashboards', permission_data)){ ?>
            <form method="post" action="<?php echo base_url('payroll/dashboard/emp_dashboard'); ?>">
              <div class="row">
                <div class="col-sm-5">
                  <div class="form-group">
                    <label>Employee</label><span class="req">*</span>
                    <select class="form-control select2" name="emp_id" required="">
                      <option value="">Select Employee</option>
                      <?php foreach ($employeeList as $key => $value) { ?>
                        <option value="<?php echo $value['id']; ?>" <?php if(set_value('emp_id') == $value['id']){ echo "selected"; } ?>><?php echo $value['EMPID'].' '.$value['EMP_FNAME'].' '.$value['EMP_MNAME'].' '.$value['EMP_LNAME']; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="col-sm-2">
                  <div class="form-group">
                    <label></label>
                    <button class="btn btn-success form-control" type="submit" name="search"><i class="fa fa-search"></i> Search</button>
                  </div>
                </div>
              </div><hr>
            </form>
          <?php } ?>
          <div class="row">
            <div class="col-sm-6">
              <div class="panel panel-default" style="background: #edecec !important;color: black;font-size: 13px">
                <div class="panel-body">
                  <table class="table" style="border: 1px solid #b2b9c4;">
                    <tr style="background: #b2b9c4;">
                      <?php if($employeeData['profile_img'] == ''){ ?>
                        <td class="text-center" colspan="2"><img src="<?php echo base_url('assets/images/no_image.jpg'); ?>" class="img-circle" width="150" height="150" style="border: 2px solid #c6cad1;" alt="image"></td>
                      <?php } else { ?>
                        <td class="text-center" colspan="2"><img src="<?php echo base_url($employeeData['profile_img']); ?>" class="img-circle" width="150" height="150" style="border: 2px solid #c6cad1;" alt="image"></td>
                      <?php } ?>
                    </tr>
                    <tr>
                     <th colspan="2" class="text-center"><?php echo $employeeData['EMPID']; ?></th>
                    </tr>
                     <tr>
                     <th colspan="2" class="text-center"><?php echo strtoupper($employeeData['INITIALS'].' '.$employeeData['EMP_FNAME'].' ' .$employeeData['EMP_MNAME'].' ' .$employeeData['EMP_LNAME']); ?></th>
                    </tr>
                  </table>
                </div>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="panel panel-default" style="background: #edecec !important;color: black;font-size: 13px">
                <div class="panel-heading">Personal Details</div>
                <div class="panel-body">
                  <table class="table" style="border: 1px solid #b2b9c4;">
                    <tr>
                     <th>Employee ID</th>
                     <td><?php echo $employeeData['EMPID']; ?></td>
                    </tr>
                    <tr>
                      <th>Employee Name</th>
                      <td><?php echo strtoupper($employeeData['INITIALS'].' '.$employeeData['EMP_FNAME'].' ' .$employeeData['EMP_MNAME'].' ' .$employeeData['EMP_LNAME']); ?></td>
                    </tr>
                    <tr>
                      <th>Designation</th>
                      <td><?php echo $employeeData['designation_name']; ?></td>
                    </tr>
                    <tr>
                      <th>Mobile No</th>
                      <td><?php echo $employeeData['C_MOBILE']; ?></td>
                    </tr>
                    <tr>
                      <th>Date of Birth</th>
                      <td><?php echo date("d-M-Y", strtotime($employeeData['D_O_B'])); ?></td>
                    </tr>
                    <tr>
                      <th>Date of Joining</th>
                      <td><?php echo date("d-M-Y", strtotime($employeeData['D_O_J'])); ?></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- /.box -->
        </section>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-12">
      <div class="" style="padding-bottom: 20px;">
        <section class="content">
          <div class="row">
            <div class="col-sm-6" style="padding: 25px; background-color: white;">
              <div class="panel panel-default" style="background: #edecec !important;color: black;font-size: 13px">
                <div class="panel-heading">Attendance</div>
                <div class="panel-body">
                  <div class="full_calendar"></div>
                </div>
              </div>
            </div>
            <div class="col-sm-6" style="padding: 25px; background-color: white;">
              <div class="panel panel-default" style="background: #edecec !important;color: black;font-size: 13px">
                <div class="panel-heading">Leave Balance (Per Year)</div>
                <div class="panel-body">
                  <table class="table table-bordered" style="border: 1px solid #b2b9c4;">
                    <thead>
                      <tr>
                        <th style="background: #337ab7; color: white !important;">Leave Type</th>
                        <th style="background: #337ab7; color: white !important;">Total Leave</th>
                        <th style="background: #337ab7; color: white !important;">Consume Days </th>
                        <th style="background: #337ab7; color: white !important;">Leave Balance</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Casual Leave</td>
                        <td><?php echo $employeeData['CAS_LEAVE']; ?></td>
                        <td><?php if(!empty($cas_leave_balance))
                          {
                            echo $cas_leave_balance['leave_bal'];
                          }
                          else
                          {
                            echo '0';
                          } ?></td>
                        <td><?php
                          if(!empty($cas_leave_balance))
                          {
                            echo $employeeData['CAS_LEAVE'] - $cas_leave_balance['leave_bal'];
                          }
                          else
                          {
                            echo $employeeData['CAS_LEAVE'] - 0;
                          }
                         ?></td>
                      </tr>
                      <tr>
                        <td>Medical Leave</td>
                        <td><?php echo $employeeData['ML'];; ?></td>
                        <td><?php if(!empty($ml_balance))
                          {
                            echo $ml_balance['leave_bal'];
                          }
                          else
                          {
                            echo "0";
                          } ?></td>
                        <td><?php 
                          if(!empty($ml_balance))
                          {
                            echo $employeeData['ML'] - $ml_balance['leave_bal'];
                          }
                          else
                          {
                            echo $employeeData['ML'] - 0;
                          } ?></td>
                      </tr>
                      <tr>
                        <td>Earned Leave</td>
                        <td><?php echo $employeeData['EL'];; ?></td>
                        <td><?php if(!empty($el_balance))
                          {
                            echo $el_balance['leave_bal'];
                          }
                          else
                          {
                            echo "0";
                          } ?></td>
                        <td><?php 
                          if(!empty($el_balance))
                          {
                            echo $employeeData['EL'] - $el_balance['leave_bal'];
                          }
                          else
                          {
                            echo $employeeData['EL'] - 0;
                          }
                         ?></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- /.box -->
        </section>
      </div>
    </div>
  </div>
</div><br><br>

<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background: #205dc1;color: white;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Remarks Details - (<span class="datehead"></span>)</h4>
      </div>
      <form id="createForm">
        <input type="hidden" name="date" class="datehead">
        <input type="hidden" name="emp_id" value="<?php echo $emp_id; ?>">
        <div class="modal-body">
          <div class="row"> 
            <div class="col-sm-12">
              <div class="form-group">
                <label>Remarks (Why you are either Late In or Before Out)</label><span class="req">*</span>
                <textarea name="remarks" id="remarks_deails" class="form-control"></textarea>
              </div>
            </div>
          </div> 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" id="save_btn">Save</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<div class="loader"></div>

<script type="text/javascript">
  $('.loader').hide();

  var emp_id = '<?php echo $emp_id; ?>';
  $(".full_calendar").zabuto_calendar({
      today: false,
      cell_border: true,
      weekstartson: 0,
      action: function () {
          return myDateFunction(this.id, false);
      },
      ajax: {
          url: "<?php echo base_url('payroll/dashboard/emp_dashboard/getEventData/'); ?>"+emp_id,
          modal: true,
      },
      nav_icon: {
        prev: '<i class="fa fa-chevron-circle-left"></i>',
        next: '<i class="fa fa-chevron-circle-right"></i>'
      },
      // limit months navigation to a specific range
       legend: [
        {
          type: "block",
          label: "Present",
          classname: "present"
        },
        // {
        //   type: "block",
        //   label: "Late IN",
        //   classname: "late_in"
        // },
        // {
        //   type: "block",
        //   label: "Before Out",
        //   classname: "before_out"
        // },
        // {
        //   type: "block",
        //   label: "Late IN Before OUT",
        //   classname: "late_in_before_out"
        // },
        {
          type: "block",
          label: "Holiday",
          classname: "holiday"
        },
      ],
    });

  $('.select2').select2();

   $( document).ajaxComplete(function() {
      // Required for Bootstrap tooltips in DataTables
      $('[data-toggle="tooltip"]').tooltip({
          "html": true,
          "delay": {"show": 10, "hide": 0},
      });
  });

   function myDateFunction(id)
   {
      var date = $("#" + id).data("date");
      $('.datehead').html(date);
      $('.datehead').val(date);
      $.ajax({
        url: "<?php echo base_url('payroll/dashboard/emp_dashboard/getRemarks'); ?>",
        type: "post",
        data: {date:date,emp_id:emp_id},
        dataType: "json",
        beforeSend:function()
        {
          $('.loader').show();
          $('body').css('opacity', '0.5');
        },
        success:function(response)
        {
          $('.loader').hide();
          $('body').css('opacity', '1.0');
          if(response == 1)
          {
            swal({title:"You have not punched on this date",type:"warning"});
          }
          else
          {
            if(response.REMARKS != '')
            {
              $('#remarks_deails').val(response.REMARKS);
            }
            $('#myModal').modal('show');
          }
        }
      });
   }

   //validation of new shift creation
$(document).ready(function () {
    $('#createForm').validate({ // initialize the plugin
        rules: {
            remarks: {
                required: true
            },
        },
        submitHandler: function (form) { // for demo 
             if ($(form).valid()) 
                 form.submit(); 
             return false; // prevent normal form posting
        }
    });
});

//creating new shift
 $("#save_btn").on("click", function(event){
  $("#createForm").validate();
  if ($('#createForm').valid())
  {
    event.preventDefault();
     $.ajax({
      url: "<?php echo base_url('payroll/dashboard/emp_dashboard/updateRemarks'); ?>",
      type: "POST",
      data: $("#createForm").serialize(),
      dataType: 'json',
       beforeSend:function()
        {
          $('.loader').show();
          $('body').css('opacity', '0.5');
        },
      success: function(response){
        $('.loader').hide();
        $('body').css('opacity', '1.0');
        if(response.msg == 1)
        {
          $('#createForm')[0].reset();
          $('#myModal').modal('hide');
          swal({title: "Remarks Updated Successfully", text: "Remarks Updated Successfully", type: "success"},
          );          
        }
        else
        {
          swal("Failed !");
        }
      }
    });
   }
});

 $('#myModal').on('hidden.bs.modal', function (e) {
  $('#createForm')[0].reset();
})
</script>