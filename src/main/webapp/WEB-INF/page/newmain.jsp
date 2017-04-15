<%@ page language="java" import="java.util.*;import com.xingfeng.form.XftxThemeForm;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<link href="${pageContext.request.contextPath}/css/newstyle.css" rel='stylesheet' type='text/css' />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.ico" type="image/x-icon" />
<script src="${pageContext.request.contextPath}/js/jquery.easydropdown.js"></script>
<link href="${pageContext.request.contextPath}/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
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
<script type="text/javascript">
	var i=0;
	function change(){
	    var lipath = "";
	    switch(i){
	    	case 0: lipath = "images/banner.jpg";break;    //图片位置
	        case 1: lipath = "images/banner2.jpg";break;
	        case 2: lipath = "images/banner1.jpg";break;
	        case 3: lipath = "images/banner3.jpg";break;
		}
	    
	    document.getElementById("banner").style.backgroundImage = "URL("+lipath+")";  //显示对应的图片
	    i++;
	    if(i==4){
	    	i=0;
	    }
     }
     setInterval("change()",6000);     //每1秒钟掉用一次change()
   </script>
<!-- Header Starts Here -->
<div class="banner" id="banner">
	<div class="header">
	<div class="container">
		<div class="logo">
			<a href="${pageContext.request.contextPath}/xftxThemeAction_formainjsp.do"><img src="images/logos.png"  alt=""></a>
		</div>
		<div class="search-bar">
			<input type="text"  value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
			<input type="submit" value="" />
		</div>
		<span class="menu"> Menu</span>
			
		<div class="banner-top">
								<ul class="nav banner-nav">
										<li><a class="active" href="${pageContext.request.contextPath}/xftxThemeAction_formainjsp.do">xftx</a></li>
										<li class="dropdown1"><a class="down-scroll" href="">projitem</a>
											<ul class="dropdown2">
												
									    		<%
									    			if(request.getAttribute("al")!=null&&((ArrayList)(request.getAttribute("al"))).size()>0){
									    				for(int i=0;i<((ArrayList)(request.getAttribute("al"))).size();i++){
									    					%>
									    					<li><a href="${pageContext.request.contextPath}/xftxMountainsAction_mountainsWater.do?flag=<%=(((ArrayList)(request.getAttribute("al"))).get(i)) %>"><%=(((ArrayList)(request.getAttribute("al"))).get(i)) %></a></li>
									    					<%
									    				}
									    			}
									    		 %>
											</ul>
										</li>     
										<li class="dropdown1"><a href="">BaiduImg</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduImg.do">百度图片/BaiduPic</a></li>
												<li><a href="http://music.baidu.com/">百度音乐/BaiduMusic</a></li>
											</ul>
										</li>  
										<li class="dropdown1"><a class="down-scroll" href="">upload</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxItemAction_additem.do">新建项目/UpLoadImg</a></li>
												<li><a href="">Support</a></li>
											</ul>
										</li> 
										<li class="dropdown1"><a class="down-scroll" href="">Maps</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduMap.do">百度地图/BaiduMap</a></li>
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_googleMap.do">谷歌地图/GoogleMap</a></li>
											</ul>
										</li>						
										<li class="dropdown1"><a href="">user</a>
											<ul class="dropdown2">
												<li>
												<s:if test="%{#session.xftxUser.userlogin!=null}">
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_user.do"><s:property value='%{#session.xftxUser.userlogin}'/></a>
									    		</s:if>
									    		<s:else>
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_login.do">登录/Login</a>
									    		</s:else>
												</li>
												<li>
												<s:if test="%{#session.xftxUser.userlogin!=null}">
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_nologin.do">注销/Logout</a>
									    		</s:if>
									    		<s:else>
										    		<a href="${pageContext.request.contextPath}/xftxUserAction_register.do">注册/Register</a>
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
		<div class="banner-info">
			<h1>Here, beauty of the world.</h1>
			<p>See the mountains and rivers, as well as in the hearts of birds'twitter and fragrance of flowers smell.</p>
		</div>
</div>
<div class="clearfix"> </div>
<!-- Header Ends Here -->	
<div class="best">
	<div class="container">
		<article>
			<figure class="float-left"><img src="images/470x240.jpg" alt="Placeholder"></figure>
			<h2><span>Best Web Hosting</span> For You</h2>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only but also the leap into electronic publishing software like Aldus PageMaker five centuries.</p>
		</article>	
	</div>	
</div>

