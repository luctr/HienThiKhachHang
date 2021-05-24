<%@ page import="java.util.List" %>
<%@ page import="model.Customers" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Huy Hoang
  Date: 5/24/2021
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
  List<Customers> list = new ArrayList<>();

  Customers customers = new Customers("Nữ",18,"HN","https://scontent.fhan5-2.fna.fbcdn.net/v/t1.6435-9/186556715_1655736328147338_43994361789883170_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=0debeb&_nc_ohc=1feMPBjJM9cAX-n3L3-&_nc_ht=scontent.fhan5-2.fna&oh=d1348ca8af4b3c2480b9c86792b0e79d&oe=60CF7EC6");
  Customers customers1 = new Customers("Linh",19,"Trung Hòa","https://scontent.fhan5-5.fna.fbcdn.net/v/t1.6435-9/129855229_1046907639117225_4096187078547069221_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_ohc=GLqqCvbscJsAX9fYNBi&_nc_ht=scontent.fhan5-5.fna&oh=9c892227a61836026e8aa40e55d957da&oe=60D141FF");
  Customers customers2 = new Customers("Trang", 19,"An Duyệt","https://scontent.fhan5-2.fna.fbcdn.net/v/t1.6435-9/118123382_635513164047784_7363399364203863780_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=SYSZd6SdELMAX_TR0oQ&_nc_ht=scontent.fhan5-2.fna&oh=f686c25abca3902954e00f1be3f1d403&oe=60D2C564");

  list.add(customers);
  list.add(customers1);
  list.add(customers2);

  request.setAttribute("list",list);
%>
<html>
<head>
  <title>$Title$</title>

</head>
<body>
<table border="10px">
  <tr>
    <td>Tên</td>
    <td>Ngày Tháng Năm Sinh</td>
    <td>Địa Chỉ</td>
    <td>Ảnh</td>
  </tr>
  <c:forEach items="${list}" var="customers">
    <tr>
      <td>
        ${customers.name}
      </td>
      <td>
        ${customers.age}
      </td>
      <td>
        ${customers.address}
      </td>
      <td>
          <img style="width: 280px" src="${customers.linkImg}">
      </td>
    </tr>
  </c:forEach>

  </table>

</body>
</html>
