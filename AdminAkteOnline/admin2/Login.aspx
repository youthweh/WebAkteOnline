<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="admin2_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Baxster an Admin Panel Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
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
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
</head> 
<body class="login-bg">
		<div class="login-body">
			<div class="login-heading">
				<h1>Login Admin</h1>
			</div>
			<div class="login-info">
				  <form id="form1" runat="server">
                  <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
                  <br />
                  <asp:TextBox ID="TextBox2" runat="server" placeholder="password"></asp:TextBox>
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="Sign In" />
					<!--<input type="text" class="user" name="email" placeholder="Email" required="">-->
					<!--<input type="password" name="password" class="lock" placeholder="Password">-->
					<!--<input type="submit" name="Sign In" value="Login">-->
					
					<hr>
				</form>
			</div>
		</div>
		<div class="go-back login-go-back">
				<a href="index.html">Go To Home</a>
			</div>
		<div class="copyright login-copyright">
			<p>© 2018 Akte Online . All Rights Reserved . Design by Fiona dan Vanessa</a></p> 
		</div>
</body>
</html>