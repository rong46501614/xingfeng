<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下-项目图片展示</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/main.js"></script>
<link href="css/newstyle.css" rel='stylesheet' type='text/css' />
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<script src="js/jquery.easydropdown.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
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
<style type="text/css">
	.popWindow {
	background-color:#000000;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	filter: alpha(opacity=50);
	opacity: 0.9;
	z-index: 1;
	position: absolute;
	}
	.maskLayer {
	background-color:#c1c1c1;
	opacity: 1;
	width: 90%;
	height: 90%;
	line-height: 30px;
	left: 5%;
	top: 5%;
	color:#fff;
	z-index: 1;
	position: absolute;
}
</style>

<script language="javascript" type="text/javascript">
	function closeDiv() {
	document.getElementById('popWindow').style.display = 'none';
	document.getElementById('maskLayer').style.display = 'none';
	document.documentElement.style.overflow='auto';
}
	
	
	window.onload = function(){
		var obj=document.getElementById("itemIds").value;
		var xhr=XHR();
		xhr.open("post", "xftxMountainsAction_itemImg.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send("itemId="+obj);
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					//服务端返回了正确数据，开始响应处理
					var imgshows=document.getElementById("imgshowss");
					var odiv1=document.getElementById("hello1");
					var odiv2=document.getElementById("hello2");
					var odiv3=document.getElementById("hello3");
					var odiv4=document.getElementById("hello4");
					var odiv5=document.getElementById("hello5");
					
					var odiv=[odiv1,odiv2,odiv3,odiv4,odiv5];
					
					var date=JSON.parse(xhr.responseText);
					for(var i=0;i<date.length;i++){
						var k = getimgdivhello();
						var imgshowk=odiv[k];
						
						
						
						var imgss=document.createElement("img");
						imgss.src=date[i].imgPath;
						imgss.id=date[i].imgName;
						imgss.style.width="100%";
						imgss.onclick = function(){
							var maskLayer=document.getElementById("maskLayers");
							var imgshow=document.getElementById("imgshow");
							if(imgshow!=null){
								maskLayer.removeChild(imgshow);
							}
							var pathsrc=this.id;
							var imgs=document.createElement("img");
							imgs.style.width="100%";
							imgs.src=pathsrc;
							imgs.id="imgshow";
							maskLayer.appendChild(imgs);
							var scrollTop=document.body.scrollTop;
							document.getElementById('popWindow').style.marginTop=scrollTop;
							document.getElementById('maskLayer').style.marginTop=scrollTop;
							document.getElementById('popWindow').style.display = 'block';
							document.getElementById('maskLayer').style.display = 'block';
							
							
							var imgk=document.getElementById("imgshow");
							var iw=imgk.offsetWidth;
							var ih=imgk.offsetHeight;
							var dw=maskLayer.offsetWidth;
							var dh=maskLayer.offsetHeight;
							if(iw>ih){
								maskLayer.removeChild(imgs);
								var k=dh-ih;
								imgs.style.marginTop=(dh-ih)*0.5;
								maskLayer.appendChild(imgs);
							}else{
								maskLayer.removeChild(imgs);
								imgs.style.width="";
								imgs.style.height="100%";
								maskLayer.appendChild(imgs);
							}
							document.documentElement.style.overflow='hidden';
						}
						var divdel=document.createElement("div");
						divdel.style.width="100%";
						divdel.style.height=imgss.style.height;
						var imgdel=document.createElement("img");
						imgdel.src="images/close.png";
						imgdel.style.width="2%";
						imgdel.style.marginLeft="-2%";
						imgdel.style.position="absolute";
						imgdel.id=date[i].imgId;
						imgdel.onclick = function(){
							
							var confirm=window.confirm("确定要删除？");
							if(confirm){
								var imgId = this.id;
								var xhr=XHR();
								xhr.open("post", "xftxImgAction_imgRemove.do",true);
								xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
								xhr.send('imgId='+imgId);
								
								xhr.onreadystatechange = function(){
									if(xhr.readyState==4){
										if(xhr.status==200){
											window.location.reload(true);
										}
									}
								}
							}
						}
						
						divdel.appendChild(imgss);
						divdel.appendChild(imgdel);
						imgshowk.appendChild(divdel);
						
					}
				}
			}
		}
	}
	
	
	
	
</script>



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
										<li class="dropdown1"><a class="active" class="down-scroll" href="">projitem</a>
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
			
			<h3><s:property value='%{#request.itemName}'/></h3>
			<h6>Picture - appreciation</h6>

			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="clearfix"> </div>
			<div class="search-form domain-search" style="height:5%;">
				<div class="one-fifth column" style="float: right;" >
					<input type="submit" value="添加图片" onclick="addimg()" >
				</div>
				<div class="one-fifth column" style="float: right;" >
					<input type="submit" value="修改项目信息" onclick="" >
				</div>
		   </div>
<div class="domain">
<div style="width:5%;height:100%;float: left"></div>
<input id="itemIds" type="hidden" value="<s:property value='%{#request.itemId}'/>">
<div id="imgshowss" style="width:90%;float: left;">

	<div id="hello1" style="width: 20%;float: left;text-align: center;"></div>
	<div id="hello2" style="width: 20%;float: left;text-align: center;"></div>
	<div id="hello3" style="width: 20%;float: left;text-align: center;"></div>
	<div id="hello4" style="width: 20%;float: left;text-align: center;"></div>
	<div id="hello5" style="width: 20%;float: left;text-align: center;"></div>

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
	
	<div id="popWindow" class="popWindow" style="display: none;position: absolute;z-index: 1000" onclick="closeDiv()">
	</div>
	
	<div id="maskLayer" class="maskLayer" style="display: none;position: absolute;z-index: 1009" >
		<div id="maskLayers" style="width: 66%;height: 100%;float: left;text-align: center;">
		</div>
		<div id="criticism" style="width: 30%;height: 100%;float: left;">
			<div style="width: 1%;height: 100%;float: left;background-color: #686868"></div>
			<div style="width: 10%;height: 100%;float: left;"></div>
			<div style="width: 89%;height: 5%;float: left;"></div>
			<div style="width: 89%;height: 10%;float: left;border-bottom: 1px solid #686868;">
				<img src="<s:property value='%{#session.xftxUser.userimg}'/>" style="width: 15%;border-radius: 50px;float: left">
				<h3 ><s:property value='%{#session.xftxUser.userlogin}'/></h3>
				<h4 ><s:property value='%{#session.xftxUser.userlogin}'/></h4>
			</div>
			<div style="width: 89%;height: 10%;float: left;border-bottom: 1px solid #686868;">
				<div style="width:100%;height: 25%;"></div>
				<input type="text" value="我也来说说..." style="font-size:12px;height:50%; color:#000000;background:none;border: 1px solid #686868;border-radius: 5px;">
				<input type="button" value="回复" style="padding:0px;margin:0; font-size:12px;font-weight:normal; width:18%; height:50%; color:#000000;border: 1px solid #686868;border-radius: 5px;">
			</div>
		</div>
		<div style="width: 4%;height: 100%;float: left">
			<img src="images/close.png" style="width: 100%;" onclick="closeDiv()">
		</div>
	</div>
</body>
</html>