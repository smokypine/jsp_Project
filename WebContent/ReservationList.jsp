<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="reservationDAO" value="<%= new com.servlet.one.ReservationDAO() %>" />
<c:set var="alist" value="${reservationDAO.selectReservationList()}" />

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

    <c:forEach var="reservation" items="${alist}">
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