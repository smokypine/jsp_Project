<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="promotionDAO" value="<%= new com.servlet.one.PromotionDAO() %>" />
<c:set var="alist" value="${promotionDAO.selectPromotionList()}" />
<c:set var="mem_id" value="${sessionScope.idKey}" />

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style_01.css">
    <link rel="stylesheet" type="text/css" href="css/mypage.css">
    <meta charset="UTF-8">
    <title>마이 페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
#memberListContainer {
   overflow-x: auto;
   overflow-y: auto;
   max-height: 200px; /* 최대 높이를 조절하세요 */
}

.content {
   display: none; /* 초기에는 모든 content를 숨김 */
}

input[type='button'] {
   background-color: #007bff; /* Blue background */
   color: white; /* White text */
   border: 1px solid #0056b3; /* Darker blue border */
   padding: 10px 15px;
   border-radius: 5px;
   cursor: pointer;
   transition: background-color 0.3s;
}

input[type='button']:hover {
   background-color: #0056b3; /* Darker blue on hover */
}

/* Table Styling */
table {
   border-collapse: collapse;
   width: 100%;
}

th, td {
   text-align: left;
   padding: 8px;
}

tr:nth-child(even) {
   background-color: #f2f2f2; /* Light grey for even rows */
}

th {
   background-color: #007bff; /* Blue background for header */
   color: white;
}

tr:hover {
   background-color: #cce5ff; /* Light blue on row hover */
}

/* Menu Fixed Position */
#menu {
   position: fixed; /* 고정 위치 */
   top: 400px; /* 상단에서 400px 떨어짐 */
   left: 10px; /* 왼쪽에서 200px 떨어짐 */
   background-color: white; /* 배경색은 원하시는 대로 조정 가능 */
   padding: 10px;
   border-radius: 5px;
   box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
   /* 선택사항: 메뉴가 더 잘 보이도록 약간의 그림자 추가 */
   z-index: 1000; /* 다른 요소들 위에 보이도록 함 */
}
    </style>
</head>

