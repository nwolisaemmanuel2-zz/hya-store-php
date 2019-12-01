
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <a href="" class="navbar-brand">KOMFO ANOKYE ICT ADMIN</a>
    <ul class="nav navbar-nav">

        <!-- Menu Items -->

        <li><a href="index.php">My Dashboard</a></li>
        <li><a href="brands.php">Computer Brands</a></li>
        
        <li><a href="categories.php">Location/Unit</a></li>
        <li class="dropdown" >
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hardware</b>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
             <li><a href="hardware.php">System Unit</a></li>
              <li><a href="ups.php">UPS</a></li>
              <li><a href="photocopy.php">Photocopy</a></li>
              <li><a href="printer.php">Printer</a></li>
              <li><a href="">Laptop</a></li>
          </ul>
      </li>
      <!--  <li><a href="repair.php">Repair</a></li>-->
        <li class="dropdown" >
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Repaired Menu</b>
        	<span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="repair.php">Hardware</a></li>
        	   <li><a href="software.php">Software</a></li>
             <li><a href="network.php">Network</a></li>
        	</ul>
      </li>

        <?php if(has_permission('admin')):?>
          <li><a href="archived.php">Archived</a></li>
        <li class="dropdown" >
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Account Setting</b>
        	<span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
          <li><a href="users.php">Create User Account</a></li>
        	   <li><a href="change_password.php">Change Password</a></li>
        	</ul>
      </li>
      <li class="dropdown" >
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Report</b>
        <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" role="menu">

            <li><a href="search.php">Repaired Hardware</a></li>
            <li><a href="logout.php">Repaired Software</a></li>
            <li><a href="logout.php">Repaired Network</a></li>
        </ul>
    </li>
        <?php endif;?>
        <li class="dropdown" >
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hello <b><?=$user_data['first'];?></b>
        	<span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">

        			<li><a href="logout.php">Log Out</a></li>
        	</ul>
      </li>
  </div>
</nav>
</br></br></br></br></br></br>
