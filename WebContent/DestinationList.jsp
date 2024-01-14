<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="DestinationDAO" value="<%= new com.servlet.one.DestinationDAO() %>" />
<c:set var="alist" value="${DestinationDAO.selectDestinationList()}" />

<table border="1">
    <tr>
        <th>여행지 코드</th>
        <th>여행지 사진</th>
        <th>여행지 이름</th>
        <th>여행지 세부사항</th>
        <th>여행 방식</th>
        <th>가격</th>
    </tr>

    <c:forEach var="destination" items="${alist}">
        <tr>
			<td>${destination.dsCode}</td>
            <td></td>
            <td>${destination.dsName}</td>
            <td>${destination.dsDetail}</td>
            <td>${destination.type}</td>
            <td>${destination.price}</td>
        </tr>
    </c:forEach>
</table>