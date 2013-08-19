<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>CQA示例:<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="<c:url value='/images/favicon.ico'/>" rel="shortcut icon">
<link href="<c:url value='/bootstrap/css/bootstrap.min.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/validation/validate.css'/>" type="text/css" rel="stylesheet" />
<link href="<c:url value='/styles/default.css" type="text/css'/>" rel="stylesheet" />
<script src="<c:url value='/js/jquery-1.9.1.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/validation/jquery.validate.min.js'/>" type="text/javascript"></script>
<script src="<c:url value='/validation/messages_bs_zh.js'/>" type="text/javascript"></script>


<sitemesh:head/>
</head>

<body>
	<div class="container1">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div id="content">
			<sitemesh:body/>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
	<script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>" type="text/javascript">
</body>
</html>