<%@ page language="java"
	import="java.util.*;import com.xingfeng.form.XftxThemeForm;"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="keywords"
	content="图片,美女图片,旅游图片,图片下载,图片欣赏,超清图片,高清图片,建筑奇观,山水图">
<meta name="description"
	content="行风天下--全球最大的图片分享网站！ 致力于发展图片分享事业，本网站提供全球最丰富的网络图片分享事业。">
<meta name="applicable-device" content="pc">
<title>行风天下--全球最大的图片分享网站！</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/scoll.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />

</head>

<body class="os_mac">
	<!-- 头部 S -->
	<div class="mod_header">
		<div class="section_inner">
			<h1 class="xingfeng_title">
				<a href=""><img src="images/logo.png" alt="行风天下"
					class="xingfeng_logo"></a>
			</h1>
			<!-- 导航 S -->
			<ul class="mod_top_nav" role="nav">
				<li class="top_nav__item top_nav__item--room"><a
					href="//y.qq.com" class="top_nav__link top_nav__link--current"
					title="行风天下">行风天下<i class="top_nav__txt"></i></a></li>
				<li class="top_nav__item top_nav__item--mine"><a
					href="/portal/profile.html" class="top_nav__link" title="我的分享">我的分享<i
						class="top_nav__txt"></i></a></li>
				<li class="top_nav__item top_nav__item--down"><a
					href="//y.qq.com/download/index.html" class="top_nav__link"
					title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i></a>
				</li>
				<li class="top_nav__item top_nav__item--vip"><a
					href="//y.qq.com/vipportal/" class="top_nav__link" title="VIP"
					target="_blank">VIP<i class="top_nav__txt"></i></a></li>
			</ul>
			<ul class="mod_top_subnav" style="display:;">
				<li class="top_subnav__item"><a href="//y.qq.com"
					class="top_subnav__link top_subnav__link--current">首页</a></li>
				<li class="top_subnav__item"><a href="/portal/singer_list.html"
					class="top_subnav__link">城市</a></li>
				<li class="top_subnav__item"><a href="/portal/album_lib.html"
					class="top_subnav__link">美景</a></li>
				<li class="top_subnav__item"><a href="/n/yqq/toplist/4.html"
					class="top_subnav__link">名人</a></li>
				<li class="top_subnav__item"><a href="/portal/playlist.html"
					class="top_subnav__link">建筑</a></li>
				<li class="top_subnav__item"><a href="/portal/mv_lib.html#t6=2"
					class="top_subnav__link">现代科技</a></li>
				<li class="top_subnav__item"><a href="/portal/mv_lib.html#t6=2"
					class="top_subnav__link">图片排行榜</a></li>
			</ul>
			<!-- 导航 E -->
			<div class="mod_top_search" role="search">
				<div class="mod_search_input">
					<input class="search_input__input" aria-label="请输入搜索内容" type="text"
						placeholder="美女" accesskey="s">
					<button class="search_input__btn">
						<i class="icon_search"></i><span class="icon_txt">搜索</span>
					</button>
				</div>
				<div class="js_smartbox">
					<div class="mod_search_other" style="">
						<div class="search_hot">
							<dl class="search_hot__list" aria-labelledy="search_hot__tit">
								<dt class="search_hot__tit">热门搜索</dt>
								<dd>

									<a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="暧昧"> <span class="search_hot__number">1</span>
										<span class="search_hot__name">暧昧</span> <span
										class="search_hot__listen">29.7万</span>
									</a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="薛之谦"> <span class="search_hot__number">2</span>
										<span class="search_hot__name">薛之谦</span> <span
										class="search_hot__listen">26.9万</span>
									</a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="漂洋过海来看你"> <span class="search_hot__number">3</span>
										<span class="search_hot__name">漂洋过海来看你</span> <span
										class="search_hot__listen">19.9万</span>
									</a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="凉凉"> <span class="search_hot__number">4</span>
										<span class="search_hot__name">凉凉</span> <span
										class="search_hot__listen">18.3万</span>
									</a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="张杰"> <span class="search_hot__number">5</span>
										<span class="search_hot__name">张杰</span> <span
										class="search_hot__listen">11万</span>
									</a>

								</dd>

							</dl>
						</div>

						<div class="search_history">
							<dl class="search_history__list">
								<dt class="search_history__tit">
									搜索历史<a href="javascript:;"
										class="search_history__clear js_smartbox_delete_all"><i
										class="icon_history_clear"></i><span class="icon_txt">清空</span></a>
								</dt>

							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="header__opt">


				<!-- 未登录 -->
				<span class="mod_top_login"> <a
					class="top_login__link js_logined"
					href="//y.qq.com/portal/profile.html#stat=y_new.top.user_pic"
					style="display: none;"></a> <a class="top_login__link js_login"
					data-stat="y_new.top.login" href="javascript:;"> 登录 </a> <a
					class="login__link header__link js_login"
					data-stat="y_new.top.login" href="javascript:;">登录</a> <a
					class="mod_btn_green top_login__btn_vip js_openvip"
					data-aid="music.pc.20316.newyqqtop"
					data-stat="music.20316.btnclick.pc" href="javascript:;">超清无水印图片下载</a>
				</span>
				<!-- 用户信息 -->
				<div class="popup_user"></div>
			</div>
		</div>
	</div>
	<!-- 头部 E -->
	<!-- 首发图片 -->
	<!-- 首发图片 -->
	<div class="mod_index mod_index--new mod_slide_box" id="albumlist_box">
		<div class="section_inner">

			<div class="index__hd">
				<h1 class="index__tit" style="color: #ffffff; font-size: 40px;">
					图片首发</h1>
				<i class="index__line index__line--left"></i> <i
					class="index__line index__line--right"></i>
			</div>

			<a
				href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.more"
				class="index__more index__more--white js_album_more">全部<i
				class="icon_index_arrow"></i></a>

			<!-- 切换 -->
			<div class="mod_index_tab">
				<a
					href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.all"
					class="index_tab__item js_tab index_tab__item--current"
					data-type="nd" data-stat="y_new.index.album.nd">内地</a> <a
					href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&amp;t2=0"
					class="index_tab__item js_tab" data-type="gt"
					data-stat="y_new.index.album.gt">港台</a> <a
					href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&amp;t2=5"
					class="index_tab__item js_tab" data-type="eu"
					data-stat="y_new.index.album.eu">欧美</a> <a
					href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&amp;t2=4"
					class="index_tab__item js_tab" data-type="k"
					data-stat="y_new.index.album.k">韩国</a> <a
					href="//y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&amp;t2=3"
					class="index_tab__item js_tab" data-type="j"
					data-stat="y_new.index.album.j">日本</a>
			</div>
			<div class="mod_playlist mod_slide">
				<!-- 偶数加 playlist__item--even -->
				<ul class="playlist__list slide__list" id="albumlist">
					
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/a.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/b.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/c.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/d.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					
					
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/d.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/c.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/b.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/a.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/a.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/b.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/c.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/d.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					
					
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/d.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/c.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/b.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					<li class="playlist__item slide__item playlist__item--even"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__item_box">
							<div class="playlist__cover mod_cover">
								<a href="" class="js_album" >
								<img src="images/a.jpg" alt="过节" class="playlist__pic"></a>
							</div>
							<h4 class="playlist__title">
								<span class="playlist__title_txt">
								<a href="" class="js_album" >过节</a></span> 
								<a href="" class="btn_operate_menu js_albumlist_more">
								<span class="icon_txt">更多</span></a>
							</h4>
							<div class="playlist__author">
								<a href="" class="js_singer" title="简弘亦">简弘亦</a>
							</div>
						</div>
					</li>
					
					
					
					
					
					
					
				</ul>
			</div>
			<div class="mod_slide_switch js_switch"
				data-stat="y_new.index.album.pager">
				<a href="javascript:;" tabindex="-1"
					class="js_jump slide_switch__item slide_switch__item--current"
					data-stat="y_new.index.album.pager" data-p="0"><i
					class="slide_switch__bg"></i><i class="icon_txt">1</i></a><a
					href="javascript:;" tabindex="-1"
					class="js_jump slide_switch__item"
					data-stat="y_new.index.album.pager" data-p="1"><i
					class="slide_switch__bg"></i><i class="icon_txt">2</i></a><a
					href="javascript:;" tabindex="-1"
					class="js_jump slide_switch__item"
					data-stat="y_new.index.album.pager" data-p="2"><i
					class="slide_switch__bg"></i><i class="icon_txt">3</i></a><a
					href="javascript:;" tabindex="-1"
					class="js_jump slide_switch__item"
					data-stat="y_new.index.album.pager" data-p="3"><i
					class="slide_switch__bg"></i><i class="icon_txt">4</i></a>
			</div>
		</div>
		<div class="mod_slide_action">
			<div class="slide_action slide_action--left">
				<a href="javascript:;" id="albumlistPreLi"
					class="slide_action__btn slide_action__btn--left js_jump"
					data-p="prev" data-stat="y_new.index.album.pager" tabindex="-1"><i
					class="icon_txt">上一页</i><i
					class="slide_action__arrow slide_action__arrow--left"></i></a>
			</div>
			<div class="slide_action slide_action--right">
				<a href="javascript:;" id="albumlistNextLi"
					class="slide_action__btn slide_action__btn--right js_jump"
					data-p="next" data-stat="y_new.index.album.pager" tabindex="-1"><i
					class="icon_txt">下一页</i><i
					class="slide_action__arrow slide_action__arrow--right"></i></a>
			</div>
		</div>
	</div>
	<!-- 精彩推荐 -->
	<div class="mod_index mod_index--event mod_slide_box" id="focus">
		<div class="section_inner">
			<div class="index__hd">
				<h2 class="index__tit" style="color:#000; font-size: 40px;">
					精彩推荐</h2>
				<i class="index__line index__line--left"></i> 
				<i class="index__line index__line--right"></i>
			</div>
			<div class="mod_event mod_slide mod_focus--animate">
				<ul class="event_list slide__list">

					<li class="event_list__item slide__item js_focus_pic p1" id="P1"
						data-idx="6"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="https://y.qq.com/msa/227/1_2849.html"> <img
							src="images/11.jpg"
							class="event_list__pic" alt="YQQ电音联动">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p2" id="P2"
						data-idx="5"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="https://y.qq.com/msa/226/1_2847.html"> <img
							src="images/22.jpg"
							class="event_list__pic" alt="YQQ The Chainsmokers">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p3" id="P3"
						data-idx="4"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="http://y.qq.com/vip/hh1vip1/index.html"> <img
							src="images/33.jpg"
							class="event_list__pic" alt="pc+yqq：一元升级豪华">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p4" id="P4"
						data-idx="3"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="10014"
						data-stat="y_new.index.focus.click" data-id="1758752341"> <img
							src="images/44.jpg"
							class="event_list__pic" alt="厉害了，我的歌">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p5" id="P5"
						data-idx="2"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="10002"
						data-stat="y_new.index.focus.click" data-id="001z8qcm1JUtwk">
							<img
							src="images/55.jpg"
							class="event_list__pic" alt="小马丁PC+YQQ">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p6" id="P6"
						data-idx="1"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="10002"
						data-stat="y_new.index.focus.click" data-id="003oCYtF074aUH">
							<img
							src="images/66.jpg"
							class="event_list__pic" alt="YQQ 金曲捞第一期">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p7" id="P7"
						data-idx="0"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="https://c.y.qq.com/r/cIye?id=1877342&amp;g_f=yqqjiaodian">
							<img
							src="images/77.jpg"
							class="event_list__pic" alt="YQQ-速8正售">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p8" id="P8"
						data-idx="8"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="https://y.qq.com/n/yqq/mv/c/uvoexkrvvmwuf8b.html"> <img
							src="images/88.jpg"
							class="event_list__pic" alt="这个四月剧有意思">
					</a></li>

					<li class="event_list__item slide__item js_focus_pic p9" id="P9"
						data-idx="7"><a href="javascript:;"
						class="event_list__link js_focus_jump" data-type="3002"
						data-stat="y_new.index.focus.click"
						data-id="https://y.qq.com/msa/209/1_2829.html"> <img
							src="images/99.jpg"
							class="event_list__pic" alt="封面控YQQ">
					</a></li>
				</ul>
			</div>
			<div class="mod_slide_switch js_focus_index">

				<a href="javascript:;" tabindex="-1" data-index="0"
					class="slide_switch__item"><i class="slide_switch__bg"></i><i
					class="icon_txt">1</i></a> <a href="javascript:;" tabindex="-1"
					data-index="1" class="slide_switch__item"><i
					class="slide_switch__bg"></i><i class="icon_txt">2</i></a> <a
					href="javascript:;" tabindex="-1" data-index="2"
					class="slide_switch__item"><i class="slide_switch__bg"></i><i
					class="icon_txt">3</i></a> <a href="javascript:;" tabindex="-1"
					data-index="3" class="slide_switch__item"><i
					class="slide_switch__bg"></i><i class="icon_txt">4</i></a> <a
					href="javascript:;" tabindex="-1" data-index="4"
					class="slide_switch__item"><i class="slide_switch__bg"></i><i
					class="icon_txt">5</i></a> <a href="javascript:;" tabindex="-1"
					data-index="5" class="slide_switch__item"><i
					class="slide_switch__bg"></i><i class="icon_txt">6</i></a> <a
					href="javascript:;" tabindex="-1" data-index="6"
					class="slide_switch__item"><i class="slide_switch__bg"></i><i
					class="icon_txt">7</i></a> <a href="javascript:;" tabindex="-1"
					data-index="7" class="slide_switch__item"><i
					class="slide_switch__bg"></i><i class="icon_txt">8</i></a> <a
					href="javascript:;" tabindex="-1" data-index="8"
					class="slide_switch__item slide_switch__item--current"><i
					class="slide_switch__bg"></i><i class="icon_txt">9</i></a>

			</div>
			
		</div>
		<div class="mod_slide_action">
				<div class="slide_action slide_action--left">
					<a href="javascript:;" id="preLi"
						class="slide_action__btn slide_action__btn--left js_jump"
						data-p="prev" data-stat="y_new.index.album.pager" tabindex="-1"><i
						class="icon_txt">上一页</i><i
						class="slide_action__arrow slide_action__arrow--left"></i></a>
				</div>
				<div class="slide_action slide_action--right">
					<a href="javascript:;" id="nextLi"
						class="slide_action__btn slide_action__btn--right js_jump"
						data-p="next" data-stat="y_new.index.album.pager" tabindex="-1"><i
						class="icon_txt">下一页</i><i
						class="slide_action__arrow slide_action__arrow--right"></i></a>
				</div>
			</div>
	</div>
	
	
	
	<!-- 图片排行榜 -->
	<div id="toplist_box">
		<div class="mod_index mod_index--top mod_slide_box">
			<div class="section_inner">
				<div class="index__hd">
					<h2 class="index__tit" style="color: #ffffff; font-size: 40px;">
						图片排行榜</h2>
					<i class="index__line index__line--left"></i> <i
						class="index__line index__line--right"></i>
				</div>
				<a
					href="https://y.qq.com/n/yqq/toplist/4.html#stat=y_new.index.toplist.more"
					class="index__more index__more--white">全部
					<i class="icon_index_arrow"></i>
					</a>

				<div class="mod_toplist">
					<ul class="toplist__list">

						<li class="toplist__item toplist__item--pop mod_cover">
							<div class="toplist__bg"></div> <i class="mod_cover__mask"></i> <i
							class="mod_cover__icon_play js_play_toplist"
							data-stat="y_new.index.toplist.play1" data-id="4" data-type="0"
							data-date="2017-04-14"></i> <i class="toplist__line"></i>
							<h3 class="toplist__hd">
								<a
									href="https://y.qq.com/n/yqq/toplist/4.html?stat=y_new.index.toplist.detail1"
									data-id="4" class="toplist__tit js_toplist"
									data-stat="y_new.index.toplist.detail1"><i
									class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i>
									<div class="toplist__tit_pop">流行指数</div>
								</a>
							</h3>
							<ul class="toplist__songlist">

								<li class="toplist__song">
									<div class="toplist__number">1</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201697348_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201697348"
											data-stat="y_new.index.toplist.songname">暧昧</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/5062_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="5062"
											data-stat="y_new.index.toplist.singername">薛之谦</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">2</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201675905_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201675905"
											data-stat="y_new.index.toplist.songname">不散，不见 (Live)</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/199515_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="199515"
											data-stat="y_new.index.toplist.singername">张碧晨</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">3</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201712321_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201712321"
											data-stat="y_new.index.toplist.songname">星辰</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/6499_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="6499"
											data-stat="y_new.index.toplist.singername">张杰</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">4</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201675908_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201675908"
											data-stat="y_new.index.toplist.songname">我的王国 + We Will
											Rock You (Live)</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/6499_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="6499"
											data-stat="y_new.index.toplist.singername">张杰</a>
									</div>
								</li>

							</ul>
						</li>

						<li class="toplist__item toplist__item--new mod_cover">
							<div class="toplist__bg"></div> <i class="mod_cover__mask"></i> <i
							class="mod_cover__icon_play js_play_toplist"
							data-stat="y_new.index.toplist.play2" data-id="26" data-type="0"
							data-date="2017_15"></i> <i class="toplist__line"></i>
							<h3 class="toplist__hd">
								<a
									href="https://y.qq.com/n/yqq/toplist/26.html?stat=y_new.index.toplist.detail2"
									data-id="26" class="toplist__tit js_toplist"
									data-stat="y_new.index.toplist.detail2"><i
									class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i>
									<div class="toplist__tit_pop">热歌</div></a>
							</h3>
							<ul class="toplist__songlist">

								<li class="toplist__song">
									<div class="toplist__number">1</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201697348_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201697348"
											data-stat="y_new.index.toplist.songname">暧昧</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/5062_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="5062"
											data-stat="y_new.index.toplist.singername">薛之谦</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">2</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/200380820_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="200380820"
											data-stat="y_new.index.toplist.songname">凉凉</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/11608_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="11608"
											data-stat="y_new.index.toplist.singername">杨宗纬/张碧晨</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">3</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201452010_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201452010"
											data-stat="y_new.index.toplist.songname">动物世界</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/5062_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="5062"
											data-stat="y_new.index.toplist.singername">薛之谦</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">4</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/107192078_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="107192078"
											data-stat="y_new.index.toplist.songname">告白气球</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/4558_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="4558"
											data-stat="y_new.index.toplist.singername">周杰伦</a>
									</div>
								</li>

							</ul>
						</li>

						<li class="toplist__item toplist__item--hot mod_cover">
							<div class="toplist__bg"></div> <i class="mod_cover__mask"></i> <i
							class="mod_cover__icon_play js_play_toplist"
							data-stat="y_new.index.toplist.play3" data-id="27" data-type="0"
							data-date="2017-04-14"></i> <i class="toplist__line"></i>
							<h3 class="toplist__hd">
								<a
									href="https://y.qq.com/n/yqq/toplist/27.html?stat=y_new.index.toplist.detail3"
									data-id="27" class="toplist__tit js_toplist"
									data-stat="y_new.index.toplist.detail3"><i
									class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i>
									<div class="toplist__tit_pop">新歌</div></a>
							</h3>
							<ul class="toplist__songlist">

								<li class="toplist__song">
									<div class="toplist__number">1</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201697348_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201697348"
											data-stat="y_new.index.toplist.songname">暧昧</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/5062_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="5062"
											data-stat="y_new.index.toplist.singername">薛之谦</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">2</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201712321_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201712321"
											data-stat="y_new.index.toplist.songname">星辰</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/6499_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="6499"
											data-stat="y_new.index.toplist.singername">张杰</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">3</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/200981920_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="200981920"
											data-stat="y_new.index.toplist.songname">Good Life</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/166980_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="166980"
											data-stat="y_new.index.toplist.singername">G-Eazy/Kehlani</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">4</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201712191_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201712191"
											data-stat="y_new.index.toplist.songname">注定</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/4610_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="4610"
											data-stat="y_new.index.toplist.singername">周笔畅/白举纲</a>
									</div>
								</li>

							</ul>
						</li>

						<li class="toplist__item toplist__item--high mod_cover">
							<div class="toplist__bg"></div> <i class="mod_cover__mask"></i> <i
							class="mod_cover__icon_play js_play_toplist"
							data-stat="y_new.index.toplist.play4" data-id="3" data-type="0"
							data-date="2017_15"></i> <i class="toplist__line"></i>
							<h3 class="toplist__hd">
								<a
									href="https://y.qq.com/n/yqq/toplist/3.html?stat=y_new.index.toplist.detail4"
									data-id="3" class="toplist__tit js_toplist"
									data-stat="y_new.index.toplist.detail4"><i
									class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i>
									<div class="toplist__tit_pop">欧美</div></a>
							</h3>
							<ul class="toplist__songlist">

								<li class="toplist__song">
									<div class="toplist__number">1</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201633969_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201633969"
											data-stat="y_new.index.toplist.songname">Ignite
											(Instrumental)</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/944940_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="944940"
											data-stat="y_new.index.toplist.singername">Alan
											Walker/K-391</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">2</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201181633_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201181633"
											data-stat="y_new.index.toplist.songname">Naked</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/22499_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="22499"
											data-stat="y_new.index.toplist.singername">Christopher</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">3</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201507420_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201507420"
											data-stat="y_new.index.toplist.songname">Heatstroke</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/13554_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="13554"
											data-stat="y_new.index.toplist.singername">Calvin
											Harris/Young Thug/Pharrell Williams/Ariana Grande</a>
									</div>
								</li>

								<li class="toplist__song">
									<div class="toplist__number">4</div>
									<div class="toplist__songname">
										<a
											href="https://y.qq.com/n/yqq/song/201604280_num.html#stat=y_new.index.toplist.songname"
											class="js_song" data-id="201604280"
											data-stat="y_new.index.toplist.songname">漂流爱情</a>
									</div>
									<div class="toplist__artist">
										<a
											href="https://y.qq.com/n/yqq/singer/453_num.html#stat=y_new.index.toplist.singername"
											class="js_singer" data-singerid="453"
											data-stat="y_new.index.toplist.singername">Michael Learns
											To Rock/杨斯捷</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 热门图片 -->
	<div id="taogelist_box">
		<div class="mod_index mod_index--hot mod_slide_box">
			<div class="section_inner">
				<div class="index__hd">
					<h2 class="index__tit" style="color: #000; font-size: 40px;">
						热门图片</h2>
					<i class="index__line index__line--left"></i> <i
						class="index__line index__line--right"></i>
				</div>
				<div class="mod_playlist mod_slide">
					<!-- 偶数加 playlist__item--even -->
					<ul class="playlist__list slide__list" >

						<li class="playlist__item  playlist__item--even  slide__item"
							onmouseover="this.className=(this.className+' playlist__item--hover')"
							onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')"
							data-disstid="1758477238">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover">
									<a
										href="https://y.qq.com/n/yqq/playlist/1758477238.html#stat=y_new.index.playlist.pic"
										class="js_playlist" data-stat="y_new.index.playlist.pic"
										data-disstid="1758477238"><img
										src="images/1.jpg"
										onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;"
										alt="尘缘苦短，国内正气电视剧原声精选" class="playlist__pic"><i
										class="mod_cover__mask"></i><i
										class="mod_cover__icon_play js_play"
										data-stat="y_new.index.playlist.play_btn"></i></a>
								</div>
								<h4 class="playlist__title">
									<span class="playlist__title_txt"><a
										href="https://y.qq.com/n/yqq/playlist/1758477238.html#stat=y_new.index.playlist.name"
										class="js_playlist" data-stat="y_new.index.playlist.name"
										data-disstid="1758477238" title="尘缘苦短，国内正气电视剧原声精选">尘缘苦短，国内正气电视剧原声精选</a></span>
									<a href="javascript:;"
										class="btn_operate_menu js_playlist_more"
										data-stat="y_new.index.playlist.more" data-type="3"
										data-mid="1758477238"><span class="icon_txt">更多</span></a>
								</h4>

								<div class="playlist__other">播放量：7.7万</div>
							</div>
						</li>

						<li class="playlist__item  slide__item"
							onmouseover="this.className=(this.className+' playlist__item--hover')"
							onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')"
							data-disstid="2361486529">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover">
									<a
										href="https://y.qq.com/n/yqq/playlist/2361486529.html#stat=y_new.index.playlist.pic"
										class="js_playlist" data-stat="y_new.index.playlist.pic"
										data-disstid="2361486529"><img
										src="images/2.jpg"
										onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;"
										alt="回忆杀|那些藏在歌声里的人和故事" class="playlist__pic"><i
										class="mod_cover__mask"></i><i
										class="mod_cover__icon_play js_play"
										data-stat="y_new.index.playlist.play_btn"></i></a>
								</div>
								<h4 class="playlist__title">
									<span class="playlist__title_txt"><a
										href="https://y.qq.com/n/yqq/playlist/2361486529.html#stat=y_new.index.playlist.name"
										class="js_playlist" data-stat="y_new.index.playlist.name"
										data-disstid="2361486529" title="回忆杀|那些藏在歌声里的人和故事">回忆杀|那些藏在歌声里的人和故事</a></span>
									<a href="javascript:;"
										class="btn_operate_menu js_playlist_more"
										data-stat="y_new.index.playlist.more" data-type="3"
										data-mid="2361486529"><span class="icon_txt">更多</span></a>
								</h4>

								<div class="playlist__other">播放量：10.3万</div>
							</div>
						</li>

						<li class="playlist__item  playlist__item--even  slide__item"
							onmouseover="this.className=(this.className+' playlist__item--hover')"
							onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')"
							data-disstid="2052943860">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover">
									<a
										href="https://y.qq.com/n/yqq/playlist/2052943860.html#stat=y_new.index.playlist.pic"
										class="js_playlist" data-stat="y_new.index.playlist.pic"
										data-disstid="2052943860"><img
										src="images/3.jpg"
										onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;"
										alt="J.Fla翻唱，迷人的嗓音" class="playlist__pic"><i
										class="mod_cover__mask"></i><i
										class="mod_cover__icon_play js_play"
										data-stat="y_new.index.playlist.play_btn"></i></a>
								</div>
								<h4 class="playlist__title">
									<span class="playlist__title_txt"><a
										href="https://y.qq.com/n/yqq/playlist/2052943860.html#stat=y_new.index.playlist.name"
										class="js_playlist" data-stat="y_new.index.playlist.name"
										data-disstid="2052943860" title="J.Fla翻唱，迷人的嗓音">J.Fla翻唱，迷人的嗓音</a></span>
									<a href="javascript:;"
										class="btn_operate_menu js_playlist_more"
										data-stat="y_new.index.playlist.more" data-type="3"
										data-mid="2052943860"><span class="icon_txt">更多</span></a>
								</h4>

								<div class="playlist__other">播放量：30.7万</div>
							</div>
						</li>

						<li class="playlist__item  slide__item"
							onmouseover="this.className=(this.className+' playlist__item--hover')"
							onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')"
							data-disstid="1157243437">
							<div class="playlist__item_box">
								<div class="playlist__cover mod_cover">
									<a
										href="https://y.qq.com/n/yqq/playlist/1157243437.html#stat=y_new.index.playlist.pic"
										class="js_playlist" data-stat="y_new.index.playlist.pic"
										data-disstid="1157243437"><img
										src="images/4.jpg"
										onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;"
										alt="华语虐心50首：分开，是一个人的寂寞" class="playlist__pic"><i
										class="mod_cover__mask"></i><i
										class="mod_cover__icon_play js_play"
										data-stat="y_new.index.playlist.play_btn"></i></a>
								</div>
								<h4 class="playlist__title">
									<span class="playlist__title_txt"><a
										href="https://y.qq.com/n/yqq/playlist/1157243437.html#stat=y_new.index.playlist.name"
										class="js_playlist" data-stat="y_new.index.playlist.name"
										data-disstid="1157243437" title="华语虐心50首：分开，是一个人的寂寞">华语虐心50首：分开，是一个人的寂寞</a></span>
									<a href="javascript:;"
										class="btn_operate_menu js_playlist_more"
										data-stat="y_new.index.playlist.more" data-type="3"
										data-mid="1157243437"><span class="icon_txt">更多</span></a>
								</h4>

								<div class="playlist__other">播放量：193.4万</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="mod_slide_switch js_switch"
					data-stat="y_new.index.playlist.pager">
					<a href="javascript:;" tabindex="-1"
						class="js_jump slide_switch__item slide_switch__item--current"
						data-stat="y_new.index.playlist.pager" data-p="0"><i
						class="slide_switch__bg"></i><i class="icon_txt">1</i></a><a
						href="javascript:;" tabindex="-1"
						class="js_jump slide_switch__item"
						data-stat="y_new.index.playlist.pager" data-p="1"><i
						class="slide_switch__bg"></i><i class="icon_txt">2</i></a><a
						href="javascript:;" tabindex="-1"
						class="js_jump slide_switch__item"
						data-stat="y_new.index.playlist.pager" data-p="2"><i
						class="slide_switch__bg"></i><i class="icon_txt">3</i></a>
				</div>
			</div>
			<div class="mod_slide_action">
				<div class="slide_action slide_action--left">
					<a href="javascript:;"
						class="slide_action__btn slide_action__btn--left js_jump"
						data-p="prev" tabindex="-1" data-stat="y_new.index.playlist.pager"><i
						class="icon_txt">上一页</i><i
						class="slide_action__arrow slide_action__arrow--left"></i></a>
				</div>
				<div class="slide_action slide_action--right">
					<a href="javascript:;"
						class="slide_action__btn slide_action__btn--right js_jump"
						data-p="next" tabindex="-1" data-stat="y_new.index.playlist.pager"><i
						class="icon_txt">下一页</i><i
						class="slide_action__arrow slide_action__arrow--right"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- 航拍首播 -->
	<div class="mod_index mod_index--mv mod_slide_box" id="mvlist">
		<div class="section_inner">
			<div class="index__hd">
				<h2 class="index__tit" style="color: #000; font-size: 40px;">
					航拍首播</h2>
				<i class="index__line index__line--left"></i> <i
					class="index__line index__line--right"></i>
			</div>
			<a href="//y.qq.com/portal/mv_lib.html#stat=y_new.index.mv.more"
				class="index__more js_mvlist_more">全部<i class="icon_index_arrow"></i></a>
			<!-- 切换 -->
			<div class="mod_index_tab">

				<a href="//y.qq.com/portal/mv_lib.html" data-type="0" data-box="mv"
					class="js_tab index_tab__item index_tab__item--current"
					data-stat="y_new.index.mv.0">全部</a> <a
					href="//y.qq.com/portal/mv_lib.html#t2=1" data-type="1"
					data-box="mv" class="js_tab index_tab__item"
					data-stat="y_new.index.mv.1">内地</a> <a
					href="//y.qq.com/portal/mv_lib.html#t2=2" data-type="2"
					data-box="mv" class="js_tab index_tab__item"
					data-stat="y_new.index.mv.2">港台</a> <a
					href="//y.qq.com/portal/mv_lib.html#t2=3" data-type="3"
					data-box="mv" class="js_tab index_tab__item"
					data-stat="y_new.index.mv.3">欧美</a> <a
					href="//y.qq.com/portal/mv_lib.html#t2=4" data-type="4"
					data-box="mv" class="js_tab index_tab__item"
					data-stat="y_new.index.mv.4">韩国</a> <a
					href="//y.qq.com/portal/mv_lib.html#t2=5" data-type="5"
					data-box="mv" class="js_tab index_tab__item"
					data-stat="y_new.index.mv.5">日本</a>

			</div>
			<div class="mod_mv">
				<ul class="mv_list__list">


					<li class="mv_list__item" data-vid="e0023ldf6b3" data-id="1215366">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/e0023ldf6b3.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="e0023ldf6b3"
								data-id="1215366" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/e0023ldf6b3_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="18"> <i class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/e0023ldf6b3.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="e0023ldf6b3" data-id="1215366" title="18">18</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/003gNFzb0MYOnM.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="003gNFzb0MYOnM"
									data-stat="y_new.index.mv.singername" data-singerid="260"
									title="李玟">李玟</a>
								<!--div class="mv_list__info">2017-04-14</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>2万</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="s0023g3crzs" data-id="1214266">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/s0023g3crzs.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="s0023g3crzs"
								data-id="1214266" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/s0023g3crzs_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="蓝孩子 (《蓝精灵：寻找神秘村》中国区主题推广曲）"> <i
								class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/s0023g3crzs.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="s0023g3crzs" data-id="1214266"
									title="蓝孩子 (《蓝精灵：寻找神秘村》中国区主题推广曲）">蓝孩子 (《蓝精灵：寻找神秘村》中国区主题推广曲）</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/003Augcx1XmqVh.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="003Augcx1XmqVh"
									data-stat="y_new.index.mv.singername" data-singerid="945054"
									title="苏运莹">苏运莹</a>
								<!--div class="mv_list__info">2017-04-12</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>4119</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="h0023rpm1dh" data-id="1212625">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/h0023rpm1dh.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="h0023rpm1dh"
								data-id="1212625" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/h0023rpm1dh_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="饿狼传说 (BANG THE WORLD Live)"> <i
								class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/h0023rpm1dh.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="h0023rpm1dh" data-id="1212625"
									title="饿狼传说 (BANG THE WORLD Live)">饿狼传说 (BANG THE WORLD
									Live)</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/000aw4WC2EQYTv.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="000aw4WC2EQYTv"
									data-stat="y_new.index.mv.singername" data-singerid="4607"
									title="张靓颖">张靓颖</a>
								<!--div class="mv_list__info">2017-04-14</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>4.1万</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="k0023dm99s7" data-id="1214259">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/k0023dm99s7.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="k0023dm99s7"
								data-id="1214259" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/k0023dm99s7_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="Go go power rangers (《超凡战队》中国大陆地区电影推广曲)"> <i
								class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/k0023dm99s7.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="k0023dm99s7" data-id="1214259"
									title="Go go power rangers (《超凡战队》中国大陆地区电影推广曲)">Go go power
									rangers (《超凡战队》中国大陆地区电影推广曲)</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/0015sj5d2zFYL8.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="0015sj5d2zFYL8"
									data-stat="y_new.index.mv.singername" data-singerid="1358209"
									title="迪玛希Dimash">迪玛希Dimash</a>
								<!--div class="mv_list__info">2017-04-12</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>5.2万</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="t0023yo5zef" data-id="1214331">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/t0023yo5zef.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="t0023yo5zef"
								data-id="1214331" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/t0023yo5zef_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="慢慢习惯"> <i class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/t0023yo5zef.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="t0023yo5zef" data-id="1214331" title="慢慢习惯">慢慢习惯</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/003aQYLo2x8izP.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="003aQYLo2x8izP"
									data-stat="y_new.index.mv.singername" data-singerid="163"
									title="刘德华">刘德华</a>
								<!--div class="mv_list__info">2017-04-12</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>4.1万</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="k00233vvgmp" data-id="1215317">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/k00233vvgmp.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="k00233vvgmp"
								data-id="1215317" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/k00233vvgmp_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="Run Up"> <i class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/k00233vvgmp.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="k00233vvgmp" data-id="1215317" title="Run Up">Run
									Up</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/001J99OK2689F4.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="001J99OK2689F4"
									data-stat="y_new.index.mv.singername" data-singerid="38150"
									title="Major Lazer">Major Lazer</a>
								<!--div class="mv_list__info">2017-04-12</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>3540</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="n0023igllz6" data-id="1214840">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/n0023igllz6.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="n0023igllz6"
								data-id="1214840" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/n0023igllz6_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="青云直上"> <i class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/n0023igllz6.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="n0023igllz6" data-id="1214840" title="青云直上">青云直上</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/0021sRlK1Ge1aY.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="0021sRlK1Ge1aY"
									data-stat="y_new.index.mv.singername" data-singerid="5829"
									title="凤凰传奇">凤凰传奇</a>
								<!--div class="mv_list__info">2017-04-13</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>1.4万</span>
							</div>
							<p></p>
						</div>
					</li>


					<li class="mv_list__item" data-vid="x0023dtt1b6" data-id="1215395">
						<div class="mv_list__item_box">
							<a
								href="https://y.qq.com/n/yqq/mv/v/x0023dtt1b6.html#stat=y_new.index.mv.play_btn"
								class="mv_list__cover mod_cover js_mv"
								data-stat="y_new.index.mv.play_btn" data-vid="x0023dtt1b6"
								data-id="1215395" hidefocus="true"> <img
								class="mv_list__pic"
								src="//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000"
								data-original="//shp.qpic.cn/qqvideo_ori/0/x0023dtt1b6_360_204/0"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;"
								alt="Ja må du leva"> <i class="mod_cover__icon_play"></i>
							</a>
							<h3 class="mv_list__title">
								<a
									href="https://y.qq.com/n/yqq/mv/v/x0023dtt1b6.html#stat=y_new.index.mv.mvname"
									class="js_mv" data-stat="y_new.index.mv.mvname"
									data-vid="x0023dtt1b6" data-id="1215395" title="Ja må du leva">Ja
									må du leva</a>
							</h3>
							<p class="mv_list__singer">
								<a
									href="https://y.qq.com/n/yqq/singer/003HcPBe487z7O.html#stat=y_new.index.mv.singername"
									class="js_singer" data-singermid="003HcPBe487z7O"
									data-stat="y_new.index.mv.singername" data-singerid="10877"
									title="Darin">Darin</a>
								<!--div class="mv_list__info">2017-04-12</div-->
							</p>
							<div class="mv_list__info">
								<span class="mv_list__listen"><i
									class="mv_list__listen_icon sprite"></i>1489</span>
							</div>
							<p></p>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>

	<div class="footer" role="footer">
		<div class="section_inner">
			<div class="footer_info">

				<div class="footer_download">
					<h3 class="footer_tit">下载QQ音乐客户端</h3>
					<ul class="footer_download_list">
						<li class="footer_download_list__item"><a
							href="//y.qq.com/download/" class="js_footer_down" data-type="pc"
							data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span
									class="icon_txt">QQ音乐</span></i>PC版</a></li>
						<li class="footer_download_list__item"><a
							href="//y.qq.com/download/" class="js_footer_down"
							data-type="mac" data-stat="y_new.footer.download.mac"><i
								class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a></li>
						<li class="footer_download_list__item"><a
							href="//y.qq.com/download/" class="js_footer_down"
							data-type="andriod" data-stat="y_new.footer.download.andriod"><i
								class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a></li>
						<li class="footer_download_list__item"><a
							href="//y.qq.com/download/" class="js_footer_down"
							data-type="iphone" data-stat="y_new.footer.download.iphone"><i
								class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a></li>
					</ul>
				</div>

				<div class="footer_product">
					<h3 class="footer_tit">特色产品</h3>
					<ul class="footer_product_list">
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a></li>
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://y.qq.com/vip/voice_intro/index.html" target="_blank"
							class="js_other_link"
							data-stat="y_new.footer.other_music.supersound"><i
								class="icon_qm_ss"></i>Super Sound</a></li>
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.qplay"><i
								class="icon_qm_qp"></i>QPlay</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/cp/homepage.html#/home?from=yqq"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>
						<li class="footer_product_list__item"><a
							href="//y.qq.com/portal/mv/mv_upload.html" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_music.ugc">上传视频</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/y/static/down/car_introduce.html"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
					</ul>
				</div>

				<div class="footer_link">
					<h3 class="footer_tit">合作链接</h3>
					<!-- 显示全部 footer_link_list--show -->
					<ul class="footer_link_list">
						<li class="footer_link_list__item"><a
							href="//y.qq.com/portal/company_detail.html?id=297"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">CJ E&amp;M</a></li>
						<li class="footer_link_list__item"><a href="http://v.qq.com/"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">腾讯视频</a></li>
						<li class="footer_link_list__item"><a
							href="http://z.qzone.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">手机QQ空间</a></li>
						<li class="footer_link_list__item"><a
							href="http://im.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">最新版QQ</a></li>
						<li class="footer_link_list__item"><a
							href="http://e.qq.com/index.shtml" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a></li>
						<li class="footer_link_list__item"><a
							href="http://guanjia.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a></li>
						<li class="footer_link_list__item"><a
							href="http://browser.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a></li>
						<li class="footer_link_list__item"><a
							href="http://huabao.qzone.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">画报</a></li>
						<li class="footer_link_list__item"><a
							href="http://act.qzone.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a></li>
						<li class="footer_link_list__item"><a
							href="http://xing.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">星钻</a></li>
						<li class="footer_link_list__item"><a
							href="http://www.weiyun.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a></li>
						<li class="footer_link_list__item js_last" style="display: none;"><a
							href="http://fm.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">企鹅FM</a></li>
						<li class="footer_link_list__item"><a href="javascript:;"
							class="js_footer_more">更多</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="https://www.qcloud.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://buluo.qq.com/ " target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="https://ke.qq.com/?from=100 " target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://yunsou.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://bbs.qcloud.com/ " target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://www.znds.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">智能电视网</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://www.dangbei.com/ " target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a></li>
					</ul>
				</div>
			</div>
			<div class="footer_copyright">

				<p>
					<a href="http://www.tencent.com/" rel="nofollow" target="_blank"
						title="关于腾讯">关于腾讯</a> | <a
						href="http://www.tencent.com/index_e.shtml" rel="nofollow"
						target="_blank" title="About Tencent">About Tencent</a> | <a
						href="http://www.qq.com/contract.shtml" rel="nofollow"
						target="_blank" title="服务条款">服务条款</a> | <a
						href="http://y.qq.com/y/static/tips/service_tips.html"
						rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> | <a
						href="http://www.qq.com/privacy.htm" rel="nofollow"
						target="_blank" title="隐私政策">隐私政策</a> | <a
						href="http://www.tencentmind.com/" rel="nofollow" target="_blank"
						title="广告服务">广告服务</a> | <a href="http://hr.tencent.com/"
						rel="nofollow" target="_blank" title="腾讯招聘">腾讯招聘</a> | <a
						href="http://service.qq.com/" rel="nofollow" target="_blank"
						title="客服中心">客服中心</a> | <a href="http://www.qq.com/map/"
						rel="nofollow" target="_blank" title="网站导航">网站导航</a>
				</p>

				<p>
					Copyright © 1998 -
					<script type="text/javascript">
						document.write(new Date().getFullYear());
					</script>
					2017 Tencent. <a target="_blank"
						href="http://www.tencent.com/en-us/le/copyrightstatement.shtml"
						rel="nofollow" title="All Rights Reserved.">All Rights
						Reserved.</a>
				</p>
				<p>
					腾讯公司 <a target="_blank"
						href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml"
						rel="nofollow" title="版权所有">版权所有</a> <a target="_blank"
						href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm"
						rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
				</p>
			</div>
		</div>
	</div>

	<a href="javascript:;"
		class="btn_bottom_feedback sprite js_btn_feedback"><span
		class="icon_txt">意见反馈</span></a>
	<a href="javascript:;" class="btn_bottom_player js_openplayer"><span
		class="icon_txt">播放器</span></a>
	<div id="divdialog_0"></div>
</body>






<style id="js_style_box">
.event_list__item.p1 {
	-webkit-transform: translate3d(-224px, 0, 0) scale(0.81);
	transform: translate3d(-224px, 0, 0) scale(0.81);
}

.event_list__item.p2 {
	-webkit-transform: translate3d(0px, 0, 0) scale(0.81);
	transform: translate3d(0px, 0, 0) scale(0.81);
	z-index: 2;
}

.event_list__item.p3 {
	-webkit-transform: translate3d(224px, 0, 0) scale(1);
	transform: translate3d(224px, 0, 0) scale(1);
	z-index: 3;
}

.event_list__item.p4 {
	-webkit-transform: translate3d(449px, 0, 0) scale(0.81);
	transform: translate3d(449px, 0, 0) scale(0.81);
	z-index: 2;
}

.event_list__item.p5 {
	-webkit-transform: translate3d(672px, 0, 0) scale(0.81);
	transform: translate3d(672px, 0, 0) scale(0.81);
}

.event_list__item.p6 {
	-webkit-transform: translate3d(896px, 0, 0) scale(0.81);
	transform: translate3d(896px, 0, 0) scale(0.81);
}

.event_list__item.p7 {
	-webkit-transform: translate3d(1120px, 0, 0) scale(0.81);
	transform: translate3d(1120px, 0, 0) scale(0.81);
}

.event_list__item.p8 {
	-webkit-transform: translate3d(1344px, 0, 0) scale(0.81);
	transform: translate3d(1344px, 0, 0) scale(0.81);
}

.event_list__item.p9 {
	-webkit-transform: translate3d(1568px, 0, 0) scale(0.81);
	transform: translate3d(1568px, 0, 0) scale(0.81);
}
</style>
<script type="text/javascript" src="js/dianjilu.js"></script>
</html>