<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下-建立项目</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="js/main.js"></script>
<link href="css/newstyle.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.easydropdown.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<!-- start-smoth-scrolling -->
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
										<li class="dropdown1"><a class="down-scroll" >projitem</a>
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
										<li class="dropdown1"><a class="active"  class="down-scroll" >upload</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxItemAction_additem.do">UpLoadImg</a></li>
												<li><a >Support</a></li>
											</ul>
										</li> 
										<li class="dropdown1"><a class="down-scroll" >Maps</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduMap.do">BaiduMap</a></li>
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_googleMap.do">GoogleMap</a></li>
											</ul>
										</li>						
										<li class="dropdown1"><a href="">user</a>
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
			
			<h3>Picture - appreciation</h3>
			<h6>Baidu Photo Gallery Here</h6>

			<div class="clearfix"></div>
		</div>
	</div>
</div>

<!-- Header Ends Here -->
	
<div class="domain">
<div style="width:5%;height:100%;float: left"></div>
<div id="baidu_crccz" style="width:90%;height:100%;float: left;color:#c0c0c0;">

					<form action="${pageContext.request.contextPath}/xftxItemAction_additemCL.do" theme="simple" method="post" enctype="multipart/form-data" 
							style="width: 100%;height: 100%"	>
							<div style="width: 100%;height: 5%;float: left;"></div>
							<div style="width: 100%;height: 5%;float: left;"></div>
							<div style="width: 100%;height: 5%;">
								<div style="width: 15%;height: 100%;float: left;font-size: 25px;">
									【项目缩略图】
								</div>
								<div style="width: 40%;height: 100%;float: left;">
									<s:file style="width: 100%;height: 100%;float: left;" id="doc" name="filePhoto" theme="simple"  href="javascript:void(0);" onchange="javascript:setImagePreview();" ></s:file>
								</div>
							</div>
							
							<div style="width: 100%;height: 5%;float: left;"></div>
							<div style="width: 10%;height: 85%;float: left;"></div>
							<div style="width: 30%;height: 85%;float: left;">
								<div style="width: 30%;height: 40%;float: left;">
									<img id="preview" src="images/yuan1.jpg" style="width: 200px;float: left;">
								</div>
								
							</div>
							
							
							
							<div style="width: 60%;height: 85%;float: left;">
								<ul >
									<li style="list-style: none;font-size: 20px;">项目名称：
										<s:textfield name="itemName" type="text" style="width: 50%;height: 8%;color:#000000"></s:textfield>
									</li>
								</ul>
								<div style="width: 83%;height: 5%;float: left;border-bottom: 2px solid #008080;"></div>
								<div style="width: 100%;height: 5%;float: left;"></div>
								<div >
									<ul >
										<li style="list-style: none;font-size: 20px;float: left;margin-top:3px">所属主题：</li>
										<s:select list="#request.list" id="themeName" name="itemTheme"
										          listKey="themeId" listValue="themeName"
										          headerKey="themeName" headerValue="请选择主题"
										          style="width: 20%;height: 6%;margin-left:50px;padding:0;color:#000000" onchange="changeTheme()"
										          >
										</s:select>
									</ul>
								</div>
								<div style="width: 100%;height: 5%;float: left;"></div>
								<div >
									<ul id="selectcity" >
										<li style="list-style: none;font-size: 20px;float: left;margin-top:3px;">所在国家/城市：</li>
										<s:select list="#request.lists" id="countryName" name="itemCountry"
										          listKey="countryId" listValue="countryName"
										          headerKey="countryName" headerValue="请选择国家"
										          style="width: 20%;height: 6%;margin-left:2px;padding:0;float:left;color:#000000" onchange="changetype()"
										          >
										</s:select>
									</ul>
								</div>
								<div style="width: 100%;height: 5%;float: left;"></div>
								<div >
									<ul >
										<li style="list-style: none;font-size: 20px;float: left;margin-top:3px">项目简介：</li>
										<s:textarea name="itemAbout"  style="width: 60%;height: 25%;margin-left:50px;padding:0;color:#000000"></s:textarea>
									</ul>
								</div>
								<div style="width: 100%;height: 5%;float: left;"></div>
								<div style="width: 100%;height: 5%;float: left;"></div>
								<div>
									<s:submit value="确　　认" style="width: 15%;height: 8%;margin-left:0px;color:#000000"></s:submit>
									<s:reset value="重新填写" style="width: 15%;height: 8%;margin-left:50px;color:#000000"></s:reset>
								</div>
							</div>
						</form>

</div>
<div style="width:5%;height:100%;float: left"></div>
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