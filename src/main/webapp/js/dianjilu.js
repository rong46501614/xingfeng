(function() {
	var $a=$(".js_focus_index a");
	var $s=$(".js_focus_index a");
	var cArr=["event_list__item slide__item js_focus_pic p1",
	          "event_list__item slide__item js_focus_pic p2",
	          "event_list__item slide__item js_focus_pic p3",
	          "event_list__item slide__item js_focus_pic p4",
	          "event_list__item slide__item js_focus_pic p5",
	          "event_list__item slide__item js_focus_pic p6",
	          "event_list__item slide__item js_focus_pic p7",
	          "event_list__item slide__item js_focus_pic p8",
	          "event_list__item slide__item js_focus_pic p9"];
	var index=0;
	function nextimg(){
		cArr.unshift(cArr[8]);
		cArr.pop();
		$("#focus li").each(function(i,e){
			$(e).removeClass().addClass(cArr[i]);
		})
		index++;
		if (index>8) {
			index=0;
		}
		show();
	}
	function previmg(){
		cArr.push(cArr[0]);
		cArr.shift();
		$("#focus li").each(function(i,e){
			$(e).removeClass().addClass(cArr[i]);
		})
		index--;
		if (index<0) {
			index=8;
		}
		show();
	}
	function show(){
		$($s).removeClass("slide_switch__item--current");
		$($s).eq(index).addClass("slide_switch__item--current");
	}
	$(document).on("click",".p2",function(){
		previmg();
		return false;
	});
	$(document).on("click",".p4",function(){
		nextimg();
		return false;
	});
	$("#focus").mouseover(function(){
		clearInterval(timer);
	})
	$("#focus").mouseleave(function(){
		timer=setInterval(nextimg,10000);
	})
	timer=setInterval(nextimg,10000);
	
	
	$("#preLi").click(function(){
		previmg();
	});
	$("#nextLi").click(function(){
		nextimg();
	});
	
	
	var j=0;
	$("#albumlistPreLi").click(function(){
		$("#albumlist").css("left","-1200px");
	});
	
	$("#albumlistNextLi").click(function(){
		
	});
	
})();