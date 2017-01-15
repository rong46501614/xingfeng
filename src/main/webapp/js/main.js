function cleargo1() {
	if (document.getElementById("serach").value == "搜索") {
		document.getElementById("serach").value = "";
	}
}
function go1() {
	if (document.getElementById("serach").value == "") {
		document.getElementById("serach").style.color = "#c0c0c0";
		document.getElementById("serach").value = "搜索";
	}
}
function gocolor1() {
	if (document.getElementById("serach").value != "搜索") {
		document.getElementById("serach").style.color = "#000000";
	}
}



function cleargo2() {
	if (document.getElementById("userlogin").value == "请输入手机号/邮箱") {
		document.getElementById("userlogin").value = "";
	}
}
function go2() {
	if (document.getElementById("userlogin").value == "") {
		document.getElementById("userlogin").style.color = "#c0c0c0";
		document.getElementById("userlogin").value = "请输入手机号/邮箱";
	}
}
function gocolor2() {
	if (document.getElementById("userlogin").value != "请输入手机号/邮箱") {
		document.getElementById("userlogin").style.color = "#000000";
	}
}


function cleargo3() {
	if (document.getElementById("userpasswd").value == "密码") {
		document.getElementById("userpasswd").value = "";
	}
}
function go3() {
	if (document.getElementById("userpasswd").value == "") {
		document.getElementById("userpasswd").style.color = "#c0c0c0";
		document.getElementById("userpasswd").value = "密码";
	}
}

function gocolor3() {
	if (document.getElementById("userpasswd").value != "密码") {
		document.getElementById("userpasswd").style.color = "#000000";
	}
}


function cleargo4() {
	if (document.getElementById("serachBaiduImg").value == "搜索百度图片") {
		document.getElementById("serachBaiduImg").value = "";
	}
}
function go4() {
	if (document.getElementById("serachBaiduImg").value == "") {
		document.getElementById("serachBaiduImg").style.color = "#c0c0c0";
		document.getElementById("serachBaiduImg").value = "搜索百度图片";
	}
}

function getBaiduImgs(event){
	if(event.keyCode==13){ 
		document.getElementById("hiddenb").value = "1";
		var obaidu_crccz=document.getElementById("baidu_crccz");
		var obaidudiv1=document.getElementById("odiv1");
		var obaidudiv2=document.getElementById("odiv2");
		var obaidudiv3=document.getElementById("odiv3");
		var obaidudiv4=document.getElementById("odiv4");
		var obaidudiv5=document.getElementById("odiv5");
		if(obaidudiv1!=null){
			obaidu_crccz.removeChild(obaidudiv1);
			obaidu_crccz.removeChild(obaidudiv2);
			obaidu_crccz.removeChild(obaidudiv3);
			obaidu_crccz.removeChild(obaidudiv4);
			obaidu_crccz.removeChild(obaidudiv5);
		}
		var obaiduImg=document.getElementById("baidu_crccz");
		var odiv1=document.createElement("div");
		var odiv2=document.createElement("div");
		var odiv3=document.createElement("div");
		var odiv4=document.createElement("div");
		var odiv5=document.createElement("div");
		odiv1.style.width="20%";
		odiv2.style.width="20%";
		odiv3.style.width="20%";
		odiv4.style.width="20%";
		odiv5.style.width="20%";
		odiv1.style.float="left";
		odiv2.style.float="left";
		odiv3.style.float="left";
		odiv4.style.float="left";
		odiv5.style.float="left";
		odiv1.id="odiv1";
		odiv2.id="odiv2";
		odiv3.id="odiv3";
		odiv4.id="odiv4";
		odiv5.id="odiv5";
		obaiduImg.appendChild(odiv1);
		obaiduImg.appendChild(odiv2);
		obaiduImg.appendChild(odiv3);
		obaiduImg.appendChild(odiv4);
		obaiduImg.appendChild(odiv5);
		getBaidu(0);
	}    
	
}




