<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보</title>
</head>
<body> 
    <c:if test="${not empty promotion}">
    	<table border="1">
		    <tr>
		        <th>프로모션 코드</th>
		        <th>여행지 코드</th>
		        <th>프로모션 이름</th>
		        <th>할인률</th>
		    </tr>
    		<tr>
				<td>${promotion.prmCode}</td>
	            <td>${promotion.dsCode}</td>
	            <td>${promotion.prmName}</td>
	            <td>${promotion.discount}</td>
        	</tr>
        </table>
    </c:if>
    
</body>
</html>