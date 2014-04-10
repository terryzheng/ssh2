<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.demo.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="/metronic.bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="/metronic.bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link href="/metronic.bootstrap/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="/metronic.bootstrap/css/style-metro.css" rel="stylesheet"
	type="text/css" />
<link href="/metronic.bootstrap/css/style.css" rel="stylesheet"
	type="text/css" />
<link href="/metronic.bootstrap/css/style-responsive.css"
	rel="stylesheet" type="text/css" />
<link href="/metronic.bootstrap/css/themes/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="/metronic.bootstrap/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
</head>
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<%
		String p = "index";
	%>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<%@ include file="/WEB-INF/jsp/sidebar.jsp"%>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">用户姓名为： ${session.user.name}</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="/metronic.bootstrap/js/jquery-1.10.1.min.js"
		type="text/javascript"></script>
	<script src="/metronic.bootstrap/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="/metronic.bootstrap/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="/metronic.bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="/metronic.bootstrap/js/excanvas.min.js"></script>
	<script src="/metronic.bootstrap/js/respond.min.js"></script>  
	<![endif]-->
	<script src="/metronic.bootstrap/js/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="/metronic.bootstrap/js/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="/metronic.bootstrap/js/jquery.cookie.min.js"
		type="text/javascript"></script>
	<script src="/metronic.bootstrap/js/jquery.uniform.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<script src="/metronic.bootstrap/js/app.js"></script>
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();
		});
	</script>
</body>
</html>