//调用百度图片接口
function getBaidu(page){
	var obj=document.getElementById("serachBaiduImg").value;
	obj=obj.replace(/\s+/g, ""); 
	var xhr=XHR();
	xhr.open("post", "xftxBaiduImgAction_getImg.do",true);
	xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
	xhr.send('obj='+obj+"&page="+page);
	var obaiduImg=document.getElementById("baidu_crccz");
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				//服务端返回了正确数据，开始响应处理
				var date=JSON.parse(xhr.responseText).data;
				var odiv=obaiduImg.getElementsByTagName("div");
				for (var int = 0; int < date.length; int++) {
					var i=getOdiv();
					var odivs=odiv[i];
					var Divwidth=odivs.style.width;
					
					var oimg=document.createElement("img");
					odivs.appendChild(oimg);
					oimg.style.width="100%";
					oimg.style.height=date[int].height*(Divwidth/date[int].width);
					var usurl=urlImg(date[int].objURL);
					if(usurl.indexOf("nipic")>0||usurl.indexOf("sinaimg")>0
							||usurl.indexOf("pconline")>0
							||usurl.indexOf("imgsrc")>0
							||usurl.indexOf("sina")>0
							||usurl.indexOf("taopic")>0
							||usurl.indexOf("duitang")>0
							||usurl.indexOf("ywjdsb")>0
							||usurl.indexOf("bjweekly")>0
							||usurl.indexOf("fengdu100")>0
							||usurl.indexOf("xiziwang")>0
							||usurl.indexOf("conline")>0
							||usurl.indexOf("tupianzj")>0
							||usurl.indexOf("stimgcn2")>0
							||usurl.indexOf("hiphotos")>0
							||usurl.indexOf("xdnice")>0
							||usurl.indexOf("poco")>0
							||usurl.indexOf("7239188")>0
							||usurl.indexOf("vdolady")>0
							||usurl.indexOf("kungfunews")>0
							||usurl.indexOf("haonanren")>0
							||usurl.indexOf("fvideo")>0
							||usurl.indexOf("pclady")>0
							||usurl.indexOf("12ren")>0
							||usurl.indexOf("126")>0
							||usurl.indexOf("feiyang")>0
							||usurl.indexOf("huitu")>0
							||usurl.indexOf("citysbs")>0
							||usurl.indexOf("360doc")>0
							||usurl.indexOf("redocn")>0
							||usurl.indexOf("lvyou114")>0
							||usurl.indexOf("cnpp")>0
							||usurl.indexOf("hnehome")>0
							||usurl.indexOf("cnr")>0
							||usurl.indexOf("img10")>0
							||usurl.indexOf("ww1.sinaimg.cn")>0
							||usurl.indexOf("mw690")>0
							||usurl.indexOf("sc115")>0
							||usurl.indexOf("cyol")>0
							||usurl.indexOf("178")>0
							||usurl.indexOf("8090")>0
							||usurl.indexOf("3761")>0
							||usurl.indexOf("zol-img")>0
							||usurl.indexOf("52fuqing")>0
							||usurl.indexOf("xztxt")>0
							||usurl.indexOf("soso")>0
							||usurl.indexOf("huodong")>0
							||usurl.indexOf("hoopchina")>0
							||usurl.indexOf("gexing")>0
							||usurl.indexOf("1234567g")>0
							||usurl.indexOf("sinmeng")>0
							||usurl.indexOf("tvptv")>0
							||usurl.indexOf("attachment")>0
							||usurl.indexOf("ppstream")>0
							||usurl.indexOf("ejinqiao")>0
							||usurl.indexOf("4hw")>0
							||usurl.indexOf("ef43")>0
							||usurl.indexOf("topit")>0
							||usurl.indexOf("enterdesk")>0
					){
						continue;
					}else{
						oimg.src=urlImg(date[int].objURL);
					}
					if(int==date.length-1){
					}
				}
			}
		}
	}
}




//获取高度最小的div
function getOdiv(){
	var obaiduImg=document.getElementById("baidu_crccz");
	var odiv=obaiduImg.getElementsByTagName("div");
	var h=odiv[0].offsetHeight;
	var k=0;
	for (var i = 1; i < odiv.length; i++) {
		if(h>odiv[i].offsetHeight){
			h=odiv[i].offsetHeight;
			k=i;
		}
	}
	return k;
}



//获取高度最小的div
function getimgdiv(){
	var obaiduImg=document.getElementById("imgshowss");
	var odiv=obaiduImg.getElementsByTagName("div");
	var h=odiv[0].offsetHeight;
	var k=0;
	for (var i = 1; i < odiv.length; i++) {
		if(h>odiv[i].offsetHeight){
			h=odiv[i].offsetHeight;
			k=i;
		}
	}
	return k;
}

