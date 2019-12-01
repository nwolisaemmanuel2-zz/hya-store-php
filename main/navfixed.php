<?php error_reporting(0);?>
 <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#"><b>OMAN ENTERPRISE</b></a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li><a><i class="icon-user icon-large"></i> Hello <strong><?=$user_data['first'];?> <?=$user_data['last'];?>!</strong></a></li>
			 <li><a> <i class="icon-calendar icon-large"></i>

								<?php

								$Today = date('y:m:d',mktime());
								$new = date('l, F d, Y', strtotime($Today));
								echo $new;
								?>

				</a></li>
        <?php if(has_permission('admin')):?>
   <li role="presentation"><a href="users.php">Account Users</a></li>
   <?php endif;?>

          <li role="presentation"><a href="change_password.php">Change Password</a></li>
          <!-- <li role="presentation"><a href="logout.php">Log Out</a></li>
             <li><a href="../index.php"><font color="red"><i class="icon-off icon-large"></i></font> Log Out</a></li>-->
<li><a href="logout.php"><font color="red"><i class="icon-off icon-large"></i></font> Log Out</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
