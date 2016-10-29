<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html ng-app="webApp">
<head lang="zh">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>XXX的博客-v1.0</title>
<!-- 霸下工作室 -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
<style type="text/css">
@import "<%=basePath%>plugins/thinker-md/stylesheets/vendor/font.css";

@import
	"<%=basePath%>plugins/thinker-md/stylesheets/vendor/markdown.css";

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/nature.css";

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/object.css";

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/people.css";

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/place.css";

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/Sysmbols.css"
	;

@import "<%=basePath%>plugins/thinker-md/stylesheets/emoji/twemoji.css";

@import
	"<%=basePath%>plugins/thinker-md/stylesheets/vendor/font-awesome.css";

@import
	"<%=basePath%>plugins/thinker-md/stylesheets/vendor/sunburst.css";
</style>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">

<link rel="stylesheet" href="<%=basePath%>css/base.css" />
<link rel="stylesheet" href="css/left-nav.css" />
<link rel="stylesheet" href="css/top-nav.css" />
<link rel="stylesheet" href="css/left-sub-nav.css" />
<link rel="stylesheet" href="css/manage-left-sub-nav.css" />
<link rel="stylesheet" href="css/modules/blog.view.css" />
<link rel="stylesheet" href="css/modules/manage.view.css" />

<script src="<%=basePath%>plugins/jquery/jquery-1.11.3.min.js"></script>
<script src="<%=basePath%>plugins/bootstrap/bootstrap.min.js"></script>
<script src="<%=basePath%>plugins/angularjs/angular-1.5.js"></script>
<script src="<%=basePath%>plugins/angularjs-extend-lib/angular-route.js"></script>
<script
	src="<%=basePath%>plugins/angularjs-extend-lib/angular-sanitize.js"></script>
<script
	src="<%=basePath%>plugins/angularjs-extend-lib/angular-ui-router.js"></script>
<script
	src="<%=basePath%>plugins/angularjs-ui-bootstrap/ui-bootstrap-tpls-1.3.3.min.js"></script>
<script src="<%=basePath%>plugins/angularjs-pagination/tm.pagination.js"></script>
<script
	src="<%=basePath%>plugins/angularjs-file-upload/ng-file-upload.js"></script>
<script
	src="<%=basePath%>plugins/angularjs-file-upload/ng-file-upload-shim.js"></script>

<script src="<%=basePath%>app.js"></script>
<script src="<%=basePath%>scripts/constant.js"></script>
<script src="<%=basePath%>scripts/http.interceptor.js"></script>
<script src="<%=basePath%>scripts/request.service.js"></script>

<script src="modules/common/right-nav.factory.js"></script>

<script src="modules/index/index.service.js"></script>
<script src="modules/index/index.controller.js"></script>
<script src="modules/common/sign.controller.js"></script>
<script src="modules/blog/article/article.service.js"></script>
<script src="modules/blog/article/article.controller.js"></script>
<script src="modules/blog/article/article.detail.controller.js"></script>
<script src="modules/blog/category/category.article.service.js"></script>
<script src="modules/blog/category/category.article.controller.js"></script>
<script src="modules/blog/tag/tag.article.service.js"></script>
<script src="modules/blog/tag/tag.article.controller.js"></script>

<script src="modules/common/right-nav.controller.js"></script>
<!-- 管理员即作者操作 -->
<script src="modules/manage/manage.controller.js"></script>
<script src="modules/manage/sign/sign.manage.controller.js"></script>
<script src="modules/manage/article/article.manage.service.js"></script>
<script src="modules/manage/article/article.manage.controller.js"></script>
<script src="modules/manage/article/article.form.manage.controller.js"></script>
<script src="modules/manage/article/article.detail.manage.controller.js"></script>

<script src="modules/manage/category/category.manage.service.js"></script>
<script src="modules/manage/category/category.manage.controller.js"></script>
<script src="modules/manage/tag/tag.manage.service.js"></script>
<script src="modules/manage/tag/tag.manage.controller.js"></script>
<script src="modules/manage/info/info.manage.service.js"></script>
<script src="modules/manage/info/info.manage.controller.js"></script>
<script src="modules/manage/friendlink/friendlink.manage.service.js"></script>
<script src="modules/manage/friendlink/friendlink.manage.controller.js"></script>

</head>
<body>
	<ng-include src="'<%=basePath%>modules/common/left-nav.html'"></ng-include>
	<div ng-view></div>
	<%-- <div class="hidden-xs"><ng-include src="'<%=basePath%>modules/common/right-nav.html'"></ng-include></div> --%>
</body>

<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/underscore/underscore-min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/highlight/highlight.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/he.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/marked.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/to-markdown.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/jsHtmlToText.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/tab.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/emoji.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/bootstrap-markdown.js"></script>
<script type="text/javascript" charset="utf-8"
	src="<%=basePath%>plugins/thinker-md/javascripts/vendor/markdown/locale/bootstrap-markdown.zh.js"></script>

</html>