//获取高度最小的div
function getimgdivhello(){
	var odiv1=document.getElementById("hello1");
	var odiv2=document.getElementById("hello2");
	var odiv3=document.getElementById("hello3");
	var odiv4=document.getElementById("hello4");
	var odiv5=document.getElementById("hello5");
	
	var odiv=[odiv1,odiv2,odiv3,odiv4,odiv5];
	h=odiv[0].offsetHeight;
	var k=0;
	for (var i = 1; i < 5; i++) {
		if(h>odiv[i].offsetHeight){
			h=odiv[i].offsetHeight;
			k=i;
		}
	}
	return k;
}




//百度图片json数据objURL解密
function urlImg(url){
	var f = {   w: "a",   k: "b",   v: "c",   1: "d",   j: "e",   u: "f",   2: "g",   i: "h",   t: "i",   3: "j",   h: "k",   s: "l",   4: "m",   g: "n",   5: "o",   r: "p",   q: "q",   6: "r",   f: "s",   p: "t",   7: "u",   e: "v",   o: "w",   8: "1",   d: "2",   n: "3",   9: "4",   c: "5",   m: "6",   0: "7",   b: "8",   l: "9",   a: "0",   _z2C$q: ":",   "_z&e3B": ".",   AzdH3F: "/"   };  	  
	  var h = /(_z2C\$q|_z&e3B|AzdH3F)/g;  
	  var e = url.replace(h, function(t, e) { return f[e] });	    
	  var s = /([a-w\d])/g;  
	  e = e.replace(s, function(t, e) { return f[e] });  
	  return e;
}

















function gocolor4() {
	if (document.getElementById("serachBaiduImg").value != "搜索百度图片") {
		document.getElementById("serachBaiduImg").style.color = "#000000";
	}
}

function cleargo5() {
	if (document.getElementById("baiduMapAdress").value == "搜索地址") {
		document.getElementById("baiduMapAdress").value = "";
	}
}
function go5() {
	if (document.getElementById("baiduMapAdress").value == "") {
		document.getElementById("baiduMapAdress").style.color = "#c0c0c0";
		document.getElementById("baiduMapAdress").value = "搜索地址";
	}
}

function gocolor5() {
	if (document.getElementById("baiduMapAdress").value != "搜索地址") {
		document.getElementById("baiduMapAdress").style.color = "#000000";
	}
}







function upload(){
	var button=document.getElementById("uploadpic");
	window.location.href='xftxItemAction_additem.do';
	
}








//图片预览
function setImagePreview(avalue) {
	var docObj=document.getElementById("doc");
	 
	var imgObjPreview=document.getElementById("preview");
	if(docObj.files &&docObj.files[0])
	{
	//火狐下，直接设img属性
	imgObjPreview.style.display = 'block';
	//imgObjPreview.style.width = '150px';
	//imgObjPreview.style.height = '180px'; 
	//imgObjPreview.src = docObj.files[0].getAsDataURL();
	 
	//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
	imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
	}
	else
	{
	//IE下，使用滤镜
	docObj.select();
	var imgSrc = document.selection.createRange().text;
	var localImagId = document.getElementById("localImag");
	//必须设置初始大小
	localImagId.style.width = "150px";
	localImagId.style.height = "180px";
	//图片异常的捕捉，防止用户修改后缀来伪造图片
	try{
	localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
	localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
	}
	catch(e)
	{
	alert("您上传的图片格式不正确，请重新选择!");
	return false;
	}
	imgObjPreview.style.display = 'none';
	document.selection.empty();
	}
	return true;
}


function changetype(){
	var oselect=document.getElementById("countryName");
	var selectcity=document.getElementById("selectcity");
	var index=oselect.selectedIndex;
	var countryId = oselect.options[index].value; 
	
	if(countryId=="XFTX001"){
		var xhr=XHR();
		xhr.open("post", "ajaxAction_ajaxPL.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send('countryId='+countryId);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					//服务端返回了正确数据，开始响应处理
					buildselectProvince(xhr);
				}
			}
		}
	}else{
		var xhr=XHR();
		xhr.open("post", "ajaxAction_ajaxCL.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send('countryId='+countryId);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					//服务端返回了正确数据，开始响应处理
					buildselect(xhr);
				}
			}
		}
	}
	
	
	
	
}


