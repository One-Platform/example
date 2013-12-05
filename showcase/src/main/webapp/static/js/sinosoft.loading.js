
(function ($) {
	 var self, $loadHtml, $shadow;
	 $.fn.extend({
		loading: function(opts){
			var defaults = {
				content   : "数据加载中......" ,       
				title     : "" ,        
				width     : "200",    
				height    :  "100", 
				iconPosition: "top",
				iconType: 2,
				iconUrl: "",
				borderWidth: "3", 
				borderColor: "" 
				
			}
			var defaults = $.extend(defaults, opts);
			self = $(this);
			var selfId = self.attr("id");
			$loadHtml = $("<div id=" + selfId + "_loading" + " class='loading'></div>");
			var $loadTitle = $('<div class="loading_title"></div>');
			var $loadCont = $('<div class="loading_cont"></div>');
			var $loadText = $('<div class="load_text"></div>');
			var $loadSpan = $('<span class="load_text"></span>');
			$shadow = $("<div id=" + selfId + "_shadow" + " class='shadow'></div>");
			var $iframe = $('<iframe class="ifm"></iframe>');
			$shadow.append($iframe);	
			var thisWidth;
			var thisHeight;
			var centerTop;
			var centerLeft;
			var top;
			var left;
			var contHeight; 
			loadResize();
			if(defaults.iconUrl == "") {
				one();	
			} else {
				two();
			}
			function initVar() {
				if(defaults.borderColor != "") {
					$loadHtml.css({"border-color": defaults.borderColor})
				}
				$loadHtml.css({"border-width": defaults.borderWidth + "px"})	
				if(self.get(0).tagName == "BODY") {
					thisWidth = $(window).width();
					thisHeight = $(window).height();
					//算出引用该控件的html标签的中心的位置
					centerTop = self.offset().top + $(window).height()/2 - defaults.borderWidth;
					centerLeft = self.offset().left + $(window).width()/2 - defaults.borderWidth;
					//如果是body就给他锁住浏览器
					if($.browser.mozilla) {
						$( document.body ).css({overflow: "hidden" });
					} else {
						$( 'html' ).css({ 'overflow': "hidden" });
					}
				} else {
					thisWidth = self.innerWidth();
					thisHeight = self.innerHeight();
					centerTop = self.offset().top + thisHeight/2 - defaults.borderWidth;
					centerLeft = self.offset().left + thisWidth/2 - defaults.borderWidth;
				}
					top = centerTop - defaults.height/2;
					left = centerLeft - defaults.width/2;
					contHeight = defaults.height - 30;		
			}
			
			function createBeginTitleHtml() {
				$loadHtml.css({"width":defaults.width,"height":defaults.height,"top":top,"left":left})
					.append($loadTitle.html(defaults.title));	
			}
			
			function createBeginHtml() {
				$loadHtml.css({"width":defaults.width,"height":defaults.height,"top":top,"left":left});	
			}
			
			function createEndHtml() {
				$shadow.css({"height":thisHeight ,"width":thisWidth, "top":shadowTop(), "left":self.offset().left});
				$("body").append($loadHtml).append($shadow);
				$loadHtml.show();
			}
			
			function one() {				
				initVar();
				if(defaults.title != "") {
					if(defaults.iconPosition == "top") {
						var paddingTop = contHeight/2 + 6;
						var imgPosition = createPaddingTop(defaults.iconType, contHeight);
						createBeginTitleHtml()						
						$loadHtml.addClass("skin_1").append($loadCont.addClass(changeIcon(defaults.iconType))
									.css({"background-position":"center " + imgPosition + "px"})
									.append($loadText.html(defaults.content).css({"padding-top":paddingTop}))
						);
						createEndHtml();
					} else {
						createBeginTitleHtml();
						$loadHtml.addClass("skin_0").append($loadCont.addClass(changeIcon(defaults.iconType))
								.css({"height":contHeight, "line-height":contHeight+"px", "background-position":leftWidth(defaults.iconType) + " center"})
								.append($loadSpan.html(defaults.content))
						);
						createEndHtml();
					}	
				} else {
					if(defaults.iconPosition == "top") {
						var paddingTop = defaults.height/2 + 6;
						var imgPosition = createPaddingTop(defaults.iconType, defaults.height);
						createBeginHtml();
						$loadHtml.addClass("skin_1").append($loadCont.addClass(changeIcon(defaults.iconType))
								.css({"background-position":"center " + imgPosition + "px"})
								.append($loadText.html(defaults.content).css({"padding-top":paddingTop}))
						);
						createEndHtml();
					} else {
						createBeginHtml();
						$loadHtml.addClass("skin_0").append($loadCont.addClass(changeIcon(defaults.iconType))
								.css({"height":defaults.height, "line-height":defaults.height+"px", "background-position":leftWidth(defaults.iconType) + " center"})
								.append($loadSpan.html(defaults.content))
						);
						createEndHtml();
					}	
				}	
			}
			
			function two() {				
				initVar();
				var $dImg = $("<img src='"+ defaults.iconUrl +"' />");
				if(defaults.title != "") {
					if(defaults.iconPosition == "top") {
						createBeginTitleHtml();
						$loadHtml.addClass("skin_3").append($loadCont.append($dImg.css({"margin-top":createmarginTop($dImg)+ "px"}))
								.append($loadText.html(defaults.content)));
						createEndHtml();
					} else {
						createBeginTitleHtml();
						$loadHtml.addClass("skin_4").append($loadTitle.html(defaults.title))
						.append($loadCont.css({"line-height":contHeight + "px"}).append($dImg).append($loadSpan.html(defaults.content)));
						createEndHtml();
					}	
				} else {
					if(defaults.iconPosition == "top") {
						createBeginHtml();
						$loadHtml.addClass("skin_3").append($loadCont.append($dImg.css({"margin-top":createmarginTop($dImg)+ "px"}))
								.append($loadText.html(defaults.content)));
						createEndHtml();
					} else {
						createBeginHtml();
						$loadHtml.addClass("skin_4")
						.append($loadCont.css({"line-height":defaults.height+"px"}).append($dImg).append($loadSpan.html(defaults.content)));
						createEndHtml();
					}	
				}	
			}
			
			function loadResize() {
				$( window ).resize(function() {
					if(self.get(0).tagName == "BODY") {
						$shadow.css({ 'width': $(window).width(), 'height': $(window).height() });
						var loadHeight = $loadHtml.height()/2;
						var loadWidth = $loadHtml.width()/2; 
						var top = $(window).height()/2 - loadHeight;
						var left = $(window).width()/2 - loadWidth;
						$loadHtml.css({"top":top , 'left':left  });
					}
				});	
			}
			
			//判断改用哪张图片
			function changeIcon(type) {
				switch(type) {
					case 1:
						return "bg_one";
					case 2:
						return "bg_two";
					case 3:
						return "bg_three";
					case 4:
						return "bg_four";
					case 5:
						return "bg_five";
					case 6:
						return "bg_six";
					default:
						return "bg_one";		
				}
			}
			
			function leftWidth(type) {
				if(type == 2) {
					return "4px";	
				} else {
					return "20px";
				}	
			}
			
			//修改padding间距的方法
			function createPaddingTop(type, contHeight) {
				if(type == 2) {
					return contHeight/2 - 30;	
				} else {
					return contHeight/2 - 14;	
				}	
			}
			
			function createmarginTop($dImg) {
				var theImage = new Image(); 
				theImage.src = $dImg.attr( "src"); 
				if(defaults.title != "") {
					return (defaults.height - 30 - theImage.height) / 2 - 15;	
				} else {
					return (defaults.height - theImage.height) / 2 - 15;	
				}
			}
			
			function shadowTop() {
				var selfTop = self.offset().top;
				var top = selfTop + (self.outerHeight() - self.innerHeight()) / 2;
				return 	top;
			}
			
			function shadowLeft() {
				var selfLeft = self.offset().left;
				var left = selfLeft + (self.outerWidth() - self.innerWidth()) / 2;	
			}
		},
		
		hideLoading:function() {
			if($.browser.mozilla) {
				$( document.body ).css({ overflow: "auto" });
			} else {
				$( 'html' ).css({ 'overflow': "auto" });
			}
			$("#"+$(this).attr("id")+"_loading").remove();
			$("#"+$(this).attr("id")+"_shadow").remove();
			return false;
		}
	});
})(jQuery);
