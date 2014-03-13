$(function () {
    $.fn.springPopover = function () {
        this.each(function (i, e) {
            var $e = $(e);
            var contents = $e.html();
            $e.html("<span class='btn'>" + $e.data('title') + "</span>").popover({content: contents, trigger: 'click', html: true});
        });
        return this;
    };
    $("#scrim").click(function () {
        $(".js-item-dropdown--wrapper").removeClass("js-open");
        $(".js-item--open-dropdown").removeClass("js-show");
        $("#scrim").removeClass("js-show");
    });
    $(".js-search-input-open").click(function () {
        $(".nav-search").addClass("js-highlight");
        var inputContainer = $(".js-search-dropdown");
        var input = $(".js-search-input");
        inputContainer.addClass("js-show");
        setTimeout(function () {
            input.focus();
        }, 100);
        $(".body--container, .js-search-input-close").click(function () {
            inputContainer.removeClass("js-show");
            $(".nav-search").removeClass("js-highlight");
        });
    });
    if (window.location.pathname == "/search") {
        $(".nav-search").addClass("js-highlight");
        $(".js-search-dropdown").addClass("js-show no-animation");
        var searchQuery = decodeURIComponent(window.location.search.replace(/\+/g, " "));
        var seachStart = searchQuery.search("q=");
        var searchString = searchQuery.substr(seachStart + 2);
        $(".js-search-input").val(searchString);
        $(".js-search-results--title").html(searchString);
        $(".js-search-input-close").click(function () {
            $(".js-search-dropdown").removeClass("js-show no-animation");
            $(".nav-search").removeClass("js-highlight");
        });
    }
    ;
    $.fn.showPreferredLink = function () {
        this.find("li").hide();
        this.find("li." + detectOs() + detectArch()).show();
        return this;
    };
    $('.download-links').showPreferredLink();
    new Spring.ProjectDocumentationWidget();
});
var detectOs = function () {
    if (navigator.appVersion.indexOf("Win") != -1)return"Windows";
    if (navigator.appVersion.indexOf("Mac") != -1)return"Mac";
    if (navigator.appVersion.indexOf("Linux") != -1)return"Linux";
    return"Unknown";
}
var detectArch = function () {
    if (navigator.platform.indexOf("Win64") !== -1) {
        return"64"
    }
    if (navigator.platform.indexOf("Linux x86_64") !== -1) {
        return"64";
    }
    if (/Mac OS X 10.[0-5]/.test(navigator.userAgent)) {
        return"32"
    }
    if (navigator.userAgent.indexOf("Mac OS X") !== -1) {
        return"64"
    }
    return"32";
}