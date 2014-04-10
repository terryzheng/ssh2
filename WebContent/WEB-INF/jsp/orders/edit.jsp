<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.demo.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改订单</title>
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
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<%
			String p = "order-list";
		%>
		<%@ include file="/WEB-INF/jsp/sidebar.jsp"%>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<%@ include file="/WEB-INF/jsp/breadcrumb.jsp"%>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<form action="/orders/update.do" class="edit-form form-view"
					method="post">
					<div class="alert alert-error hide">
						<button class="close" data-dismiss="alert"></button>
						<span>Enter any info.</span>
					</div>
					<div class="control-group">
						<label class="control-label visible-ie8 visible-ie9">order_name</label>
						<div class="controls">
							<span class="">order_name</span> <input name="order.oder_name"
								value="${order.oder_name}" type="text" class=""
								placeholder="Ordername">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label visible-ie8 visible-ie9">mobile</label>
						<div class="controls">
							<span class="">mobile</span> <input name="order.mobile"
								value="${order.mobile}" type="text" class=""
								placeholder="mobile">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="control-label visible-ie8 visible-ie9">uid</label>
							<span class="">uid</span> <input name="order.uid"
								value="${order.uid}" type="text" class="" placeholder="uid">
						</div>
					</div>
					<button type="submit">ok</button>
				</form>
				<!-- END PAGE CONTENT-->
			</div>
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
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="/metronic.bootstrap/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="/metronic.bootstrap/js/app.js"></script>
	<script>
		jQuery(document)
				.ready(
						function() {
							// initiate layout and plugins
							App.init();
							$(".edit-form")
									.validate(
											{
												errorElement : 'label', //default input error message container
												errorClass : 'help-inline', // default input error message class
												focusInvalid : false, // do not focus the last invalid input
												rules : {
													'order.oder_name' : {
														required : true
													},
													'order.mobile' : {
														required : true,
														minlength : 6
													},
													'order.uid' : {
														required : true
													}
												},
												messages : {
													'order.oder_name' : {
														required : "Ordername is required."
													},
													'order.mobile' : {
														required : "Mobile is required.",
														minlength : "Too short for a mobile."
													},
													'order.uid' : {
														required : "Uid is required."
													}
												},
												invalidHandler : function(
														event, validator) { //display error alert on form submit   
													$('.alert-error',
															$('.edit-form'))
															.show();
												},

												highlight : function(element) { // hightlight error inputs
													$(element).closest(
															'.control-group')
															.addClass('error'); // set error class to the control group
												},

												success : function(label) {
													label.closest(
															'.control-group')
															.removeClass(
																	'error');
													label.remove();
												},

												errorPlacement : function(
														error, element) {
													error
															.addClass(
																	'help-small no-left-padding')
															.insertAfter(
																	element
																			.closest('.controls'));
												},

												submitHandler : function(form) {
													form.submit();
												}
											});
						});
	</script>
</body>
</html>