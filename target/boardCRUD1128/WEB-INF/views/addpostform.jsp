

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
  <title>새 글쓰기</title>
</head>

<body>
<%
  Object loginInfo = session.getAttribute("login");

  // 로그인 정보가 없다면 로그인 페이지로 리다이렉션
  if (loginInfo == null) {
    response.sendRedirect(request.getContextPath() + "/");
    //response.sendRedirect("redirect:/");
    return;
  }
%>
<form action="addok" method="post">
  <table>
    <tr><td>숙소 이름:</td><td><input type="text" name="name"/></td></tr>
    <tr><td>숙소 주소:</td><td><input type="text" name="address"/></td></tr>
    <tr><td>가격:</td><td><input type="text" name="price"/></td></tr>
    <tr><td>숙소 전화번호:</td><td><input type="text" name="onerInfo"/></td></tr>
    <tr><td>기본 정보:</td><td><textarea cols="50" rows="5" name="info"></textarea></td></tr>
    <tr><td>입실 시간:</td><td><input type="time" name="startTime"/></td></tr>
    <tr><td>퇴실 시간:</td><td><input type="time" name="endTime"/></td></tr>
    <tr><td>예약 여부:</td><td><input type="checkbox" name="reservation"/></td></tr>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type = "submit">등록하기</button>
</form>

</body>
</html>