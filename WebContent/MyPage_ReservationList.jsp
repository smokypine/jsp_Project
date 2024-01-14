<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>예약 정보</title>
</head>
<body>

    <c:if test="${not empty reservationList}">
        <table border="1">
            <tr>
                <th>예약 코드</th>
                <th>사용자 코드</th>
                <th>사용자 아이디</th>
                <th>여행지 코드</th>
                <th>프로모션 코드</th>
                <th>가격</th>
                <th>날짜</th>
            </tr>
            <c:forEach var="reservation" items="${reservationList}">
                <tr>
                    <td>${reservation.rvCode}</td>
                    <td>${reservation.userCode}</td>
                    <td>${reservation.id}</td>
                    <td>${reservation.dsCode}</td>
                    <td>${reservation.prmCode}</td>
                    <td>${reservation.fiPrice}</td>
                    <td>${reservation.date}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

</body>
</html>