<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보</title>
</head>
<body> 
    <c:if test="${not empty destination}">
    	<table border="1">
		    <tr>
		        <th>여행지 코드</th>
				<th>여행지 사진</th>
		        <th>여행지 이름</th>
		        <th>여행지 세부사항</th>
		        <th>여행 방식</th>
		        <th>가격</th>
		    </tr>
    		<tr>
				<td>${destination.dsCode}</td>
				<td></td>
	            <td>${destination.dsName}</td>
	            <td>${destination.dsDetail}</td>
	            <td>${destination.type}</td>
	            <td>${destination.price}</td>
        	</tr>
        </table>
    </c:if>
    
</body>
</html>