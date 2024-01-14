<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
<title>모델 2 예제 (회원가입)</title>
    <script>
        function redirectToIndex() {
            // 회원가입이 완료되었을 때, index.jsp로 이동
            window.location.href = "./index.jsp";
        }
    </script>
</head>
<body>
<h1> 회원가입 </h1>
<br><br>
		<table width="70%"  border="1">
		<form name="regForm" method="get" action="/MyWebSite/register.do">
		<tr align="center" bgcolor="#996600"> 
		<td colspan="2"><font color="#FFFFFF"><b>회원 가입</b></font></td>
		</tr>
		<tr> 
		<td width="30%">아이디</td>
		<td width="70%"><input type="text" name="id" size="15">
		<input type="button" value="ID중복확인" onClick="idCheck(this.form.mem_id.value)">
		</td>
		</tr>
		<tr> 
		<td>패스워드</td>
		<td><input type="password" name="password" size="15"></td>
		</tr>
		<tr> 
		<td>패스워드 확인</td>
		<td><input type="password" name="RePassword" size="15"> </td>
		</tr>
		<tr> 
		<td>이름</td>
		<td><input type="text" name="name" size="15"> </td>
		</tr>
		<tr> 
		<td>나이</td>
		<td><input type="text" name="age" size="15"> </td>
		</tr>
		<tr>  
		<td>성별</td>
		<td><select name=gender>
		<option value="0">선택하세요.
		<option value="남자">남자
		<option value="여자">여자
		</select>
		</td>
		</tr>
		<td>이메일</td>
		<td><input type="text" name="email" size="35"> </td>
		</tr>
		<tr>  

		<tr> 
		<td colspan="2" align="center"> 
		<input type="submit" value="회원가입" > 		 
		<input type="reset" value="다시쓰기"> 
		</td>
		</tr>
		</form>
		</table>
		
	</td>
	</tr>
	</table>
</body>
</html>