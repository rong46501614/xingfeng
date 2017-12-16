<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>行风天下-项目缩略图处理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="js/main.js"></script>
<!-- Custom Theme files -->
<link href="css/newstyle.css" rel='stylesheet' type='text/css' />
<link href="jscorp/css/demos.css" rel='stylesheet' type='text/css' />
<link href="jscorp/css/jquery.Jcrop.css" rel='stylesheet' type='text/css' />
<link href="jscorp/css/jquery.Jcrop.min.css" rel='stylesheet' type='text/css' />
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<script src="jscorp/js/jquery.min.js"></script>
<script src="jscorp/js/jquery.Jcrop.js"></script>
<script src="jscorp/js/jquery.color.js"></script>
<script src="jscorp/js/jquery.Jcrop.min.js"></script>
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

<script type="text/javascript">

  jQuery(function($){

    var jcrop_api;
    $preview = $('#preview-pane'),
    $pcnt = $('#preview-pane .preview-container'),
    $pimg = $('#preview-pane .preview-container img'),

    xsize = $pcnt.width(),
    ysize = $pcnt.height();

    $('#target').Jcrop({
      onChange:   showCoords,
      onSelect:   showCoords,
      onRelease:  clearCoords,
	  aspectRatio: 1 / 1,
    },function(){
      jcrop_api = this;
      var bounds = this.getBounds();
      boundx = bounds[0];
      boundy = bounds[1];
      // Store the API in the jcrop_api variable
      jcrop_api = this;

      // Move the preview into the jcrop container for css positioning
      $preview.appendTo(jcrop_api.ui.holder);
      
    });

    $('#coords').on('change','input',function(e){
      var x1 = $('#x1').val(),
          x2 = $('#x2').val(),
          y1 = $('#y1').val(),
          y2 = $('#y2').val();
      jcrop_api.setSelect([x1,y1,x2,y2]);
    });

  });

  // Simple event handler, called from onChange and onSelect
  // event handlers, as per the Jcrop invocation above
  function showCoords(c)
  {
    $('#x1').val(c.x);
    $('#y1').val(c.y);
    $('#x2').val(c.x2);
    $('#y2').val(c.y2);
    $('#w').val(c.w);
    $('#h').val(c.h);
    if (parseInt(c.w) > 0)
    {
      var rx = xsize / c.w;
      var ry = ysize / c.h;

      $pimg.css({
        width: Math.round(rx * boundx) + 'px',
        height: Math.round(ry * boundy) + 'px',
        marginLeft: '-' + Math.round(rx * c.x) + 'px',
        marginTop: '-' + Math.round(ry * c.y) + 'px'
      });
    }
  };

  function clearCoords()
  {
    $('#coords input').val('');
  };


</script>
 




<style type="text/css">

/* Apply these styles only when #preview-pane has
   been placed within the Jcrop widget */
.jcrop-holder #preview-pane {
  display: block;
  position: absolute;
  z-index: 2000;
  top: 10px;
  right: -280px;
  padding: 6px;
  border: 1px rgba(0,0,0,.4) solid;
  background-color: white;

  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;

  -webkit-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
  box-shadow: 1px 1px 5px 2px rgba(0, 0, 0, 0.2);
}

/* The Javascript code will set the aspect ratio of the crop
   area based on the size of the thumbnail preview,
   specified here */
#preview-pane .preview-container {
  width: 250px;
  height: 250px;
  overflow: hidden;
}
 
</style>





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
										<li class="dropdown1"><a  >BaiduImg</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduImg.do">百度图片</a></li>
												<li><a href="">百度音乐</a></li>
											</ul>
										</li>  
										<li class="dropdown1"><a class="active"  class="down-scroll" href="">upload</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxItemAction_additem.do">UpLoadImg</a></li>
												<li><a href="">Support</a></li>
											</ul>
										</li> 
										<li class="dropdown1"><a class="down-scroll" >Maps</a>
											<ul class="dropdown2">
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_baiduMap.do">BaiduMap</a></li>
												<li><a href="${pageContext.request.contextPath}/xftxBaiduImgAction_googleMap.do">GoogleMap</a></li>
											</ul>
										</li>						
										<li class="dropdown1"><a  >user</a>
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
<div class="clearfix"> </div>

<div class="domain">
	<div style="width:20%;height:100%;float: left"></div>
	<div id="crcc_user_uimg" style="width:75%;float: left;">
	<form action="${pageContext.request.contextPath}/xftxItemAction_imgCL.do" method="post">
	
					<div class="container">
						<div class="row">
						<div class="span12">
						<div class="jc-demo-box" style="background: none;border: none;box-shadow:none">
						
						  <!-- This is the image we're attaching Jcrop to -->
						  <img src="<s:property value='%{#request.itemImgPath}'/>" id="target" alt="[Jcrop Example]" style="width: 500px;float: left;" />
						
						  <!-- This is the form that our event handler fills -->
						  <div id="coords"
						    style="float: left;width: 50%;position: absolute;left:600px;top:300px;"
						    >
						    <div class="inline-labels">
						    <label><input type="hidden" size="4" id="x1" name="x1" /></label>
						    <label><input type="hidden" size="4" id="y1" name="y1" /></label>
						    <label><input type="hidden" size="4" id="x2" name="x2" /></label>
						    <label><input type="hidden" size="4" id="y2" name="y2" /></label>
						    <label><input type="hidden" size="4" id="w" name="w" /></label>
						    <label><input type="hidden" size="4" id="h" name="h" /></label>
						    </div>
							  <div id="preview-pane">
							      <div class="preview-container">
							      		<img src="<s:property value='%{#request.itemImgPath}'/>" class="jcrop-preview" alt="Preview" />
							      </div>
							  </div>
						   </div>
						</div>
						</div>
						</div>
						</div>
		
		<input type="submit" size="4" value="提交" style="width: 115px;height: 40px;position: absolute;left:65%;top:400px;"/>
		<input type="hidden" size="4" id="imgName" name="imgName" value="<s:property value='%{#request.itemImgPath}'/>" />
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