<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单列表</title>
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
<link href="/metronic.bootstrap/css/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="/metronic.bootstrap/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" href="/metronic.bootstrap/css/DT_bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="/metronic.bootstrap/css/select2_metro.css" />
<!-- END PAGE LEVEL STYLES -->
</head>
<body>
	<!-- BEGIN PAGE CONTENT-->
	<div class="row-fluid">
		<div class="span9">
			<!-- BEGIN TABLE PORTLET-->
			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-edit"></i>订单列表
					</div>
					<div class="tools">
						<a href="javascript:void(0)" class="collapse"></a> <a
							href="javascript:void(0)" class="reload"></a> <a
							href="javascript:void(0)" class="remove"></a>
					</div>
				</div>
				<div class="portlet-body">
					<div class="clearfix">
						<div class="btn-group">
							<a href="/orders/init.do" class="btn green"> Add New <i
								class="icon-plus"></i> </a>
						</div>
						<div class="btn-group pull-right">
							<a class="btn dropdown-toggle" data-toggle="dropdown"> Tools
								<i class="icon-angle-down"></i> </a>
							<ul class="dropdown-menu pull-right">
								<li><a href="#">Print</a>
								</li>
								<li><a href="#">Save as PDF</a>
								</li>
								<li><a href="#">Export to Excel</a>
								</li>
							</ul>
						</div>
					</div>
					<table class="table table-striped table-bordered table-hover"
						id="order_table">
						<thead>
							<tr>
								<td>order_name</td>
								<td>mobile</td>
								<td>uid</td>
								<td>schindustry</td>
								<td>resume_id</td>
								<td>edit</td>
								<td>delete</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="order" items="${orderlist}">
								<tr>
									<td>${order.oder_name}</td>
									<td>${order.mobile}</td>
									<td>${order.uid}</td>
									<td>${order.schindustry}</td>
									<td>${order.resume_id}</td>
									<td><a href="/orders/edit.do?orderId=${order.id}">Edit</a>
									</td>
									<td><a class="delete" title="${order.id}"
										href="javascript:void(0)">Delete</a>
									</td>
								</tr>
							</c:forEach>
							<!-- 
					<tr>
						<td><a href="/orders/init.do">添加新订单</a>
						</td>
					</tr>
					 -->
						</tbody>
					</table>
				</div>
			</div>
			<!-- END TABLE PORTLET-->
		</div>
	</div>
	<!-- END PAGE CONTENT-->
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
	<script type="text/javascript"
		src="/metronic.bootstrap/js/select2.min.js"></script>
	<script type="text/javascript"
		src="/metronic.bootstrap/js/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="/metronic.bootstrap/js/DT_bootstrap.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<script src="/metronic.bootstrap/js/app.js"></script>
	<script src="/metronic.bootstrap/js/table-editable.js"></script>
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			App.init();
			TableEditable.init();
		});
	</script>
</body>
</html>