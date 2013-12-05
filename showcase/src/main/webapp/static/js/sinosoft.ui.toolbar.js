/**
 * Created by IntelliJ IDEA.
 * User: Phoenix
 * Date: 12-7-23
 * Time: 上午8:04
 * A function area with buttons and other function triggers
 */

/**
 *
 * @param container The toolbar's parent element.
 * @param barData   A JSON object or a url for get a JSON object
 */
function jsonBar(container, barData) {

    if(typeof container != "object")
        container = $( "#" + container );

    var createToolBarByData = function() {

        var toolbar = container.toolbar({ 'barId': barData.barId, 'position': barData.position });
        if($.isArray(barData.buttons)) {
            toolbar.addButtons(barData.buttons);
        }
        if($.isArray(barData.groups)) {
            $( barData.groups ).each(function() {
                toolbar.addGroup({ 'grpId': this.grpId }).addButtons(this.buttons);
            });
        }
        return toolbar;
    };

    if($.parseJSON(barData) === 'string') {
        $.ajax({
            'url': barData,
            'success': function(data) {
                barData = data;
                return createToolBarByData();
            },
            'error': function(data) {
                return "Invalide JSON data or URL!";
            }
        })
    } else {
        return createToolBarByData();
    }
    return null;
}

/**
 *
 * @param container The toolbar's parent element.
 * @param options   an options Object of toolbar.
 */
function toolBar(container, options) {
    return $( container ).toolbar(options);
}

