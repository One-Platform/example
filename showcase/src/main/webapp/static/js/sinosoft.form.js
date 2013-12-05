$.fn.extend({ 
	selectWidth : {
		defaultWidth:150
	},
	
	forms:function(opts){
		
	//text
	var inputText = $(":text");
	var inputPassword = $(":password");
	inputText.inputStyle();
	inputPassword.inputStyle();
	
	
	//textareas
	var textAreas = $("textarea.one_textarea");
	textAreas.textAreaStyle();
	
	//select
	$.extend(this.selectWidth,opts);
	var selects = $("select");
	selects.selectStyle();

	//checkbox
	var checkBox = $(":checkbox");
	checkBox.checkBoxStyle();
	
	//radio
	var radios = $(":radio");	
	radios.radioStyle();
	
	//button
	var buttons = $(":button");
	buttons.buttonStyle();
	
	var submits = $(":submit")
	submits.submitStyle();
	
},

	
	
	checkBoxStyle : function(){
		$(this).hide();
		function clickCase(obj){
			if(obj.attr("src") == './images/form/checkbox.gif'){
				obj.attr("src","./images/form/checkbox_ed.gif");
				obj.prev("input").attr("checked",true);
			}else{
				obj.attr("src","./images/form/checkbox.gif");
				obj.prev("input").attr("checked",false);
			};	
		}
		$(this).each(function(){
			if($(this).attr("checked") == true){
				$(this).after("<img src='./images/form/checkbox_ed.gif' class='checkbox' />");
			}else{
				$(this).after("<img src='./images/form/checkbox.gif' class='checkbox' />");
			};
			var obj = $(this).next();
			if($(this).parent().attr("tagName") == "LABEL") { 
				$(this).parent().click(function(){
					clickCase(obj);
					return false;
				});
			} else {
				obj.click(function(){
				   clickCase($(this));
				   return false;
				});
			}
		});
	},
	
	selectStyle : function() {
		var defaultWidth = this.selectWidth.defaultWidth
		$(this).css("display","none");
		$(this).each(function(i){
			if($(this).css("width") == "0px"){
				$(this).width(defaultWidth);
			}		  
			var id = $(this).attr("id");		
			if(!id || id == "") {
				$(this).attr("id","select" + "_" + i);
			}
			var selected = $(this).find("option:selected").val();
			$(this).after("<div class='selectArea'></div>");
			var selectArea = $(this).next();
			var currentSelect = $(this);
			selectArea.css({"width":currentSelect.width() + 21 + 'px'}).prepend("<div class='selectLeft'></div>");
			selectArea.find("div.selectLeft").before("<div class='selectRight'></div>").after("<div class='selectMain'></div>");
			selectArea.find("div.selectMain").css({"width":currentSelect.width() - 8 + 'px'}).prepend(selected);
			selectArea.prepend("<ul class='selectList'></ul>");
			selectArea.find("ul.selectList").css({"width":currentSelect.width() - 3 + 'px'});
			$(".selectArea").wrap("<div style='display: inline;'></div>")
			var opts = $(this).find("option");
			var selectList = selectArea.find("ul.selectList");
			for(var i=0, len=opts.length; i<len; i++){ 		
				selectList.append("<li>" + "<span>" + opts.eq(i).text() + "</span>" + "</li>");
			};
			var selectSpan = $("ul.selectList li span");
			selectSpan.hover(function(){
				selectSpan.removeClass();
				$(this).addClass("selectList_hover");
			})
			selectArea.find("div.selectRight").click(function(){
				if(selectList.css("display")=='none'){
					$("li",selectList).show();
					selectArea.css("position","relative");
					selectList.slideDown(260);
				}else{
					selectList.toggle();
					selectArea.css("position","static");
				}
			});
			selectList.find("li span").click(function(){
				selectList.toggle();			
				selectArea.find("div.selectMain").replaceWith("<div class='selectMain'>" + $(this).text() + "</div>");				
				currentSelect.val($(this).text());
				selectArea.css("position","static");
			});
			selectArea.mouseoutclick(function(){
				selectArea.css("position","static");
				selectList.hide();				  
			});
		});		
	},
	
	inputStyle : function() {
		$(this).before("<img src='./images/form/input_left.gif' class='inputMiddle'/>");
		$(this).after("<img src='./images/form/input_right.gif' class='inputMiddle'/>");
		$(this).addClass("inputText");
		$(this).focus(function(){
			$(this).prev().attr('src', "./images/form/input_left_xon.gif");
			$(this).next().attr('src', "./images/form/input_right_xon.gif");
			$(this).addClass("inputTextHover");
		});
		$(this).blur(function(){
			$(this).prev().attr('src',"./images/form/input_left.gif");
			$(this).next().attr('src',"./images/form/input_right.gif");
			$(this).removeClass();
			$(this).addClass("inputText");
		});	
			
	},
	
	textAreaStyle : function() {
		$(this).addClass("textareas");
		$(this).css({ "width": $(this).attr("cols") * 10 + 'px', "height": $(this).attr("rows") * 10 + 'px' });
		$(this).before("<div class='textareaTop'></div>");
		$(this).after("<div class='textareaBottom'></div>");
		$(".textareaTop").prepend("<img src='./images/form/txtarea_tl.gif' />");
		$(".textareaBottom").prepend("<img src='./images/form/txtarea_bl.gif' />");
		$(this).wrap("<div class='textareaCon'></div>");
		$(".textareaCon").prepend("<div class='conLeft'></div>");
		
		$(".conLeft").css({"height": $(this).attr("rows") * 10  +  'px'});
		$(".textareaTop,.textareaCon,.textareaBottom").wrapAll("<div class='txtareaBox'></div>");
		$(".txtareaBox").css({"width":$(this).attr("cols") * 10 + 6 + 'px'});
		$(this).focus(function(){
			$(".textareaTop").addClass("topXon");
			$(".textareaBottom").addClass("bottomXon");
			$(".textareaCon").addClass("conXon");
			$(".conLeft").addClass("leftXon");
			$(".textareaTop img").attr('src','./images/form/txtarea_tl_xon.gif');
			$(".textareaBottom img").attr('src','./images/form/txtarea_bl_xon.gif');
		});
		$(this).blur(function(){
			$(".textareaTop").removeClass().addClass("textareaTop");
			$(".textareaBottom").removeClass().addClass("textareaBottom");
			$(".textareaCon").removeClass().addClass("textareaCon");
			$(".conLeft").removeClass().addClass("conLeft");
			$(".textareaTop img").attr('src','./images/form/txtarea_tl.gif');
			$(".textareaBottom img").attr('src','./images/form/txtarea_bl.gif');
		});
	},
	
	radioStyle : function() {
		$(this).hide();
		var radios = $(this);
		function clickRadis(obj){		
			var tagName = obj.attr("tagName");
			var radioObj= obj.prev();
			var name = radioObj.attr("name");
			var otherRadioes = radios.filter("[name='" + name + "']");
			otherRadioes.each(function(){
				$(this).next().attr("src","./images/form/radio.gif");
			});
			if(obj.attr("src")=='./images/form/radio.gif'){
				obj.attr("src","./images/form/radio_ed.gif");
				obj.prev("input").attr("checked",true);
			}else{
				obj.attr("src","./images/form/radio.gif");
				obj.prev("input").attr("checked",false);
			};
		}
		$(this).each(function(){
			if($(this).attr("checked")==true){
				$(this).after("<img src='./images/form/radio_ed.gif' class='radio' />");
			}else{
				$(this).after("<img src='./images/form/radio.gif' class='radio' />");
			};
			var obj = $(this).next();
			if($(this).parent().attr("tagName") == "LABEL") { 
				$(this).parent().click(function(){clickRadis(obj)});
			} else {
				obj.click(function(){clickRadis($(this))});
			};
		});	
	},
	
	buttonStyle : function() {
		$(this).addClass("btn");
		$(this).before("<img src='./images/form/btn_left.gif' class='btn_bor' />");
		$(this).after("<img src='./images/form/btn_right.gif' class='btn_bor' />");
	},
	
	submitStyle : function() {
		$(this).addClass("submit_btn");
		$(this).before("<img src='./images/form/submit_btn_left.gif' class='btn_bor' />");
		$(this).after("<img src='./images/form/submit_btn_right.gif' class='btn_bor' />");
	}
	
});