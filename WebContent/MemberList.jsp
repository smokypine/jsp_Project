<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="memberDAO" value="<%= new com.servlet.one.MemberDAO() %>" />
<c:set var="alist" value="${memberDAO.selectMemberList()}" />

<table border="1">
    <tr>
        <th>사용자 코드</th>
        <th>ID</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>성별</th>
        <th>이메일</th>
        <th>역할</th>
    </tr>

    <c:forEach var="member" items="${alist}">
        <tr>
			<td>${member.usercode}</td>
            <td>${member.id}</td>
            <td>${member.password}</td>
            <td>${member.name}</td>
            <td>${member.age}</td>
            <td>${member.gender}</td>
            <td>${member.email}</td>
            <td>${member.role}</td>
        </tr>
    </c:forEach>
</table>