(function($) {
    var self, toolbar, scrollWrapper, horizon = true, scrollWrapWidth, groupWrapWidth, setsWidth, plusSetWidth, horizonHeight = 26, verticalHeight = 26;
    $.fn.extend({
        'version': "1.0",
        toolbar: function(options, value) {

            self = this;
            /*if(self.length <= 0 && value !== "extends") return false;*/


            var tbOptions = $.extend({
                'barId': null,
                'position': "top",
                'floated': false,
                'border': null
            }, options);

            if(typeof value == 'string') value = "'" + value + "'";
            if(typeof options != 'object') eval("tbOptions." + options + " = " + value);

            var counter = $( ".sinosoft-ui-toolbar" ).length;
            toolbar = $( '<div></div>' ).addClass("sinosoft-ui-toolbar").attr({ 'id': tbOptions.barId == null ? "toolbar" + counter : tbOptions.barId });

            horizon = true;
            if(self.prop("tagName") != undefined) {
                if(tbOptions.position === "top") {

                    self.prepend(toolbar.addClass("attop").css({ 'borderBottom': tbOptions.border != null ? tbOptions.border : "1px solid black"}));
                    if(tbOptions.floated) toolbar.css({ 'position': "absolute" });
                } else if(tbOptions.position === "bottom") {

                    self.prepend(toolbar.addClass("atbottom"));
                    toolbar.css({
                            'borderTop': tbOptions.border != null ? tbOptions.border : "1px solid black",
                            'marginTop': self.height() - 27
                        })

                } else if(tbOptions.position === "left") {
                    self.prepend(toolbar.addClass("atleft").css({ 'borderRight': tbOptions.border != null ? tbOptions.border : "1px solid black"}));
                    horizon = false;
                } else if(tbOptions.position === "right") {
                    self.prepend(toolbar.addClass("atright").css({ 'borderLeft': tbOptions.border != null ? tbOptions.border : "1px solid black"}));
                    horizon = false;
                }
                if(horizon) $( toolbar ).after($( '<div></div>' ).addClass("clear"));
            } else {
                return false;
            }

            /* 根据左右边框重新计算并设置宽度 */
            var borderLeft = toolbar.css("borderLeftWidth").split("px")[0];
            var borderRight = toolbar.css("borderRightWidth").split("px")[0];
            if( !isNaN(borderLeft) && borderLeft > 0 ) toolbar.css({ 'width': toolbar.width() - borderLeft});
            if( !isNaN(borderRight) && borderRight > 0 ) toolbar.css({ 'width': toolbar.width() - borderRight});

            toolbar.css({
                'width': horizon ?
                    (
                        self.prop("tagName") == undefined ? "auto"
                            : self.width() - parseInt(self.css("paddingLeft").split("px")[0]) - parseInt(self.css("paddingRight").split("px")[0])
                    )
                    : toolbar.width(),
                'height': horizon ? horizonHeight : self.height() - 10
            });

            var scrollWrapperId = toolbar.attr("id") + "scrollWrap";
            scrollWrapper = $( '<div></div>' ).attr({ 'id': scrollWrapperId }).addClass("scroll_wrap").appendTo(toolbar);

            if(horizon) {
                scrollWrapper.css({ 'height': toolbar.height() });

                $( '<a href="javascript:void(0)">❱</a>' ).addClass("more-btns idScrollLeft")
                        .css({
                            'height': toolbar.height(),
                            'lineHeight': (toolbar.height()) + "px",
                            'marginLeft': toolbar.width() - 20,
                            'borderLeft': "1px solid gray",
                            'display': "none"
                        }).prependTo(toolbar).after($( '<div></div>' ).addClass("clear"))
                        .bind('click', function() {
                            var trigger = this;
                            $( trigger ).prev(".clear").prev(".more-btns").show();
                            var swrapp = $( "#" + scrollWrapperId );
                            var moveWidth = 0;
                            var hiddenWidth = swrapp.outerWidth(true) - swrapp.parent().width();
                            if(hiddenWidth > swrapp.parent().width()) {
                                moveWidth = swrapp.parent().width();
                            } else {
                                moveWidth = hiddenWidth;
                            }
                            swrapp.animate({ 'marginLeft': '-=' + moveWidth }, function() {
                                $( trigger ).hide();
                            });
                        });

                $( '<a href="javascript:void(0)">❰</a>' ).addClass("more-btns idScrollRight")
                        .css({
                            'height': toolbar.height(),
                            'lineHeight': (toolbar.height()) + "px",
                            'borderRight': "1px solid gray",
                            'display': "none"
                        }).prependTo(toolbar).after($( '<div></div>' ).addClass("clear"))
                        .bind('click', function() {
                            var trigger = this;
                            $( trigger ).next(".clear").next(".more-btns").show();
                            $( "#" + scrollWrapperId ).animate({ 'marginLeft': 0 }, function() {
                                $( trigger ).hide();
                            });
                        });
            } else {
                scrollWrapper.css({ 'width': toolbar.width(), 'margin': 0 });
            }

            return toolbar;
        },
        addGroup: function(options, value) {

            var grpOptions = $.extend({
                "grpId": null
            }, options);

            if(typeof value == 'string') value = "'" + value + "'";
            if(typeof options != 'object') eval("grpOptions." + options + " = " + value);

            var counter = toolbar.find(".button-group").length;
            var group = $( '<div></div>' ).addClass("button-group")
                .attr({ 'id': grpOptions.grpId == null ? (toolbar.attr("id") + "Group" + counter) : grpOptions.grpId })
                .addClass(horizon ? "horizon" : "vertical")
                .css({
                    'height': horizon ? horizonHeight : "",
                    'margin': horizon ? 0 : "5px 0"
                }).appendTo(scrollWrapper);

            /*groups.push(group);*/
            groupWrapWidth = 0;
            return group;
        },
        addButtons: function(buttonArray) {
            var container = this;
            if($.isArray(buttonArray)) {
                $(buttonArray).each(function() {
                    container.addButton(this);
                });
            }
        },
        addButton: function(options, value) {
            var container = this;

            /* 如果容器是不是buttonGroup，则为当前按钮添加一个buttonGroup作为容器 */
            if(this.attr("class").indexOf("sinosoft-ui-toolbar") >= 0) {
                if(this.find(".button-group").length <= 0) {
                    container = self.addGroup();
                    /*groups.push(container);*/
                } else {
                    container = this.find(".button-group");
                }
            }
            var btnOptions = $.extend({
                'btnType': 0,
                'btnIcon': null,
                "btnSetId": null,
                'btnId': null,
                'btnName': null,
                'btnLabel': null,
                'showBtnLabel': true,
                'btnSetLabel': null,
                'btnValue': "0",
                'btnChecked': false,
                'disabled': false,
                'selectOptions': null,
                'fieldWidth': "",
                'bindEvents': null
            }, options);

            if(typeof value == 'string') value = "'" + value + "'";
            if(typeof options != 'object') eval("btnOptions." + options + " = " + value);

            var btn, counter = this.find(".btn").length;

            if(!horizon && (btnOptions.btnType != 0 || btnOptions.btnType != 4)) btnOptions.btnType = 0;

            if(btnOptions.btnType == 0 || btnOptions.btnType == "default" || btnOptions.btnType == "button") {

                btnOptions.btnType = 0;
                btn = $( '<button></button>' ).addClass("btn").attr({ 'title': btnOptions.btnLabel })/*.bind('click', btnOptions.bindEvents)*/;
                if(horizon && btnOptions.showBtnLabel) btn.append($( '<span></span>' ).addClass("label").html(btnOptions.btnLabel));
                if(btnOptions.btnIcon != null)
                    btn.prepend( $( '<span></span>' ).addClass("icon").css({})
                        .append( $( '<img />').addClass("icon").attr({ 'src': btnOptions.btnIcon, 'width': 16, 'height': 16 }) ));

            } else if(btnOptions.btnType == 1 || btnOptions.btnType == "radio") {

                btnOptions.btnType = 1;
                btn = $( '<input />' ).attr({ 'type': "radio", 'checked': btnOptions.btnChecked, 'title': btnOptions.btnLabel })
                    .addClass("btnset");

            } else if(btnOptions.btnType == 2 || btnOptions.btnType == "checkbox") {

                btnOptions.btnType = 2;
                btn = $( '<input />' ).attr({ 'type': "checkbox", 'checked': btnOptions.btnChecked, 'title': btnOptions.btnLabel })
                    .addClass("btnset");

            } else if(btnOptions.btnType == 3 || btnOptions.btnType == "select") {

                btnOptions.btnType = 3;
                btn = $( '<select></select>' ).attr({ 'title': btnOptions.btnLabel });
                if($.isArray(btnOptions.selectOptions)) {
                    $( btnOptions.selectOptions ).each(function() {
                        btn.append($( '<option value="' + this.value + '">' + this.key + '</option>'));
                    });
                } else {
                    $.each(btnOptions.selectOptions, function(key, value) {
                        btn.append($( '<option value="' + value + '">' + key + '</option>'));
                    });
                }
            } else if(btnOptions.btnType == 4 || btnOptions.btnType == "checker") {

                btnOptions.btnType = 4;
                function checkHover() { $( this ).addClass("hover"); }
                btn = $( '<button></button>' ).addClass("checker").addClass(btnOptions.btnChecked ? "checked" : "").attr({ 'title': btnOptions.btnLabel })
                    .bind('mouseenter', checkHover).bind('mouseleave', function() { $( this ).removeClass("hover"); })
                    .bind('click', function() {
                            var checker = $( this ).find("input:checkbox");
                            if(checker.attr("checked") == undefined) {
                                $( this ).addClass("checked").removeClass('hover').unbind('mouseenter');
                                checker.attr({ 'checked': "checked" });
                            } else {
                                $( this ).removeClass("checked").bind('mouseenter', checkHover);
                                checker.removeAttr("checked");
                            }
                    })
                    .append($( '<input type="checkbox" />').attr({ 'checked': btnOptions.btnChecked }).css({ 'display': "none" }).val(btnOptions.btnValue));
                if(horizon) btn.append($( '<span></span>' ).addClass("label").html(btnOptions.btnLabel));
                if(btnOptions.btnIcon != null) btn.prepend($( '<span></span>' ).addClass("icon").css({ 'backgroundImage': "url(" + btnOptions.btnIcon + ")" }));

            } else if(btnOptions.btnType == 5 || btnOptions.btnType == "text") {

                btnOptions.btnType = 5;
                btn = $( '<input />').attr({ 'type': "text" }).addClass("text_field").css({ 'width': btnOptions.fieldWidth }).val(btnOptions.btnValue);

            }

            var id = btnOptions.btnId == null ? this.attr("id") + "Button" + counter : btnOptions.btnId;

            btn.addClass("idToolbarButton").attr({ 'id': id, 'name': btnOptions.btnName, 'disabled': btnOptions.disabled }).find("input:checkbox").attr({ 'disabled': btnOptions.disabled });
            if(btnOptions.btnType != 5 && btnOptions.btnType != 3)
                btn.css({
                    'width': "",
                    'height': horizon ? horizonHeight : verticalHeight,
                    'lineHeight': horizon ? horizonHeight + "px" : verticalHeight + "px",
                    'padding': horizon ? "0 5px" : "5px 5px",
                    'margin': horizon ? "0 5px" : "5px 0"
                }).addClass("horizon").addClass(btnOptions.disabled ? "disabled": "");
            if(!horizon)
                btn.removeClass("horizon").addClass("vertical").find(".icon").css({ 'padding': 0, 'margin': 0 });

            if(btnOptions.btnType == 1 || btnOptions.btnType == 2) {
                if(btnOptions.btnSetId != null && $( "#" + btnOptions.btnSetId ).length == 0) {
                    $( '<div></div>' ).attr({ 'id': btnOptions.btnSetId }).addClass("btnset-wrapper idButtonItem")
                        .append(btnOptions.showBtnLabel ? $( '<span></span>' ).addClass("set_title").html(btnOptions.btnSetLabel) : "").appendTo(container);
                    plusSetWidth = false;
                    setsWidth = $( "#" + btnOptions.btnSetId ).outerWidth(true);
                }
                $( '<label></label>' ).attr({ 'for': id }).append(btn.val(btnOptions.btnValue)).append($( '<span></span>' ).html(btnOptions.btnLabel)).appendTo($( "#" + btnOptions.btnSetId ));
            } else if(btnOptions.btnType == 3) {
                if(horizon) container.append($( '<div></div>' ).addClass("btnset-wrapper idButtonItem")
                    .append(btnOptions.showBtnLabel ? $( '<span></span>' ).addClass("set_title").html(btnOptions.btnLabel) : "").append(btn.css({ 'margin': "4px 0" })));
            } else if(btnOptions.btnType == 5) {
                if(horizon) btn.appendTo($( '<div></div>' ).addClass("btnset-wrapper idButtonItem").append($( '<span></span>' ).addClass("set_title").html(btnOptions.btnLabel)).appendTo(container));
            } else {
                if(!btnOptions.disabled)
                    btn.bind('mouseenter', function() { $( this ).addClass("hover") })
                        .bind('mouseleave', function() { $( this ).removeClass("hover") })
                        .bind('mousedown', function() { $( this ).addClass("active") })
                        .bind('mouseup', function() { $( this ).removeClass("active") });
                btn.addClass("idButtonItem").appendTo(container);
            }

            /* 计算buttonGroup宽度 */
            if(btnOptions.btnType == 1 || btnOptions.btnType == 2) {
                btn.parent("label").css({ 'width': btn.outerWidth(true) + btn.next('span').outerWidth(true) + 1 });
                if(btnOptions.btnSetId) {
                    groupWrapWidth += !plusSetWidth ? setsWidth + btn.parent("label").outerWidth(true) : btn.parent("label").outerWidth(true);
                    plusSetWidth = true;
                }
            } else if(btnOptions.btnType == 3 || btnOptions.btnType == 5) {

                btn.parents(".btnset-wrapper").css({
                    'width': btn.prev('span').outerWidth(true) + btn.outerWidth(true)
                            + btn.css("borderLeftWidth").split("px")[0] * 2
                });
                groupWrapWidth += btn.parents(".btnset-wrapper").outerWidth(true);
            } else {
                if(horizon && btnOptions.showBtnLabel && btnOptions.btnIcon != null ) {
                    btn.css({ 'width': btn.find(".icon").outerWidth(true) + btn.find('.label').css({ 'float': "right" }).outerWidth(true) + 18 });
                }
                groupWrapWidth += btn.outerWidth(true);
            }
            container.css({ 'width': horizon ? groupWrapWidth : "" });

            /* 计算toolbar滚动宽度 */
            scrollWrapWidth = 0;
            for(var loop = 0; loop < scrollWrapper.find(".button-group").length; loop++) {
                scrollWrapWidth += $( scrollWrapper.find(".button-group")[loop] ).outerWidth(true);
                if(scrollWrapWidth > toolbar.width())
                    toolbar.find(".idScrollLeft").show();
            }
            scrollWrapper.css({ 'width': horizon ? scrollWrapWidth : "" });

            if(btnOptions.bindEvents != null) {
                if($.isArray(btnOptions.bindEvents)) {
                    $( btnOptions.bindEvents ).each(function() {
                        btn.bindEvents(this);
                    });
                } else {
                    btn.bindEvents(btnOptions.bindEvents);
                }
            }
            return btn;
        },
        bindEvents: function(btnEventNames, handler, separator) {
            if($( this ).attr("class").indexOf("idToolbarButton") >= 0) {
                var events = ["focus", "click", "dblclick", "mouseover", "mouseout", "mouseup", "mousedown", "change", "keyup", "keydown", "keypress" ];
                var eventName;
                if(typeof btnEventNames === "object") {
                    eventName = btnEventNames.eventName.split(separator == undefined ? " " : separator);
                    handler = btnEventNames.eventHandler;
                    separator = btnEventNames.nameSeparator;
                } else {
                    eventName = btnEventNames.split(separator == undefined ? " " : separator);
                }

                for(var loop = 0; loop < eventName.length; loop++) {
                    if($.inArray(eventName[loop], events) >= 0) {

                        this.bind(eventName[loop], handler);
                    }
                }
            }
            return this;
        },
        enableBtn: function() {
            if($( this ).attr("class").indexOf("idToolbarButton") >= 0) {
                $( this ).removeAttr("disabled").removeClass("disabled").addClass("enabled").find("input:checkbox").removeAttr("disabled");
            } else {
                return false;
            }
        },
        disableBtn: function() {
            if($( this ).attr("class").indexOf("idToolbarButton") >= 0) {
                $( this ).attr({ 'disabled': "disabled" }).removeClass("enabled").addClass("disabled").find("input:checkbox").attr({ 'disabled': "disabled" });
            } else {
                return false;
            }
        },
        status: function() {
            if($( this ).attr("class").indexOf("idToolbarButton") >= 0 && $( this ).attr("class").indexOf("checker") >= 0) {
                return $( this ).find("input:checkbox").attr("checked");
            } else {
                return null;
            }
        }
    });

})(jQuery);