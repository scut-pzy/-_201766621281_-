<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@page language="java" import="Bean.*"%>
<link rel="stylesheet" type="text/css" href=/ShopSystem/css/style.css> 
<html>
<head>
<meta charset="GB18030">
<title>����Ա��������</title>
</head>
<body>
<c:if test="${not empty manager }">
<form action="${pageContext.request.contextPath}/CatelogServlet?catelog=product" method="post">
<input   id="1" class="div2" type="submit" value="��Ʒ����"><label for="1" >��Ʒ����</label>
</form>
<form action="${pageContext.request.contextPath}/CatelogServlet?catelog=user" method="post">
<input  id="2" class="div 2" type="submit" value="���۹���"><label for="2">���۹���</label>
</form>
</c:if>
</body>
</html>