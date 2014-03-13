<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改订单</title>
</head>
<body>
	<form action="/orders/update.do" method="post">
		order_name ： <input name="order.oder_name" value="${order.oder_name}" />
		mobile ： <input name="order.mobile" value="${order.mobile}" /> uid ：
		<input name="order.uid" value="${order.uid}" /><input type="submit"
			value="ok" />
	</form>
</body>
</html>