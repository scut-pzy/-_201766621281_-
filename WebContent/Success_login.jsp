<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>�ɹ�ע�ᣡ2�������¼����</title>
</head>
<body>
<p>���${sessionScope.user.username}�û�</p>
 <% response.setHeader("refresh","1;URL=index.jsp"); %>
</body>
</html>