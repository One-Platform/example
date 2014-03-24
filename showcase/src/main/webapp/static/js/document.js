$(function () {
    $("#lazyload").click(function(){

        var cla = $("#lazyload").attr("class");

        if(cla.indexOf("js-open")>0){
            $("#lazyload").removeClass("js-open");
        }else{
    $("#lazyload").addClass("js-open");
    }
});
$(document).bind("click",function(e){
    var target  = $(e.target);
    if(target.closest("#lazyload").length == 0){
    $("#lazyload").removeClass("js-open");
    }
});

$("#web").click(function(){
    $("#web").addClass("js-open");
    });
$(document).bind("click",function(e){
    var target  = $(e.target);
    if(target.closest("#web").length == 0){
    $("#web").removeClass("js-open");
    }
});

$("#spring-amqp3").click(function(){
    $("#spring-amqp3").addClass("js-open");
    });
$(document).bind("click",function(e){
    var target  = $(e.target);
    if(target.closest("#spring-amqp3").length == 0){
    $("#spring-amqp3").removeClass("js-open");
    }
});
})
