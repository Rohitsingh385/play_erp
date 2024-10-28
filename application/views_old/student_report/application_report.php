<style>
    .table>thead>tr>th,
    .table>tbody>tr>th,
    .table>tfoot>tr>th,
    .table>thead>tr>td,
    .table>tbody>tr>td,
    .table>tfoot>tr>td {
        white-space: nowrap !important;
    }
    .breadcrumb>li+li:before {
		content: "";
	}
</style>
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Application Form</a> <i class="fa fa-angle-right"></i></li>
    <li class="breadcrumb-item" style="float: right;padding:2px"><i class="fa fa-angle-left"></i> <a href="<?php echo base_url('payroll/dashboard/emp_dashboard'); ?>" style="font-size:18px;">Back </a></li>
</ol>

<table class="table" id="example">
    <thead>
        <tr>
            <th>Sl No.</th>
            <th>Student Name</th>
            <th>Father Name</th>
            <th>Class</th>
            <th>Mobile Number</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        foreach ($data as $key => $value) {
        ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $value->name; ?></td>
                <td><?php echo $value->father_name; ?></td>
                <td><?php echo $value->class; ?></td>
                <td><?php echo $value->number; ?></td>
                <td><?php echo $value->age; ?></td>
                <td><?php echo $value->address1; ?></td>
                <td>
                    <?php if ($value->status == 'pending') { ?>
                        <button class="btn btn-primary btn-sm "><a href="" class="text-white">pending</a></button>
                        <button class="btn btn-danger btn-sm "><a href="" class="text-white">not interested</a></button>
                        <button  class="btn btn-warning btn-sm callbackBtn">call back</button>

                    <?php } else { ?>
                        <button class="btn btn-primary btn-sm" disabled><a href="" class="text-white">pending</a></button>
                        <button class="btn btn-danger btn-sm" disabled><a href="" class="text-white">not interested</a></button>
                        <button id="" class="btn btn-warning btn-sm">call back</button>
                    <?php } ?>
                </td>
            </tr>
        <?php
            $i++;
        }
        ?>
    </tbody>
</table>

<!-- Modal HTML markup -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Call Back</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Add your modal content here -->
                <h2>Message</h2>
                <textarea name="" id="" cols="60" rows="5"></textarea>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>

<!-- Include jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        // Handle button click event
        $('.callbackBtn').click(function() {
            // Show the modal
            $('#myModal').modal('show');
        });
    });
</script>
