<%--
  Created by IntelliJ IDEA.
  User: yebbi
  Date: 2023/12/01
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: #87CEEB; /* 하늘색 배경 */
            font-family: 'GowunDodum-Regular', sans-serif;
            margin: 20px;
        }

        h1 {
            color: #007bff; /* 파란색 헤딩 */
            font-family: 'GowunDodum-Regular', sans-serif;
        }

        h2 {
            color: #007bff; /* 파란색 헤딩 */
            font-family: 'GowunDodum-Regular', sans-serif;
        }

        .table {
            background-color: #d3ebf8; /* 연한 하늘색 배경 */
            border: 1px solid #fff; /* 하얀색 테두리 */
        }

        th, td {
            text-align: center;
            border: 1px solid #fff;
            padding: 8px; /* 셀 안의 여백 */
        }

        button {
            background-color: #28a745; /* 녹색 버튼 */
            color: #fff; /* 흰색 텍스트 */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838; /* 호버 시 더 진한 녹색 */
        }
    </style>

    <style>
        @font-face {
            font-family: 'GowunDodum-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    </style>
</head>


<body>
<div class="table-responsive">
    <h1>숙소모아</h1>
    <table class="table table-striped table-sm">
        <tr>
            <th>Number</th>
            <th>숙소 이름</th>
            <th>숙소 주소</th>
            <th>가격</th>
            <th>숙소 전화번호</th>
            <th>기본 정보</th>
            <th>입실 시간</th>
            <th>퇴실 시간</th>
            <th>예약 여부</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td><a href="view/${u.name}">${u.name}</a></td>
                <td>${u.address}</td>
                <td>${u.price}</td>
                <td>${u.onerInfo}</td>
                <td>${u.info}</td>
                <td>${u.startTime}</td>
                <td>${u.endTime}</td>
                <td>${u.reservation}</td>
                <td><a href="editform/${u.seq}"><img src='../img/edit.png' width="20"></a></td>
                <td><a href="javascript:delete_ok('${u.seq}')"><img src='../img/delete.png' width="20"></a></td>


            </tr>
        </c:forEach>


    </table>
    <br/><button type="button" onclick="location.href='add'">새글쓰기</button>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 숙소를 삭제하겠습니까?");
            if(a) location.href='delete/'+id;
        }
    </script>

</div>

</body>
</html>
