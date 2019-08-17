<%@ Page Language="VB" AutoEventWireup="false" CodeFile="table.aspx.vb" Inherits="Assets2_admin_table" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Halaman Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
	    new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<form id="form1" runat="server">
	<div class="main-content">
	
								
	<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
					<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
							<li>
								<a href="http://localhost:58646/WebsiteAktaKelahiran/Assets2/admin/Admin.aspx" class="active"><i class="fa fa-home nav_icon"></i>
                                 Dashboard
                                
                               </a>
							</li>
							
							<li>
								<a href="#"><i class="fa fa-book nav_icon"></i>Data <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="http://localhost:58646/WebsiteAktaKelahiran/Assets2/admin/table.aspx">Tables</a>
									</li>
									<li>
										<a href="http://localhost:58646/WebsiteAktaKelahiran/Assets2/admin/informasi.aspx">Informasi</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>
							
							
							
						
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>	
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<ul>	
							<!--<li><img src="images/logo1.png" alt="" /></li>--->
							<li><h1>Akte Online</h1></li>
							<div class="clearfix"> </div>
						</ul>
					</a>
				</div>
				<!--//logo-->
				
				
				
				<div class="clearfix"> </div>
			</div>
			<!--search-box-->
				<div class="search-box">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						
					</div>
				<!--//end-search-box-->
			<div class="header-right">
				
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<!--grids-->
				<div class="grids">
					<div class="progressbar-heading grids-heading">
						<h2>Tables</h2>
					</div>
					<div class="panel panel-widget">
						<div class="tables">
                          <table class="table table-bordered"> 
                          <thead> <tr>  <th>First Name</th> <th>Last Name</th> <th>Username</th> </tr> </thead> 
                          <asp:Repeater ID="rPelapor" runat="server">
                          <ItemTemplate>
                          <tbody> <tr>  <td><%# Eval("nik") %></td> <td><%# Eval("nama_lengkap")%></td> <td><%# Eval("no_kk")%></td> </tr> </tbody> 
                          </ItemTemplate>
                          </asp:Repeater>
                          </table>
						</div>
					</div>
					<div class="panel panel-widget">
						<div class="tables">
							<h4>Bordered Basic Table:</h4>
							<table class="table table-bordered"> <thead> <tr> <th>#</th> <th>First Name</th> <th>Last Name</th> <th>Username</th> </tr> </thead> <tbody> <tr> <th scope="row">1</th> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> <tr> <th scope="row">2</th> <td>Jacob</td> <td>Thornton</td> <td>@fat</td> </tr> <tr> <th scope="row">3</th> <td>Larry</td> <td>the Bird</td> <td>@twitter</td> </tr> </tbody> </table>
						</div>
					</div>
					<div class="panel panel-widget">
						<div class="tables">
							<h4>Hover Rows Table:</h4>
							<table class="table table-hover"> <thead> <tr> <th>#</th> <th>First Name</th> <th>Last Name</th> <th>Username</th> </tr> </thead> <tbody> <tr> <th scope="row">1</th> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> <tr> <th scope="row">2</th> <td>Jacob</td> <td>Thornton</td> <td>@fat</td> </tr> <tr> <th scope="row">3</th> <td>Larry</td> <td>the Bird</td> <td>@twitter</td> </tr> </tbody> </table>
						</div>
					</div>
					<div class="panel panel-widget">
						<div class="tables">
							<h4>Colored Rows Table:</h4>
							<table class="table"> <thead> <tr> <th>#</th> <th>Column heading</th> <th>Column heading</th> <th>Column heading</th> </tr> </thead> <tbody> <tr class="active"> <th scope="row">1</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr> <th scope="row">2</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr class="success"> <th scope="row">3</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr> <th scope="row">4</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr class="info"> <th scope="row">5</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr> <th scope="row">6</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr class="warning"> <th scope="row">7</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr> <th scope="row">8</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> <tr class="danger"> <th scope="row">9</th> <td>Column content</td> <td>Column content</td> <td>Column content</td> </tr> </tbody> </table> 
						</div>
					</div>
					<div class="panel panel-widget">
						<div class="tables">
							<h4>Responsive Table:</h4>
							<table class="table table-bordered"> <thead> <tr> <th>#</th> <th>Table heading</th> <th>Table heading</th> <th>Table heading</th> <th>Table heading</th> <th>Table heading</th> <th>Table heading</th> </tr> </thead> <tbody> <tr> <th scope="row">1</th> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> </tr> <tr> <th scope="row">2</th> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> </tr> <tr> <th scope="row">3</th> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> <td>Table cell</td> </tr> </tbody> </table> 
						</div>
					</div>
				</div>
				<!--//grids-->
				
			</div>
		</div>
		<!--footer-->
		 <div class="dev-page">
	 
			<!-- page footer -->   
			<!-- dev-page-footer-closed dev-page-footer-fixed -->
            <div class="dev-page-footer dev-page-footer-fixed"> 
				<!-- container -->
				<div class="container">
					<div class="copyright">
						<p>© 2016 Baxster . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p> 
					</div>
					<!-- page footer buttons -->
					<ul class="dev-page-footer-buttons">                    
						<li><a href="#footer_content_1" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon-sort" aria-hidden="true"></span></a></li>                    
						<li><a href="#footer_content_2" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon-signal" aria-hidden="true"></span></a></li>
						<li><a href="#footer_content_3" class="dev-page-footer-container-open"><span class="glyphicon glyphicon glyphicon glyphicon-file" aria-hidden="true"></span></a></li>
					</ul>
					<!-- //page footer buttons -->
					<!-- page footer container -->
					<div class="dev-page-footer-container">
						
						<!-- loader and close button -->
						<div class="dev-page-footer-container-layer">
							<a href="#" class="dev-page-footer-container-layer-button"></a>
						</div>
						<!-- //loader and close button -->                    
						
						<!-- informers -->
						<div class="dev-page-footer-container-content" id="footer_content_1">                        
							<div class="block-hdnews">
								  <div class="list-wrpaaer" style="height:200px;">
									 <ul class="list-aggregate" id="marquee-horizontal">
									   <li class="fat-l" style="width:300px">
										<a href="#">Lorem ipsum dolor</a>
										<p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>
									   
									   <li class="fat-l" style="width:300px">
										<a href="#">Consectetur</a>
										<p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>
									   
									   <li class="fat-l" style="width:300px">
										 <a href="#">Adipiscing elit</a>
										 <p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>

									   <li class="fat-l" style="width:300px">
										<a href="#">Lorem ipsum dolor</a>
										 <p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>
										<li class="fat-l" style="width:300px">
										<a href="#">Consectetur</a>
										 <p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>
									   
									   <li class="fat-l" style="width:300px">
										 <a href="#">Adipiscing elit</a>
										 <p>
										   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.
											Lorem ipsum dolor sit amet, consectetur adipiscing elit.										
										 </p>
									   </li>

									 </ul>
								  </div><!-- list-wrpaaer -->

							  </div> <!-- block-hdnews -->

						<script type="text/javascript">

						    $(function () {


						        $('#marquee-vertical').marquee();
						        $('#marquee-horizontal').marquee({ direction: 'horizontal', delay: 0, timing: 50 });

						    });

						</script>                   
						</div>
						<!-- //informers -->
						
						<!-- informers -->
						<div class="dev-page-footer-container-content" id="footer_content_2">   
							<div class="graphs">
								<div class="col-md-4 graph-points">
									<div class="graph-left">
									   <script type="text/javascript">
									       // Generate data

									       var data = [];

									       var time = new Date('Dec 1, 2013 12:00').valueOf();

									       var h = Math.floor(Math.random() * 100);
									       var l = h - Math.floor(Math.random() * 20);
									       var o = h - Math.floor(Math.random() * (h - l));
									       var c = h - Math.floor(Math.random() * (h - l));

									       var v = Math.floor(Math.random() * 1000);

									       for (var i = 0; i < 30; i++) {
									           data.push([time, o, h, l, c, v]);
									           h += Math.floor(Math.random() * 10 - 5);
									           l = h - Math.floor(Math.random() * 20);
									           o = h - Math.floor(Math.random() * (h - l));
									           c = h - Math.floor(Math.random() * (h - l));
									           v += Math.floor(Math.random() * 100 - 50);
									           time += 30 * 60000; // Add 30 minutes
									       }
										</script>
										<div id="example-1"></div>
										<script type="text/javascript">
										  $(function() {
											$('#example-1').jqCandlestick({
											  data: data,
											  theme: 'light',
											  series: [{
											  }],
											});
										  });
										</script>
									</div>
									<div class="graph-right">
										<h3>TODAY'S STATS</h3>
										<p>Duis aute irure dolor in reprehenderit.</p>
										<ul>
											<li>Earning: $400 USD</li>
											<li>Items Sold: 20 Items</li>
											<li>Last Hour Sales: $34 USD</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-4 bar-grid">
									<div class="graph-left">
										<canvas id="line"></canvas>
											<script>
											    var lineChartData = {
											        labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon"],
											        datasets: [
															{
															    fillColor: "rgba(202, 202, 202, 0)",
															    strokeColor: "#3E495A",
															    pointColor: "#fbfbfb",
															    pointStrokeColor: "#fbfbfb",
															    data: [20, 35, 45, 30, 10, 65, 40]
															}
														]

											    };
											    new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
											</script>
									</div>
									<div class="graph-right">
										<h3>TODAY'S STATS</h3>
										<p>Duis aute irure dolor in reprehenderit.</p>
										<ul>
											<li>Earning: $400 USD</li>
											<li>Items Sold: 20 Items</li>
											<li>Last Hour Sales: $34 USD</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-4 switch-right">
									<div class="graph-left">
										<canvas id="bar"></canvas>
											<script>
											    var barChartData = {
											        labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Mon", "Tue", "Wed", "Thu"],
											        datasets: [
														{
														    fillColor: "#fbc02d",
														    strokeColor: "#fbc02d",
														    highlightFill: "rgba(220,220,220,0.75)",
														    highlightStroke: "rgba(220,220,220,1)",
														    data: [25, 40, 50, 65, 55, 30, 20, 10, 6, 4]
														},
														{
														    fillColor: "#3E495A",
														    strokeColor: "#3E495A",
														    data: [30, 45, 55, 70, 40, 25, 15, 8, 5, 2]
														}
													]

											    };
											    new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
											</script>
									</div>
									<div class="graph-right">
										<h3>TODAY'S STATS</h3>
										<p>Duis aute irure dolor in reprehenderit.</p>
										<ul>
											<li>Earning: $400 USD</li>
											<li>Items Sold: 20 Items</li>
											<li>Last Hour Sales: $34 USD</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								
								<div class="clearfix"> </div>
							</div>
						</div>
						<!-- //informers -->
						
						<!-- projects -->
						<div class="dev-page-footer-container-content" id="footer_content_3">                        
							<div class="social">
								<div class="col-md-3 top-comment-grid">
									<div class="comments">
										<div class="comments-icon">
											<i class="fa fa-comments"></i>
										</div>
										<div class="comments-info">
											<h3>85</h5>
											<a href="#">Comments</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-md-3 top-comment-grid">
									<div class="comments likes">
										<div class="comments-icon">
											<i class="fa fa-facebook"></i>
										</div>
										<div class="comments-info likes-info">
											<h3>2150</h5>
											<a href="#">Likes</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-md-3 top-comment-grid">
									<div class="comments tweets">
										<div class="comments-icon">
											<i class="fa fa-twitter"></i>
										</div>
										<div class="comments-info tweets-info">
											<h3>325</h5>
											<a href="#">Tweets</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-md-3 top-comment-grid">
									<div class="comments views">
										<div class="comments-icon">
											<i class="fa fa-eye"></i>
										</div>
										<div class="comments-info views-info">
											<h3>471</h5>
											<a href="#">Views</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<!-- //projects -->
					</div>
                <!-- //page footer container -->
                
                </div>
				<!-- //container -->
            </div>
            <!-- /page footer -->
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
		    var menuLeft = document.getElementById('cbp-spmenu-s1'),
				showLeftPush = document.getElementById('showLeftPush'),
				body = document.body;

		    showLeftPush.onclick = function () {
		        classie.toggle(this, 'active');
		        classie.toggle(body, 'cbp-spmenu-push-toright');
		        classie.toggle(menuLeft, 'cbp-spmenu-open');
		        disableOther('showLeftPush');
		    };


		    function disableOther(button) {
		        if (button !== 'showLeftPush') {
		            classie.toggle(showLeftPush, 'disabled');
		        }
		    }
		</script>
	<!-- Bootstrap Core JavaScript --> 
		
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/dev-loaders.js"></script>
        <script type="text/javascript" src="js/dev-layout-default.js"></script>
		<script type="text/javascript" src="js/jquery.marquee.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<script type="text/javascript" src="js/jquery.jqcandlestick.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/jqcandlestick.css" />
		
		<!--max-plugin-->
		<script type="text/javascript" src="js/plugins.js"></script>
		<!--//max-plugin-->
		
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
    </form>
</body>
</html>