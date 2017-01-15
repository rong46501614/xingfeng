<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下-注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<link href="css/newstyle.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.easydropdown.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!-- end-smoth-scrolling -->
</head>
<!-- Header Starts Here -->
<div class="banner inner-banner" >
		<div class="header">
	<div class="container">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/xftxThemeAction_formainjsp.do"><img src="images/logos.png" alt=""></a>
		</div>
		<div class="search-bar">
			<input type="text"  value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
			<input type="submit" value="" />
	   </div>
	   <span class="menu"> Menu</span>
			
		<div class="banner-top">
								<ul class="nav banner-nav">                                     
										<li><a href="${pageContext.request.contextPath}/xftxThemeAction_formainjsp.do">xftx</a></li>
										<li class="dropdown1"><a class="down-scroll" href="">projitem</a>
											<ul class="dropdown2">
												<s:if test="%{#session.al!=null && #session.al.size()>0}">
									    			<s:iterator value="%{#session.al}" var="name">
									    				<li><a href="${pageContext.request.contextPath}/xftxMountainsAction_mountainsWater.do?flag=<s:property value='%{#name.themeId}'/>"><s:property value="%{#name.themeName}"/></a></li>
									    			</s:iterator>
									    		</s:if>
											</ul>
										</li>     
										<li class="dropdown1"><a href="">BaiduImg</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduImg.do">百度图片</a></li>
												<li><a href="">百度音乐</a></li>
											</ul>
										</li>  
										<li class="dropdown1"><a class="down-scroll" href="">upload</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxItemAction_additem.do">UpLoadImg</a></li>
												<li><a href="">Support</a></li>
											</ul>
										</li> 
										<li class="dropdown1"><a class="down-scroll" href="">Maps</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduMap.do">BaiduMap</a></li>
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_googleMap.do">GoogleMap</a></li>
											</ul>
										</li>						
										<li class="dropdown1"><a class="active"  href="">user</a>
											<ul class="dropdown2">
												<li>
												<s:if test="%{#session.xftxUser.userlogin!=null}">
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_user.do"><s:property value='%{#session.xftxUser.userlogin}'/></a>
									    		</s:if>
									    		<s:else>
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_login.do">Login</a>
									    		</s:else>
												</li>
												<li>
												<s:if test="%{#session.xftxUser.userlogin!=null}">
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_nologin.do">Logout</a>
									    		</s:if>
									    		<s:else>
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_register.do">Register</a>
									    		</s:else>
												</li>
											</ul>
										</li>  
								</ul>
								<script>
									$("span.menu").click(function(){
										$(" ul.nav").slideToggle("slow" , function(){
										});
									});
								</script>
							</div>
		<div class="clearfix"> </div>

	</div>
	</div>
<!-- page heading -->
	<div id="breadcrumb_wrapper">
		<div class="container">
			
			<h3>Register</h3>
			<h6>add a short description here</h6>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="clearfix"> </div>
<!-- Header Ends Here -->	
	<div class="login-content">
		<div class="container">
		<div class="login-page">
			   <div class="account_grid">
			   <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
			  	 <h3>NEW CUSTOMERS</h3>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
			  	<h3>REGISTERED CUSTOMERS</h3>
				<p>If you haven't an account with us, please register in.</p>
				<form action="${pageContext.request.contextPath}/xftxUserAction_registerCL.do" method="post">
				  <div>
					<span>UserLogin Email/PhoneNum<label>*</label></span>
					<input id="userlogin" name="userLogin" style="border: 1px solid #4e4e4e" class="input_1" type="text" value="请输入手机号/邮箱" onFocus="cleargo2()" onBlur="go2()" onkeydown="gocolor2()"> 
				  </div>
				  <div>
					<span>Password<label>*</label></span>
					<input id="userpasswd" name="userPasswd" class="input_1" style="border: 1px solid #4e4e4e;width:70%;" type="password" value="" onFocus="cleargo3()" onBlur="go3()" onkeydown="gocolor3()"> 
				  </div>
				  <input type="submit" value="Register">
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
			 </div>
		   </div>
		</div>
	</div>


<!-- #Footer -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<span class="title">Latest Tweets</span>
						<p>Lorem ipsum dolor sit amet, <span class="greenText">#tweetTag</span> consectetur adipiscing elit. Ut vel pharetra diam. Aenean convallis nibh facilisis risus convallis, non ornare tellus vehicula.<span class="tweetTime">10 Minutes Ago</span></p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel pharetra diam. Aenean convallis nibh facilisis risus convallis, non ornare tellus vehicula.<span class="tweetTime">1 Hour Ago</span></p>
					</div>
					<div class="col-md-2 col-xs-6 col-sm-4">
						<ul class="footerMenu">
							<li class="title">What we do</li>
							<li><a href="#">Plans</a></li>
							<li><a href="#">Overview</a></li>
							<li><a href="#">Features Tour</a></li>
							<li><a href="#">CloudFlare's Network</a></li>
							<li><a href="#">CloudFlare Apps</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6 col-sm-4">
						<ul class="footerMenu">
							<li class="title">Services</li>
							<li><a href="#">Virtual Private Servers</a></li>
							<li><a href="#">Dedicated Servers</a></li>
							<li><a href="#">cloud vps</a></li>
							<li><a href="#">Server Management</a></li>
							<li><a href="#">Script Installation</a></li>
						</ul>
					</div>
					<div class="col-md-2 col-xs-6 col-sm-4">
						<ul class="footerAddress">
							<li class="title">Contact Us</li>
							<li><strong>Address:</li>
							<li>p. Palace, Bangalore Palace Road, India, LP4 2P8</li>
							<li><strong>Phone:</strong></li>
							<li>080 1249 4654</li>
						</ul>
					</div>
				</div>
				<hr>
			</div>			
			<div class="copyrights">
				<div class="container">
					<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
				</div>
			</div>
		</footer>
		<!-- /#Footer -->
		<!-- here stars scrolling icon -->
	<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>