<body>
    <%@ include file="./header.jsp" %>
    <div id="menu">
        <a href="./MyPage_Member.jsp">내 정보 보기/수정</a>
        <a href="./MyPage_Reservation.jsp">내 예약 관리</a>
    </div>
    <div id="member" style="margin-bottom: 20px; margin-left: 20px; float: center; width: 90%;">
        <div id="memberListContainer" style="overflow-x: auto; max-height: 250px;">
            <div id="additionalFields"></div>
        </div>
        <div style="margin-left: 20px; ">
             <input type='button' value='내 정보 보기' onclick="contentToggle('memberlook')"/>
           <input type='button' value='내 정보 수정하기' onclick="contentToggle('memberchange')"/>
        </div>
    </div>
   <!-- 내 정보 보기 -->
   <div id="memberlook" class="content" style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
       
       <table id="registrationForm1" width="70%"  border="1">
         <form name="regForm" method="post" action="/MyWebSite/MemberMyPageController" onsubmit="return submitForm(this, 'memberlook');">
            <tr align="center" bgcolor="#0056b3"> 
            <td colspan="2"><font color="#FFFFFF"><b>아이디와 패스워드를 입력하세요</b></font></td>
            </tr>
            <tr>
                  <td width="30%">아이디</td>
                  <td width="70%"><input type="text" id="checkId" name="id" size="15" placeholder="아이디"></td>
               </tr>
               <tr>
                  <td width="30">패스워드</td>
                  <td width="70%"><input type="text" id="checkPassword" name="password" size="15" placeholder="패스워드"><input type="button" value="확인하기" onclick="checkCredentials()"/></td>
               </tr> 
         </form>
      </table>
   </div>
   <!-- 내 정보 수정하기 -->
   <div id="memberchange" class="content" style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
        <form name="regForm" method="get" action="/MyWebSite/MemberMyPageController" onsubmit="return submitForm(this, 'memberchange');">
        <table width="70%" border="1">
           <tr align="center" bgcolor="#0056b3">
                <td colspan="2">
                    <!-- 변경된 부분 -->
                    <font color="#FFFFFF"><b>수정하고자 하는 멤버의 아이디와 패스워드를 입력하세요.</b></font>
                </td>
            </tr>
            <tr>
               <td width="30%">아이디</td>
               <td width="70%"><input type="text" id="checkId1" name="id" size="15" placeholder="아이디"></td>
            </tr>
            <tr>
               <td width="30">패스워드</td>
               <td width="70%"><input type="text" id="checkPassword1" name="password" size="15" placeholder="패스워드"><input type="button" value="확인하기" onclick="checkCredentials1()"/></td>
            </tr> 
            <tr>
            <td>이름</td>
         <td><input type="text" name="name" size="15"></td>
         </tr>
         <tr>
            <td>나이</td>
                   <td><input type="text" name="age" size="15"></td>
               </tr>
               <tr>
                   <td>성별</td>
                   <td>
                       <select name="gender">
                           <option value="선택하세요.">선택하세요.</option>
                           <option value="남자">남자</option>
                           <option value="여자">여자</option>
                       </select>
                   </td>
               </tr>
               <td>이메일</td>
               <td><input type="text" name="email" size="35"></td>
               </tr>
               <tr>
                   <td colspan="2" align="center">
                       <input type="submit" value="내 정보 수정하기" onclick="checkCredentials1()">
                       <input type="reset" value="다시쓰기">
                   </td>
               </tr>           
       </table>
    </div>
    
    

    <!-- JavaScript를 통한 content 보이기/감추기 함수 정의 -->
    <script>
       // 초기에 보여질 content 설정
       $(document).ready(function() {
           contentToggle('destination');
       });
   
       function contentToggle(contentId) {
           // 모든 content를 숨김
           $(".content").hide();
   
           // 클릭한 버튼에 해당하는 content만 보이게 함
           $("#" + contentId).show();
       }
   
       function submitForm(form, contentId) {
           // AJAX를 사용하여 서버에 데이터 전송
           $.ajax({
               type: form.method,
               url: form.action,
               data: $(form).serialize(),  // 폼 데이터를 직렬화하여 전송
               success: function(data) {
                   // 서버에서 받아온 HTML로 내용 갱신
                   $("#memberListContainer1").html(data);
   
                   // 회원 추가가 성공한 경우에만 content를 토글
                   if (contentId && data.trim() === "success") {
                       contentToggle(contentId);
                   }
               },
               error: function() {
                   //alert("회원 목록 갱신에 실패했습니다.");
               }
           });
   
           return false;  // 폼이 실제로 제출되지 않도록 함
       }
   
       // 내 정보 보기
       function checkCredentials() {
           var id = $("#checkId").val();
           var password = $("#checkPassword").val();
   
           console.log("ID: " + id);
           console.log("Password: " + password);
   
           $.ajax({
               type: "POST",
               url: "/MyWebSite/MemberMyPageController",
               data: { id: id, password: password },
               success: function(data) {
                   // 서버에서 받아온 HTML로 내용 갱신
                   $("#additionalFields").html(data);
               },
               error: function() {
                   alert("회원 정보 확인에 실패했습니다.");
               }
           });
       }
   
       // 내 정보 수정하기 버튼 클릭
       function goToMemberChange() {
           // 내 정보 수정하기 페이지로 이동
           contentToggle('memberchange');
       }
   
       // 회원 수정 메커니즘
       function checkCredentials1() {
           var id = $("#checkId1").val();
           var password = $("#checkPassword1").val();
   
           $.ajax({
               type: "GET",
               url: "/MyWebSite/MemberMyPageController",
               data: { id: id, password: password },
               success: function(data) {
                   // 서버에서 받아온 HTML로 내용 갱신
                   $("#additionalFields").html(data);
                   // 나머지 입력 폼이 나타날 경우 content를 토글
                   contentToggle('memberchange');
               },
               error: function() {
                   alert("회원 정보 확인에 실패했습니다.");
               }
           });
       }
   </script>
</body>
</html>