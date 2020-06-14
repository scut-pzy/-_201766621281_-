<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="Bean.*" %>
<%@ page language="java" import="Dao.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href=/ShopSystem/css/style.css> 
<%
List<HistoryBean> list=new ArrayList<HistoryBean>();
UserBean user=null;
internetHistory dao=new internetHistory();
user=(UserBean)request.getSession().getAttribute("user");
String username=user.getUsername();
list=dao.findHistory(username);
request.setAttribute("history", list);
int i=0;
if(list!=null){
     i=list.size();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">

<title>�����¼</title>
</head>
<body>
<li>���м�¼��<%=i%>����Ʒ�����¼</li>
<a href="index.jsp"><button>������ҳ</button></a>
<table border="1px solid #96c2f1" background="#eff7ff" align="center" >
        <tr>
             <td>�û���</td>
            <td>��Ʒ��</td>
            <td>�۸�</td>
            <td>����</td>
            <td>���ʱ��</td>
        </tr>
    <c:forEach items="${history }" var="h">
        <tr>
            <td>${h.username}</td>
            <td>${h.name }</td>
            <td>${h.price}</td>
            <td>${h.catelog}</td>
            <td>${h.date}</td>
        </tr>
    </c:forEach>    
    </table>
</body>
</html>