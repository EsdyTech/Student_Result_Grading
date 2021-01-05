
<?php

$query = mysqli_query($con,"select * from tblstudent where matricNo='$matricNo'");
$row = mysqli_fetch_array($query);
$fullName = $row['firstName'].' '.$row['lastName'];
$departmentId = $row['departmentId'];
$facultyId = $row['facultyId'];
$levelId = $row['levelId'];

?>
<aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.php"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                    <li class="menu-title">&nbsp;&nbsp;&nbsp;<?php echo $fullName;?></li>
                    <!-- <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-book"></i>Courses</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-eye"></i><a href="studentCourses.php">View Courses</a></li>
                        </ul>
                    </li> -->

                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-book"></i>Result</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-eye"></i><a href="studentResult.php">View Result</a></li>
                             <li><i class="fa fa-eye"></i><a href="viewFinalResult.php">Final Result</a></li>
                             <li><i class="fa fa-eye"></i><a href="gradingCriteria.php">Grading Criteria</a></li>
                        </ul>
                    </li>
                                   
                    <!-- <li class="menu-title">Profile</li>/.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-user"></i>Profile</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="changePassword.php">Change Password</a></li>
                            </li>
                        </ul>
                         <li>
                        <a href="logout.php"> <i class="menu-icon fa fa-close"></i>Logout </a>
                    </li>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>