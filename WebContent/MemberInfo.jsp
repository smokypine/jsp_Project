<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보</title>
</head>
<body> 
    <c:if test="${not empty member}">
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
        </table>
    </c:if>
    
</body>
</html>