<div class="plans" style="background-color: #80bfff;">
		<div class="container">





			<!-- pricing table -->
			<h1 class="heading">Most Popular Plans</h1>


			<%int i=0; %>
			<s:if test="%{#request.listXftxItemForm!=null && #request.listXftxItemForm.size()>0}">
				<s:iterator value="%{#request.listXftxItemForm}" var="xftxItemForm">
					<%if(i%3==2){%><div class="col-md-4 one_third last pricing"><%}else{%><div class="col-md-4 one_third pricing"><%} i++;%>
						<div class="pricing_top">
							<h6><s:property value='%{#xftxItemForm.itemBuildTime}'/></h6>
							<p><sup></sup><s:property value='%{#xftxItemForm.itemName}'/></p>
						</div>
						<div class="pricing_middle">
							<img src="<s:property value='%{#xftxItemForm.itemImgPath}'/>" style="width:100%"/>
						</div>
						<div class="pricing_bottom">
							<a href="${pageContext.request.contextPath}/xftxMountainsAction_item.do?itemId=<s:property value='%{#xftxItemForm.itemId}'/>">详情/details</a>
						</div>
					</div>
				</s:iterator>
			</s:if>











			
			
			
			
			
			
			
			<div class="clearfix"></div>
			
		</div>
	</div>
	<div class="fullwidth-section semi-background">
                        <div class="fullwidth-bg">	  
                            <div class="overlay left-aligned">
                            	<div class="dt-sc-one-half column first">
                                	<div class="dt-support">
                                        <h2  style="color:#ff8102;"><span  style="color:#ff8102;">dedicated</span> to dedicated</h2>
                                        <p  style="color:#ff8102;">As a dedicated customer, enjoy direct support from specialists who know our most powerful servers best. Call the exclusive support line anytime.</p>
                                        <span  style="color:#ff8102;">(855) 503-0450</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
<div class="service-section" id="service">
				<div class="container">
					<div class="service-section-head text-center wow fadeInRight" data-wow-delay="0.4s">
						<h3>More Features</h3>
						<p>You will get lot of features with flathost</p>
					</div>
					<div class="service-section-grids">
						<div class="col-md-6 service-grid">
							<div class="service-section-grid wow bounceIn" data-wow-delay="0.4s">
								<div class="icon">
									<i class="s1"></i>
								</div>
								<div class="icon-text">
									<h4>Instant Setup</h4>
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="service-section-grid wow bounceIn" data-wow-delay="0.4s">
								<div class="icon">
									<i class="s2"></i>
								</div>
								<div class="icon-text">
									<h4>Constant Backups</h4>
									<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy</p>
								</div>
								<div class="clearfix"></div>
							</div>
							
						</div>
						<div class="col-md-6 service-grid">
							
							<div class="service-section-grid wow bounceIn" data-wow-delay="0.4s">
								<div class="icon">
									<i class="s5"></i>
								</div>
								<div class="icon-text">
									<h4>cPanel Included</h4>
									<p>There are many variations of passages of Lorem Ipsum available, suffered alteration in some form, by injected humouror randomised words which don't look even slightly believable.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="service-section-grid wow bounceIn" data-wow-delay="0.4s">
								<div class="icon">
									<i class="s3"></i>
								</div>
								<div class="icon-text">
									<h4>GIT/SVN Support</h4>
									<p>Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>

<div class="services-bottom">
	
	<p><img src="images/font.png"> </p>
	<h6><p>Website is committed to the tourist attractions of the picture to share, to the users of a pure picture of the world </p></h6>
</div>
<!--/srvices-->
<!-- #Testimonials -->
		<div id="testimonialWrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-md-offset-1">
						<div >
							<img src="images/xingfeng.png" style="width: 182px;height: 182px;">
						</div>
					</div>
					<div class="col-md-7 col-md-offset-1">
						<p style="font-size: 20px;">行风天下简介/Brief Introduction </p>
						<h3>行风天下，是一个团队，是一个集技术、摄影爱好的一个集体，用技术连接你我。</br>每个人
							都是各行业中的精英，团队会把自己手中最美好的图片分享出来，让大家第一时间欣赏美
							好的风景，感受天下之大，自然之美。</br>
							<h2>我相信，在这里你会看到一个不一样的世界！</h2>
						</h3>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- /#Testimonials -->
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
							<li>陕西 西安 高新区</li>
							<li><strong>Phone:</strong></li>
							<li>181 9207 2035</li>
						</ul>
					</div>
				</div>
				<hr>
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