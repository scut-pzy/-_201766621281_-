<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="Bean.ProductBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
    crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>��Ʒ����</title>
</head>
<body>
<%
    ProductBean detail=null;
    detail=(ProductBean)request.getAttribute("detail");
    System.out.print(detail);
    request.setAttribute("list", detail);
%>   
<c:if   test="${not empty  detail }">

<p>��ƷID:<%=detail.getId() %></p>

<form action="${pageContext.request.contextPath }/UpdateProductServlet?type=update&id=<%=detail.getId()  %> " method=post>
<p>����:<%=detail.getCatelog()%>

    
<input list="companys" name="catelog" editable="false" placeholder="����������Ʒ����"/>
  <datalist id="companys">
  <option value="�ֻ�����">
  <option value="���Ӳ�Ʒ">
  <option value="�·�����">
  <option value="�����豸">
  <option value="������Ʒ">
  <option value="ҽ��ҩ��">
  <option value="��ͨ����">
  </datalist>
</p>

<p>��Ʒ��:<%=detail.getName() %>
    <input type="text" name="name"  placeholder="����������Ʒ��">
</p>
<p>ͼƬ:<%=detail.getImgurl() %></p>

<p>�۸�:<%=detail.getPrice() %>
<input type="text"  name="price" placeholder="�������¼۸�">
</p>
<p>���:<%=detail.getNum() %>
<input type="text" name="num" placeholder="�������¿��">
</p>
<p>����:<%=detail.getDes() %></p>
<input type="text" name="des"  placeholder="������������">
<p><input type="submit"  value="�ύ�޸�"></p>
</form>
</c:if>
<!-- <p>/Shop/ProductList.jsp?begin=${sessionScope.page_current  }</p> -->
<form action="${pageContext.request.contextPath }/proServlet" method="post">
<input type="submit" value="������ҳ">
</form>
</body>
</html>