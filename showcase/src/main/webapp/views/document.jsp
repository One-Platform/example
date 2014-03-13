<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ONE-Platform</title>
    <link href="${ctx}/static/css/document.css" rel="stylesheet"/>
    <%@ include file="/static/layouts/base.jsp"%>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ctx}/static/images/bootstrap/apple-touch-icon-144-precomposed.png" />
    <link rel="shortcut icon" href="${ctx}/static/images/bootstrap/favicon.png" />
    <script type="text/javascript">
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

            $("#spring-amqp2").click(function(){
                $("#spring-amqp2").addClass("js-open");
            });
            $(document).bind("click",function(e){
                var target  = $(e.target);
                if(target.closest("#spring-amqp2").length == 0){
                    $("#spring-amqp2").removeClass("js-open");
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

    </script>
</head>
<body>

<!-- header -->
<%@ include file="/static/layouts/header.jsp"%>

<div class="bs-docs-header" id="content">
    <div class="container">
        <h2>文档</h2>
        <p class="lead">在这里可以找到所有和平台架构相关的文档以及平台所有产品的API</p>
    </div>
</div>

<div class="container">
    <p class="lead">架构</p>
    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="" >
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">总体架构设计</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="border-bottom: 1px solid #E5E5E5;padding-top: 20px;margin-bottom: 20px"></div>
    <p class="lead">技术组件</p>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="lazyload">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">延迟加载</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon current-version"></div>
                                <div class="icon ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="mouseTrap">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">键盘注册（Mousetrap）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a  href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a  href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="cache">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">缓存服务</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a  href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a  href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="compress">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">压缩合并（Wro4j）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="crypto">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">加密解密</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="webservices">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">Web Service（CXF、AXIS2...）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="rule">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">规则引擎</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="batch">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">批处理引擎（Spring Batch）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="bpm">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">流程引擎</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="schedule">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">计划任务</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="ims">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">安全权限</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="concurrent">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">并发组件</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="messageQueue">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">消息总线</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="SSO">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">单点登录</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="report">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">报表引擎</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="search">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">检索引擎</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="exception">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">异常组件</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="session">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">Session管理</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">分库分表</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="border-bottom: 1px solid #E5E5E5;padding-top: 20px;margin-bottom: 20px"></div>
    <p class="lead">开发</p>
    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="web">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">WEB框架</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="data">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">持久层框架</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="Specification">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">开发规范</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="sdk">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">开发工具包</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="environment">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">编译与管理（Maven）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="code">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">代码生成工具</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="base">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">基础设施构建工具</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="border-bottom: 1px solid #E5E5E5;padding-top: 20px;margin-bottom: 20px"></div>
    <p class="lead">测试</p>
    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="UT" >
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">单元测试（Mockito、PowerMock...）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="IT">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">集成测试（Spring Test）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="FT">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">功能测试（Selenium2）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="AT">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">自动化测试（Maven）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="PT">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">性能测试</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div style="border-bottom: 1px solid #E5E5E5;padding-top: 20px;margin-bottom: 20px"></div>
    <p class="lead">管理</p>
    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="nexus">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">组件库管理（Nexus）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="QM">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">质量管理（Sonar）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="VM">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">版本管理</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="BM">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">BUG管理</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="border-bottom: 1px solid #E5E5E5;padding-top: 20px;margin-bottom: 20px"></div>
    <p class="lead">运营</p>
    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper"  id="logAudit">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">日志审计</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="monitor">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">生产监控</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="item-dropdown-widget docs--item js-item-dropdown--wrapper " data-filterable="Spring AMQP" id="CI">
        <div class="item-dropdown--link js-item--open-dropdown">
            <i class="item-dropdown--icon icon-reorder pull-right"></i>
            <p class="item-dropdown--title">持续集成（Hudson、Maven...）</p>
        </div>
        <div class="item--dropdown docs-version--dropdown">
            <div class="item--header">
                <a class="item--header-link item--left-column" href="http://projects.spring.io/spring-amqp">
                    <i class="icon-globe"></i>
                    Site
                </a>
                <a class="item--header-link item--right-column" href="http://github.com/spring-projects/spring-amqp">
                    <i class="icon-github"></i>
                    Repo
                </a>
            </div>
            <div class="item--body">
                <div class="item--body-title">
                    <div class="item--left-column">
                        Release
                    </div>
                    <div class="item--right-column">
                        Documentation
                    </div>
                </div>
                <div class="item--body">
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0 M2</p>
                                <div class="icon icon-pre-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.M2/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.3.0</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.3.0.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.2</p>
                                <div class="icon icon-snapshot-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.2.BUILD-SNAPSHOT/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.2.1</p>
                                <div class="icon icon-current-version"></div>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.2.1.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="item--body--version">
                            <div class="item--left-column">
                                <p>1.1.4</p>
                                <div class="icon icon-ga-release"></div>
                            </div>
                            <div class="item--right-column">
                                <a class="docs-link reference-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/reference/html">Reference</a>
                                <a class="docs-link api-link" href="http://docs.spring.io/spring-amqp/docs/1.1.4.RELEASE/api/">API</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- Footer -->
<%@ include file="/static/layouts/footer.jsp"%>


</body>
</html>
