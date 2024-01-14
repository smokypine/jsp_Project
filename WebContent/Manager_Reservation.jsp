<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="reservationDAO"
   value="<%= new com.servlet.one.ReservationDAO() %>" />
<c:set var="alist" value="${reservationDAO.selectReservationList()}" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style_01.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<meta charset="UTF-8">
<title>관리자 페이지</title>
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
   <%@ include file="./header.jsp"%>
   <div id="menu">
      <a href="./Manager_Members.jsp">회원 관리</a> <a
         href="./Manager_Destination.jsp">여행지 관리</a> <a
         href="./Manager_Reservation.jsp">예약 관리</a> <a
         href="./Manager_Promotion.jsp">프로모션 관리</a>
   </div>
   <div id="reservation"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 90%;">
      <div id="reservationListContainer"
         style="overflow-x: auto; max-height: 250px;">
         <%@include file="./ReservationList.jsp"%>
      </div>
      <div id="MembersListContainer"
         style="overflow-x: auto; max-height: 250px;">
         <%@include file="./MemberList.jsp"%>
      </div>
      <div id="DestinationListContainer"
         style="overflow-x: auto; max-height: 250px;">
         <%@include file="./DestinationList.jsp"%>
      </div>
      <div id="PromotionListContainer"
         style="overflow-x: auto; max-height: 250px;">
         <%@include file="./PromotionList.jsp"%>
      </div>
      <div style="margin-left: 20px;">
         <input type='button' value='예약목록 확인' onclick="showReservationList()" />
         <input type='button' value='회원목록 확인' onclick="showMembersList()" />
         <input type='button' value='여행목록 확인' onclick="showDestinationList()" />
         <input type='button' value='프로모션 확인' onclick="showPromotionList()" />
         </div><div style="margin-left: 20px;">
         <input type='button' value='예약 추가하기'
            onclick="contentToggle('reservationadd')" /> <input type='button'
            value='예약 정보 수정하기' onclick="contentToggle('reservationchange')" /> <input
            type='button' value='예약 정보 삭제하기'
            onclick="contentToggle('reservationdelete')" />
      </div>
   </div>
   <div id="reservationadd" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
      <div id="additionalFields1"></div>
      <!-- 사용자 코드 확인 입력시 작동 -->
      <div id="additionalFields2"></div>
      <!-- 여행지 코드 확인 입력시 작동 -->
      <div id="additionalFields3"></div>
      <!-- 프로모션 코드 확인 입력시 작동 -->
      <table id="registrationForm1" width="70%" border="1">
         <form name="regForm" method="get"
            action="/MyWebSite/ReservationController"
            onsubmit="return submitForm(this, 'reservationadd');">
            <tr align="center" bgcolor="#0056b3">
               <td colspan="2"><font color="#FFFFFF"><b>예약 추가하기</b></font></td>
            </tr>
            <tr>
               <td width="30%">사용자 코드</td>
               <td width="70%"><input type="text" id="checkUserCode"
                  name="usercode" size="15"><input type="button"
                  value="확인하기" onclick="checkCredentials1()" /></td>
            </tr>
	<tr> 
		<td width="30%">사용자 아이디</td>
		<td width="70%"><input type="text" id="checkUserId" name="id" size="15"></td>
	</tr>
            <tr>
               <td width="30%">여행지 코드</td>
               <td width="70%"><input type="text" id="checkDsCode"
                  name="dscode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials2()" /></td>
            </tr>
            <tr>
               <td width="30%">프로모션 코드(없다면 디폴트인 1을 넣을 것)</td>
               <td width="70%"><input type="text" id="checkPrmCode"
                  name="prmcode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials3()" /></td>
            </tr>
            <tr>
               <td width="30%">가격(여행지 가격)</td>
               <td width="70%"><input type="text" id="insertFiPrice"
                  name="fiprice" size="15">
            </tr>
            <tr>
               <td width="30%">날짜</td>
               <td width="70%"><input type="text" id="insertDate" name="date"
                  size="15">
            </tr>
            <tr>
               <td colspan="2" align="center"><input type="submit"
                  value="예약 추가" onclick="contentToggle('reservationadd')"> <input
                  type="reset" value="다시쓰기"></td>
            </tr>
         </form>
      </table>
   </div>
   <div id="reservationchange" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
      <form name="regForm" method="get"
         action="/MyWebSite/ReservationChangeController"
         onsubmit="return submitForm(this, 'reservationchange');">
         <div id="additionalFields4"></div>
         <!-- 예약 코드 확인 입력시 작동 -->
         <div id="additionalFields5"></div>
         <!-- 사용자 코드 확인 입력시 작동 -->
         <div id="additionalFields6"></div>
         <!-- 여행지 코드 확인 입력시 작동 -->
         <div id="additionalFields7"></div>
         <!-- 프로모션 코드 확인 입력시 작동 -->
         <table width="70%" border="1">
            <tr align="center" bgcolor="#0056b3">
               <td colspan="2">
                  <!-- 변경된 부분 --> <font color="#FFFFFF"><b>수정하고자 하는 예약을
                        입력하세요.</b></font>
               </td>
            </tr>
            <tr>
               <td width="30%">예약 코드</td>
               <td width="70%"><input type="text" id="checkRvCode"
                  name="rvcode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials4()" /></td>
            </tr>
            <tr>
               <td width="30%">사용자 코드</td>
               <td width="70%"><input type="text" id="checkUserCode1"
                  name="usercode" size="15"><input type="button"
                  value="확인하기" onclick="checkCredentials5()" /></td>
            </tr>
	<tr> 
		<td width="30%">사용자 아이디</td>
		<td width="70%"><input type="text" id="checkUserId" name="id" size="15"></td>
	</tr>
            <tr>
               <td width="30%">여행지 코드</td>
               <td width="70%"><input type="text" id="checkDsCode1"
                  name="dscode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials6()" /></td>
            </tr>
            <tr>
               <td width="30%">프로모션 코드(없다면 디폴트인 1을 넣을 것)</td>
               <td width="70%"><input type="text" id="checkPrmCode1"
                  name="prmcode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials7()" /></td>
            </tr>
            <tr>
               <td width="30%">가격(여행지 가격)</td>
               <td width="70%"><input type="text" id="insertFiPrice"
                  name="fiprice" size="15">
            </tr>
            <tr>
               <td width="30%">날짜</td>
               <td width="70%"><input type="text" id="insertDate" name="date"
                  size="15">
            </tr>
            </tr>
            <td colspan="2" align="center"><input type="submit"
               value="예약 수정하기" onclick="contentToggle('reservationchange')">
               <input type="reset" value="다시쓰기"></td>
            </tr>
         </table>
   </div>
   <div id="reservationdelete" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">

      <form name="regForm3" method="get"
         action="/MyWebSite/ReservationDeleteController"
         onsubmit="return submitForm(this, 'reservationdelete');">
         <div id="additionalFields8"></div>
         <table id="registrationForm1" width="70%" border="1">
            <tr align="center" bgcolor="#0056b3">
               <td colspan="2"><font color="#FFFFFF"><b>예약 삭제하기</b></font></td>
            </tr>
            <tr>
               <td width="30%">예약 코드</td>
               <td width="70%"><input type="text" id="deleteRvCode"
                  name="rvcode" size="15"><input type="button" value="확인하기"
                  onclick="deleteCheckReservationlist()" /></td>
            </tr>
            <tr>
               <td width="30%">사용자 코드</td>
               <td width="70%"><input type="text" id="deleteUserCode"
                  name="usercode" size="15">
            </tr>

            <td colspan="2" align="center"><input type="submit"
               value="예약 삭제" onclick="deleteReservationlist()"> <input
               type="reset" value="다시쓰기"></td>
            </tr>
            </form>
         </table>
   </div>



   <!-- JavaScript를 통한 content 보이기/감추기 함수 정의 -->
   <script>
    $(document).ready(function() {
        $("#reservationListContainer").hide();
        $("#MembersListContainer").hide();
        $("#DestinationListContainer").hide();
        $("#PromotionListContainer").hide();
    });

    function showReservationList() {
        $("#reservationListContainer").show();
        $("#MembersListContainer").hide();
        $("#DestinationListContainer").hide();
        $("#PromotionListContainer").hide();
    }

    function showMembersList() {
        $("#MembersListContainer").show();
        $("#reservationListContainer").hide();
        $("#DestinationListContainer").hide();
        $("#PromotionListContainer").hide();
    }

    function showDestinationList() {
        $("#DestinationListContainer").show();
        $("#reservationListContainer").hide();
        $("#MembersListContainer").hide();
        $("#PromotionListContainer").hide();
    }

    function showPromotionList() {
        $("#PromotionListContainer").show();
        $("#reservationListContainer").hide();
        $("#MembersListContainer").hide();
        $("#DestinationListContainer").hide();
    }
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
                    $("#reservationListContainer").html(data);

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
      
        //예약 추가하기에서 유저 코드(usercode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials1() {
          var usercode = $("#checkUserCode").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/ReservationController",
              data: { usercode: usercode },
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields1").html(data);
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
      //예약 추가하기에서 여행지 코드(dscode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials2() {
          var dscode = $("#checkDsCode").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/DestinationChangeController",
              data: { dscode: dscode},
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields2").html(data);
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
      //예약 추가하기에서 프로모션 코드(prmcode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials3() {
           var prmcode = $("#checkPrmCode").val();
          //var prmname = $("#updatePrmName").val();
    
          $.ajax({
              type: "POST",
              url: "/MyWebSite/PromotionDeleteController",
              data: { prmcode: prmcode},
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields3").html(data);
      
                  // 나머지 입력 폼이 나타날 경우 content를 토글
                  //contentToggle('promotionchange');
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
      //예약 수정하기에서 예약 코드(rvcode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials4() {
          var rvcode = $("#checkRvCode").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/ReservationChangeController",
              data: { rvcode: rvcode },
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields4").html(data);
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
        //예약 수정하기에서 유저 코드(usercode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials5() {
          var usercode = $("#checkUserCode1").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/ReservationController",
              data: { usercode: usercode },
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields5").html(data);
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
      //예약 수정하기에서 여행지 코드(dscode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials6() {
          var dscode = $("#checkDsCode1").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/DestinationChangeController",
              data: { dscode: dscode},
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields6").html(data);
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
      //예약 수정하기에서 프로모션 코드(prmcode)를 입력하고 확인 버튼을 눌렀을 때
        function checkCredentials7() {
           var prmcode = $("#checkPrmCode1").val();
          //var prmname = $("#updatePrmName").val();
    
          $.ajax({
              type: "POST",
              url: "/MyWebSite/PromotionDeleteController",
              data: { prmcode: prmcode},
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields7").html(data);
      
                  // 나머지 입력 폼이 나타날 경우 content를 토글
                  //contentToggle('promotionchange');
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }

      //예약 삭제 코드에서 예약 코드 입력하고 결과 확인하기
        function deleteCheckReservationlist() {
          var rvcode = $("#deleteRvCode").val();
          
          $.ajax({
              type: "POST",
              url: "/MyWebSite/ReservationDeleteController",
              data: { rvcode: rvcode},
              success: function(data) {
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields8").html(data);
      
                  // 나머지 입력 폼이 나타날 경우 content를 토글
                  //contentToggle('promotionchange');
              },
              error: function() {
                  //alert("회원 정보 확인에 실패했습니다.");
              }
          });
      }
        function deleteReservationlist() {
           var rvcode = $("#deleteRvCode").val();
          var usercode = $("#deleteUserCode").val();
      
          $.ajax({
              type: "GET",
              url: "/MyWebSite/ReservationDeleteController",
              data: { rvcode: rvcode, usercode: usercode },
              success: function(data) {
                  console.log("Data from server:", data);  // 서버에서 받아온 데이터 출력
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields8").html(data);
      
              },
              error: function(jqXHR, textStatus, errorThrown) {
                  console.error("AJAX Error:", textStatus, errorThrown);
                  alert("프로모션 삭제 확인에 실패했습니다.");
              }
          });
      }
    </script>
</body>
</html>