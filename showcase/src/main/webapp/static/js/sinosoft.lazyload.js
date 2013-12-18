/*
 * lazyload(延迟加载js)
 * 如果延迟加载的内容中含有textarea，需要在后端做相应转义
 * 即<转义成&lt; 而>转移成&gt;
 * 需要给包含延迟加载内容的textarea加上hideTextarea这个class
 * */

function showLazyContent(lazyLoadTextareaId, targetId) {
    $("#" + targetId).html("");
    $("#" + targetId).html( $("#" + lazyLoadTextareaId).val() );
}

$(function() {
    $(".lazyload").hide();
});