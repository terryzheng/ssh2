<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.demo.util.*"%>
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
<link href="/metronic.bootstrap/css/themes/default.css" rel="stylesheet"
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
				<div class="row-fluid">
					<div class="span12">
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
										<a class="btn dropdown-toggle" data-toggle="dropdown">
											Tools <i class="icon-angle-down"></i> </a>
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
								<div class="row-fluid">
									<div class="span6">
										<div class="dataTables_info" id="order_table_info">当前显示
											${(currentPage-1)*pageSize+1} 到 ${currentPage*pageSize} 条，共
											${totalSize} 条记录</div>
									</div>
									<div class="span6">
										<div class="dataTables_paginate paging_bootstrap pagination">
											<ul>

												<li><a href="/orders/list.do?currentPage=1">首页</a></li>
												<c:if test="${currentPage>2}">
													<li><a
														href="/orders/list.do?currentPage=${currentPage-2}">${currentPage-2}</a>
													</li>
												</c:if>
												<c:if test="${currentPage>1}">
													<li><a
														href="/orders/list.do?currentPage=${currentPage-1}">${currentPage-1}</a>
													</li>
												</c:if>
												<li class="active"><a href="javascript:;">${currentPage}</a>
												</li>
												<c:if test="${currentPage<totalPage}">
													<li><a
														href="/orders/list.do?currentPage=${currentPage+1}">${currentPage+1}</a>
													</li>
												</c:if>
												<c:if test="${currentPage<totalPage-1}">
													<li><a
														href="/orders/list.do?currentPage=${currentPage+2}">${currentPage+2}</a>
													</li>
												</c:if>
												<li><a href="/orders/list.do?currentPage=${totalPage}">尾页</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END TABLE PORTLET-->
					</div>
				</div>
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