function XHR() {
	var xhr;
	try {xhr = new XMLHttpRequest();}
	catch(e) {
		var IEXHRVers =["Msxml3.XMLHTTP","Msxml2.XMLHTTP","Microsoft.XMLHTTP"];
		for (var i=0,len=IEXHRVers.length;i< len;i++) {
			try {xhr = new ActiveXObject(IEXHRVers[i]);}
			catch(e) {continue;}
		}
	}
	return xhr;
}

function buildselect(xhr){
	
	var osec=document.getElementById("osec");
	var osecs=document.getElementById("osecity");
	var date=JSON.parse(xhr.responseText).city;
	if(osec!=null){
		selectcity.removeChild(osec);
	}
	if(osecs!=null){
		selectcity.removeChild(osecs);
	}
	var oSec=document.createElement("select");
	oSec.id="osec";
	oSec.name="itemCity";
	oSec.style.width="20%";
	oSec.style.height="6%";
	oSec.style.float = 'left';
	oSec.style.padding="0";
	oSec.style.color="#000000";
	for(var i=0;i<date.length;i++){
		oSec.options.add(new Option(date[i].cityName,date[i].cityId));
	}
	if(date.length>0){
		selectcity.appendChild(oSec);
	}
	
}

function buildselectcity(xhr){
	var osecity=document.getElementById("osecity");
	var date=JSON.parse(xhr.responseText).city;
	if(osecity!=null){
		selectcity.removeChild(osecity);
	}
	var oSecs=document.createElement("select");
	oSecs.id="osecity";
	oSecs.name="itemCity";
	oSecs.style.width="20%";
	oSecs.style.height="6%";
	oSecs.style.float = 'left';
	oSecs.style.padding="0";
	oSecs.style.color="#000000";
	for(var i=0;i<date.length;i++){
		oSecs.options.add(new Option(date[i].cityName,date[i].cityId));
	}
	if(date.length>0){
		selectcity.appendChild(oSecs);
	}
	
}






function buildselectProvince(xhr){
	var osec=document.getElementById("osec");
	var date=JSON.parse(xhr.responseText).Province;
	if(osec!=null){
		selectcity.removeChild(osec);
	}
	
	var oSec=document.createElement("select");
	oSec.id="osec";
	oSec.addEventListener('change',function(){
		var oselect=document.getElementById("osec");
		var index=oselect.selectedIndex;
		var provinceId = oselect.options[index].value; 
		var xhr=XHR();
		xhr.open("post", "ajaxAction_ajaxCity.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send('provinceId='+provinceId);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					//服务端返回了正确数据，开始响应处理
					buildselectcity(xhr);
				}
			}
		}
	});
	oSec.style.width="20%";
	oSec.style.height="6%";
	oSec.style.float = 'left';
	oSec.style.padding="0";
	oSec.style.color="#000000";
	for(var i=0;i<date.length;i++){
		oSec.options.add(new Option(date[i].cityName,date[i].cityId));
	}
	if(date.length>0){
		selectcity.appendChild(oSec);
	}
}


window.onload = function(){
//	var oClock = document.getElementById("clock");
//	setInterval(getTimes, 1000);
//	getTimes();
//	function getTimes (){
//		var oDate = new Date();
//		var aDate = [oDate.getHours(), oDate.getMinutes(), oDate.getSeconds()];
//		oClock.innerHTML = format(oDate)
//	}
//	function format(a){
//		return a.toString().replace(/^(\d)$/, "0$1")
//	}
//	
	
	
	var obj=document.getElementById("themeId").value;
	var objss=document.getElementById("themeUl");
	var li=objss.getElementsByTagName("li");
	for(var i=0;i<li.length;i++){
		if(obj==li[i].getAttribute("name")){
			li[i].style.backgroundColor="#9eb3e0";
		}
	}
}



function goNext(){
	var objs=document.getElementById("hiddenb").value;
	var page=objs*60;
	getBaidu(page);
	objs++;
	document.getElementById("hiddenb").value = objs;
}


function closeitem(obj){
//	
	var confirm=window.confirm("确定要删除？");
	if(confirm){
		var itemId = obj.id;
		var xhr=XHR();
		xhr.open("post", "xftxItemAction_userItemRemove.do",true);
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send('itemId='+itemId);
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					window.location.reload(true);
				}
			}
		}
		
		
		
		
	}
}

function addimg(){
	var itemId=document.getElementById("itemIds").value;
	window.location.href="xftxItemAction_itemAddImg.do?itemId="+itemId;
}





