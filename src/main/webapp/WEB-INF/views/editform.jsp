<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: yebbi
  Date: 2023/12/02
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>
<head>
    <title>숙소 정보 수정</title>
</head>
<body>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table id="list">
    <tr><td>숙소 이름:</td><td><form:input path="name" /></td></tr>
    <tr><td>숙소 주소:</td><td><form:input path="address" /></td></tr>
    <tr><td>가격:</td><td><form:input path="price"  /></td></tr>
    <tr><td>담당자 정보:</td><td><form:input path="onerInfo" /></td></tr>
    <tr><td>기본 정보:</td><td><form:textarea cols="50" rows="5" path="info"/></td></tr>
    <tr><td>입실 시간:</td><td><form:input path="startTime" /></td></tr>
    <tr><td>퇴실 시간:</td><td><form:input path="endTime" /></td></tr>
    <tr><td>예약여부:</td><td><form:checkbox path="reservation" /></td></tr>
  </table>
  <input type="submit" value ="수정하기"/>
  <input type = "button" value = "취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>
