<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="promotionDAO" value="<%= new com.servlet.one.PromotionDAO() %>" />
<c:set var="alist" value="${promotionDAO.selectPromotionList()}" />

<table border="1">
    <tr>
        <th>프로모션 코드</th>
        <th>여행지 코드</th>
        <th>프로모션 이름</th>
        <th>할인률</th>
    </tr>

    <c:forEach var="promotion" items="${alist}">
        <tr>
			<td>${promotion.prmCode}</td>
            <td>${promotion.dsCode}</td>
            <td>${promotion.prmName}</td>
            <td>${promotion.discount}</td>
        </tr>
    </c:forEach>
</table>