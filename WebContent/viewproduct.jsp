<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href=/ShopSystem/css/detail.css> 
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>��Ʒ�б�</title>
<c:if  test="${empty user }">
<a href="Login.jsp"><button class="ok">��¼</button></a>
<a href="Register.jsp"><button class="yes">ע��</button></a>
</c:if>
<c:forEach items="${product }"  var="list">
<div>
<p>
    <div class="box7">
<img alt="" src="">
</img>
    ͼƬ
    </div>
</p>
 <div class="container "> 
             <div class="mui-row mui-col-xs-12 mui-clearfix">
                 <span class="mui-col-xs-6">
                     <p class="red"> ��Ʒ����:${list.name}</p>
                     <p class="red"> ��Ʒ����:${list.catelog}</p>
                     <p class="red"> ��Ʒ�۸�:${list.price}</p>
                     <p class="red">  ��Ʒ���:${list.num}</p>
                   <form method=post action="${pageContext.request.contextPath}/ShowProduct.jsp?id=${list.id}">
          <input type="submit" class="mui-col-xs-6" value="�鿴">
    </form>
                 </span>
             </div>


</div>
</div>
</c:forEach>
</head>
<body>

</body>
</html>