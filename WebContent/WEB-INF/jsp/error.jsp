<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>error!</title>
</head>
<body>
	Something goes Wrong!
	<s:property value="exception" />
	<s:property value="exceptionStack" />
</body>
</html>