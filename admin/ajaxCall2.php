<?php

    include('../includes/dbconnection.php');
    include('../includes/session.php');


    $fid = intval($_GET['fid']);//gradeId

        $queryss=mysqli_query($con,"select * from tbldepartment where Id = '$departmentId' and facultyId=".$fid." ORDER BY departmentName ASC");                        
        $countt = mysqli_num_rows($queryss);

        if($countt > 0){                       
        echo '<label for="select" class=" form-control-label">Department</label>
        <select required name="departmentId" onchange="showLecturer(this.value)" class="custom-select form-control">';
        echo'<option value="">--Select Department--</option>';
        while ($row = mysqli_fetch_array($queryss)) {
        echo'<option value="'.$row['Id'].'" >'.$row['departmentName'].'</option>';
        }
        echo '</select>';
        }

?>

