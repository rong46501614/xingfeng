<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下-用户头像处理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<link href="css/newstyle.css" rel='stylesheet' type='text/css' />
<link href="css/imgstyle.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.easydropdown.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/cropbox.js"></script>
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
										<li><a  href="${pageContext.request.contextPath}/xftxThemeAction_formainjsp.do">xftx</a></li>
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
										<li class="dropdown1"><a class="active" href="">user</a>
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
			
			<h3>修改头像</h3>
			<h6>add a short description here</h6>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="clearfix"> </div>
<!-- Header Ends Here -->	

<!-- #Testimonials -->
		<div id="testimonialWrapper" style="background-color: #c0c0c0;width: 100%;height: 100%;">
		
			<div class="imgcontainer">
			  <div class="imgimageBox">
			    <div class="imgthumbBox"></div>
			    <div class="imgspinner" style="display: none">Loading...</div>
			  </div>
			  <div class="imgaction"> 
			    <!-- <input type="file" id="file" style=" width: 200px">-->
			    <div class="imgnew-contentarea imgtc"> <a href="javascript:void(0)" class="imgupload-img">
			      <label for="upload-file">上传图像</label>
			      </a>
			      <input type="file" class="" name="upload-file" id="upload-file" />
			    </div>
			    <input type="button" id="btnCrop"  class="imgBtnsty_peyton" value="裁切">
			    <input type="button" id="btnZoomIn" class="imgBtnsty_peyton" value="+"  >
			    <input type="button" id="btnZoomOut" class="imgBtnsty_peyton" value="-" >
			  </div>
			  <div class="imgcropped"></div>
			</div>
<script type="text/javascript">
$(window).load(function() {
	var options =
	{
		thumbBox: '.imgthumbBox',
		spinner: '.imgspinner',
		imgSrc: 'images/avatar.png'
	}
	var cropper = $('.imgimageBox').cropbox(options);
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			options.imgSrc = e.target.result;
			cropper = $('.imgimageBox').cropbox(options);
		}
		reader.readAsDataURL(this.files[0]);
		this.files = [];
	})
	$('#btnCrop').on('click', function(){
		var img = cropper.getDataURL();
		$('.imgcropped').html('');
		$('.imgcropped').append('<img src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');
		$('.imgcropped').append('<img src="'+img+'" align="absmiddle" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');
		$('.imgcropped').append('<img src="'+img+'" align="absmiddle" style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');
	
		var imgs = cropper.getBlob();
		var xhr=XHR();
		xhr.open("post", "xftxUserAction_imgCL.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send('imgs='+img);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					//服务端返回了正确数据，开始响应处理
					buildselectProvince(xhr);
				}
			}
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	})
	$('#btnZoomIn').on('click', function(){
		cropper.zoomIn();
	})
	$('#btnZoomOut').on('click', function(){
		cropper.zoomOut();
	})
});
</script>
			
		</div>
		<!-- /#Testimonials -->



	<div class="hd-content">
		<div class="container">

			

			<!-- hosting features -->
			<h1 class="heading">Hosting Features</h1>

			<div class="one_third feature">
				<i class="icon-hdd"></i>
				<h6>我的收藏</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="one_third feature">
				<i class="icon-dashboard"></i>
				<h6>行程安排</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="one_third last feature">
				<i class="icon-gear"></i>
				<h6>完善信息</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="clearfix"></div>
			<div class="space2"></div>

			<div class="one_third feature"  onclick="window.location.href='${pageContext.request.contextPath}/xftxMountainsAction_useritem.do'">
				<i class="icon-cloud-upload"></i>
				<h6>我的分享</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="one_third feature">
				<i class="icon-time"></i>
				<h6>头条记录</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="one_third last feature">
				<i class="icon-shield"></i>
				<h6>账户安全</h6>
				<p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Vivamus dignissim sodales nis facilisis adipiscing dolor sit amet.</p>
			</div>

			<div class="clearfix"></div>

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