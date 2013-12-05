/* validate  
 * lishuai
 * Mail:
 * Date: 2012-12-14        发布时间
*/
(function($){
  $.fn.extend({
    validate: function(opts){
      if(!$(this).is("form"))return;
      var defaults = {
        params:[],
        onLoadShowTips:true, //载入form的时鼠标移动到元素上 显示tips
        showTipsTime:"hover",//显示tips的时机,hover鼠标移动上去, focus 获得光标
        onLoadShowMsg:false, //载入form的时候就显示默认的提示
        onSubmitShowError:false, //当点击确认的时候弹出提示框
        showMessageType:"message",	//message：在输入框之后显示，tips：显示tips框
        showMessageTime:"focus",//hover，focus
        checkRegTime:"rt", //blur失去焦点时， rt实时（real time）
        ajaxURL:"ddddd", //表单提交地址
        ajaxType:"post", //表单 提交方式
        useAjax:false,
        useFRColor:true, //输入框是否使用 正确 错误颜色
        require:true, //这个是定义是否是必须验证的
        useIcon:false //是否使用Icon显示正确或者错误
      }


      defaults = $.extend(true,defaults,opts);
      var count = 0;
      var regx = {
        "username" : /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$/,
				"password" : /^(\w){6,20}$/,
     //   "birthday" : /^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/,
        "birthday":/\d{1,4}([-/])\d{1,2}\1\d{1,2}/,
        "email" : /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/,
        "eq": function(arg1,arg2){ return arg1==arg2 ? true:false;}
      }, 
      msgSuffix={// 这是个消息后缀
        "email" : "格式应为：例如xxx@sinosoft.cn",
        "username" : "只能为数字和英文及下划线和.的组合，开头为字母，6-20个字符",
			  "password" : "只能为数字和英文及下划线的组合 ， 6-20个字符",
        "password2": "请重复密码",
			  "birthday" : "格式应为：例如 1900-01-01 或者 1900/01/01",
        "eq": "不等于",
        "sex": "请选择您的性别",
        "like": "兴趣不能为空",
        "address": "不能为空"
       },
      msg = "",//这个是最后如果要对话框显示提示消息的话 里面存的错误信息
      self = $(this),
      checkResult = true,
      isAll = true,
      tipName = function (nameStr){//这个是span的name
        return "tip_"+nameStr
          
      },  
      //下面这个方法是验证 正则和填写的值 是否匹配
      typeTest = function(){
        var result = true,args = arguments;
        if(regx.hasOwnProperty(args[0])){
          var reg = regx[args[0]],value = args[1];
          result = args.length>2 ? reg(args[1],args[2]):reg.test(value);
        }
        return result;
      },
      //下面这个方法是显示错误信息
      showError = function ($obj,objName,errorMsg){
        checkResult = false;
        if(defaults.useFRColor){
          $obj.css("background","#FFDFDD");
        }
        var $tipObj = $("#"+tipName(objName));// 这个可以得到提示信息的jquery对象
        if($tipObj.length>0) $tipObj.remove();   
        var tipPosition = $obj.next().length>0?$obj.nextAll().eq(this.length-1):$obj.eq(this.length-1);
        var $tips = defaults.useIcon?$("<span id='"+tipName(objName)+"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+errorMsg+"</span>").addClass("errorIcon"):$("<span id='"+tipName(objName)+"'> "+errorMsg+" </span>").addClass("error");
        tipPosition.after($tips);
        if(defaults.onSubmitShowError && isAll){
          count+=1;
          msg+=""+count+"."+errorMsg+"\n";

        }
      },
      //显示正确信息
      showRight = function ($obj,objName){
        if(defaults.useFRColor) $obj.css("background","#CCFFCC");
        var $tipObj = $("#"+tipName(objName));// 这个可以得到提示信息的jquery对象
        if($tipObj.length>0) $tipObj.remove();      
        var tipPosition = $obj.next().length>0?$obj.nextAll().eq(this.length-1):$obj.eq(this.length-1);
        var $tips = defaults.useIcon?$("<span id='"+tipName(objName)+"'>&nbsp;&nbsp;&nbsp;&nbsp;</span>").addClass("rightIcon"):$("<span id='"+tipName(objName)+"'>正确</span>").addClass("right");
        tipPosition.after($tips);         
      },
      //匹配对比值
      matchTo = function (objName){
        var match ;
        $.each(defaults.params,function(){
          if(this.name == objName && this.simple){
            match = this.simple;
            return false;
          }
        });
        if(!match) match = $("[name='"+objName+"']")[0].name;
        return match;
      },
      objCheck = function (params){
        var i = params , 
            $obj = $("[name='"+i.name+"']",self[0]);
        if(!$obj[0]) return ;
        var errorMsg ,  //错误信息
            objValue = $.trim($obj.val()), //去空格之后的val
            isRQ = typeof i.require === "boolean"?i.require:defaults.require; //是否是必须验证
           // RQNull = i.require?true:false;
           //alert(isRQ);
        if(isRQ && ($obj.is(":radio") || $obj.is(":checkbox")) && !$obj.is(":checked")){
          errorMsg = i.message || i.simple+"没有选择";
          showError($obj,i.name,errorMsg);
        }else if(isRQ && objValue == ""){
          errorMsg =  i.message|| i.simple + ( $obj.is("select") ? "没有选择" :"不能为空" );
          showError($obj,i.name,errorMsg);
        }else if(objValue != ""){
          if(i.min || i.max){
            var len = objValue.length , 
              min = i.min ,
              max = i.max;
            errorMsg = i.message || (max ? i.simple+ "长度范围应该在"+min+"~"+max +"之间" :i.simple+"长度应大于"+min);
            if((max && (len>max || len < min)) || (!max && len < min) ){
              showError($obj,i.name,errorMsg);
              return;
            }
          }

          if(i.regx){
            var matchVal = i.to?$.trim($("[name='"+i.to+"']").val()):i.value;
            var matchRet = matchVal ? typeTest(i.regx,objValue,matchVal) :typeTest(i.regx,objValue);
            errorMsg = i.message || i.simple + msgSuffix[i.regx];
            if(matchVal && i.simple) errorMsg += (i.to ? matchTo(i.to) +"的值" :i.value);

            if(!matchRet) showError($obj,i.name, errorMsg);
            else showRight($obj,i.name);
          }else{
					  showRight($obj,i.name);
				  }
        
        }else if(objValue == ""){
         if ($obj.next().length>0)$obj.nextAll().eq(this.length-1).remove();
        }else if(isRQ){
          showRight($obj,i.name);
        }
      },
      //元素组验证
      validate = function (){
        $.each(defaults.params,function (){
          isAll = true;
          objCheck(this);
        });
        if(defaults.onSubmitShowError && msg != ""){
          alert(msg);
          msg = "";
          count=0;
        }
        return checkResult;
      };
      //元素事件绑定
      $.each(defaults.params,function(){
        var $object = $("[name='"+this.name+"']",self[0]);
        if($object.is(":hidden")) return;
        var obj = this , 
          toCheck =function (){isAll = false ;objCheck(obj);};
        if($object.is(":file")|| $object.is("select")){
          $object.bind("change" ,toCheck);
        }else{
          if(defaults.checkRegTime == "blur"){
            $object.bind("blur",toCheck);
          }else if(defaults.checkRegTime == "rt"){
            $object.bind("keyup",toCheck).bind("blur",toCheck).bind("focus",toCheck);
          //  $object.bind("mouseup",toCheck);
          //  $object.bind("blur",toCheck);
            
          }
        }
      });
       
       function onLoadTip(e){
        
        $.each(defaults.params,function (){
           
       var $obj = $("[name='"+this.name+"']",self[0]).first();
          if(defaults.onLoadShowTips && (typeof this.require === "boolean"?this.require:defaults.require)){
              if(defaults.showTipsTime =="hover"){
                $obj.hover(
                function(e){
                  e = e || window.event;
                  var mouseX = e.pageX || (e.clientX ? e.clientX + document.body.scrollLeft : 0);
                  var mouseY = e.pageY || (e.clientY ? e.clientY + document.body.scrollTop : 0);
                  $(".tip").css({"top":(mouseY+2)+"px","left":(mouseX-40)+"px"}).html(msgSuffix[this.name]).show();           
                },
                function(){
                  $(".tip").css({"top":0,"left":0}).html("").hide();
                });
              }else {
                 $obj.click(
                function(e){
                  e = e || window.event;
                  var mouseX = e.pageX || (e.clientX ? e.clientX + document.body.scrollLeft : 0);
                  var mouseY = e.pageY || (e.clientY ? e.clientY + document.body.scrollTop : 0);
                  $(".tip").css({"top":(mouseY+2)+"px","left":(mouseX-40)+"px"}).html(msgSuffix[this.name]).show();           
                });
                $obj.blur(
                function(){
                  $(".tip").css({"top":0,"left":0}).html("").hide();
                });
              
              }
            
                 
          }else if(defaults.onLoadShowMsg){

            var $tipPosition = $obj.nextAll().length>0?$obj.nextAll().last():$obj;
            if(typeof this.require === "boolean"?this.require:defaults.require){
              $tipPosition.after("<span style='color:#0c0' class='Error' id='"+tipName(this.name)+"'>"+msgSuffix[this.name]+"</span>");
            }
          }
        });
      };
     //是否加载页面的时候就加载提示
     onLoadTip();
      
      if(defaults.useAjax){
        $("#submit").click(function() {
          validate();        
          if(!$("span").hasClass(defaults.useIcon?"errorIcon":"error"))checkResult=true;
            if(checkResult){
              var data = $(".myform").serialize();   
              $.ajax({
                url:  $(".myform").attr("action")?$(".myform").attr("action"):defaults.ajaxURL,
                type: $(".myform").attr("method")?$(".myform").attr("method"):defaults.ajaxType,
                data: data,
                beforeSend:function(){
                  alert("before send");
                },
                success: function(data){
                  alert("success");
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("XMLHttpRequest.status:   "+XMLHttpRequest.status);
                    alert("XMLHttpRequest.readyState:    "+XMLHttpRequest.readyState);
                    alert("textStatus:   "+textStatus);
                }
              });
            }
           return false;
        });
      }else{
         //提交事件绑定
        $(this).submit(validate);
      }
    }
  });
})(jQuery);