<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
 <%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="Bean.*" %>
<%@ page language="java" import="Dao.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
List<HistoryBean> list=new ArrayList<HistoryBean>();
UserBean user=null;
internetHistory dao=new internetHistory();
user=(UserBean)request.getSession().getAttribute("user");
//String username=user.getUsername();
String username="root";
list=dao.findHistory(username);
Map<String, Integer> map = new HashMap<String,Integer>(); 
for(int i=0;i<list.size();i++){
	int num=1;
	if(map.get(list.get(i).getName())==null){
		map.put(list.get(i).getName(), num);
	}
	else{
		num=map.get(list.get(i).getName())+1;
		map.put(list.get(i).getName(), num);
	}
}
request.setAttribute("statictics", map);
int i=0;
if(map!=null){
     i=map.size();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
</head>
<body>
<h2 style="margin-left: 40%">商品浏览次数报表！</h2>
<table border="1px solid #96c2f1" background="#eff7ff" align="center">
        <tr>
            <td>商品名</td>
            <td>浏览次数</td>
        </tr>
    <c:forEach items="${statictics }" var="h">
        <tr>
            <td>${h.key}</td>
            <td>${h.value }</td>
        </tr>
    </c:forEach>    
    </table>
</body>
</html>