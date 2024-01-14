<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*, com.servlet.one.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="destinationDAO"
   value="<%= new com.servlet.one.DestinationDAO() %>" />
<c:set var="alist" value="${destinationDAO.selectDestinationList()}" />

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
   <div id="destination"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 90%;">
      <div id="destinationListContainer"
         style="overflow-x: auto; max-height: 250px;">
         <%@include file="./DestinationList.jsp"%>
      </div>
      <div style="margin-left: 20px;">
         <input type='button' value='여행목록 확인' onclick="showDestinationList()" />
         <input type='button' value='여행지 추가하기'
            onclick="contentToggle('destinationadd')" /> <input type='button'
            value='여행지 정보 수정하기' onclick="contentToggle('destinationchange')" />
         <input type='button' value='여행지 정보 삭제하기'
            onclick="contentToggle('destinationdelete')" />
      </div>
   </div>
   <div id="destinationadd" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
      <table id="registrationForm1" width="70%" border="1">
         <form name="regForm" method="get"
            action="/MyWebSite/DestinationController"
            onsubmit="return submitForm(this, 'destinationadd');">
            <tr align="center" bgcolor="0056b3">
               <td colspan="2"><font color="#FFFFFF"><b>여행지 추가하기</b></font></td>
            </tr>
            <tr>
               <td width="30%">여행지 이름</td>
               <td width="70%"><input type="text" name="dsname" size="15">
            </tr>
            <tr>
               <td>여행지 디테일</td>
               <td><input type="text" name="dsdetail" size="15"></td>
            </tr>
            <tr>
               <td>여행 방식</td>
               <td><select name="type">
                     <option value="패키지">패키지</option>
                     <option value="자유">자유</option>
               </select></td>
            </tr>
            <tr>
               <td>가격</td>
               <td><input type="text" name="price" size="15"></td>
            </tr>
            <tr>
               <td colspan="2" align="center"><input type="submit"
                  value="여행지추가" onclick="contentToggle('destinationadd')"> <input
                  type="reset" value="다시쓰기"></td>
            </tr>
         </form>
      </table>
   </div>
   <div id="destinationchange" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">
      <form name="regForm" method="get"
         action="/MyWebSite/DestinationChangeController"
         onsubmit="return submitForm(this, 'destinationchange');">
         <div id="additionalFields"></div>
         <table width="70%" border="1">
            <tr align="center" bgcolor="0056b3">
               <td colspan="2">
                  <!-- 변경된 부분 --> <font color="#FFFFFF"><b>수정하고자 하는 여행지의
                        코드와 이름, 설명을 입력하세요.</b></font>
               </td>
            </tr>
            <tr>
               <td width="30%">여행지 코드</td>
               <td width="70%"><input type="text" id="checkDsCode"
                  name="dscode" size="15"></td>
            </tr>
            <tr>
               <td width="30%">여행지 이름</td>
               <td width="70%"><input type="text" id="checkDsName"
                  name="dsname" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials()" /></td>
            </tr>
            <tr>
               <td>여행지 디테일</td>
               <td><input type="text" name="dsdetail" size="15"></td>
            </tr>
            <tr>
               <td>여행 방식</td>
               <td><select name="type">
                     <option value="패키지">패키지</option>
                     <option value="자유">자유</option>
               </select></td>
            </tr>
            <tr>
               <td>가격</td>
               <td><input type="text" name="price" size="15"></td>
            </tr>
            <td colspan="2" align="center"><input type="submit"
               value="여행지 수정하기" onclick="checkCredentials()"> <input
               type="reset" value="다시쓰기"></td>
            </tr>
         </table>
   </div>
   <div id="destinationdelete" class="content"
      style="margin-bottom: 20px; margin-left: 20px; float: center; width: 70%;">

      <form name="regForm3" method="get"
         action="/MyWebSite/DestinationDeleteController"
         onsubmit="return submitForm(this, 'destinationdelete');">
         <div id="additionalFields1"></div>
         <table id="registrationForm1" width="70%" border="1">
            <tr align="center" bgcolor="0056b3">
               <td colspan="2"><font color="#FFFFFF"><b>여행지 삭제하기</b></font></td>
            </tr>
            <tr>
               <td width="30%">여행지 코드</td>
               <td width="70%"><input type="text" id="deleteDsCode"
                  name="dscode" size="15"><input type="button" value="확인하기"
                  onclick="checkCredentials1()" /></td>
            </tr>
            <tr>
               <td width="30%">여행지 이름</td>
               <td width="70%"><input type="text" id="deleteDsName"
                  name="dsname" size="15">
            </tr>

            <td colspan="2" align="center"><input type="submit"
               value="여행지 삭제" onclick="checkCredentials2()"> <input
               type="reset" value="다시쓰기"></td>
            </tr>
            </form>
         </table>
   </div>

   <!-- JavaScript를 통한 content 보이기/감추기 함수 정의 -->
   <script>
    function showDestinationList() {
        $("#destinationListContainer").show(); // DestinationList.jsp 내용을 표시
    }

    $(document).ready(function() {
        $("#destinationListContainer").hide(); // 페이지 로드 시 숨김
    });
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
                    $("#destinationListContainer").html(data);

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
        //회원 수정 메커니즘
        function checkCredentials() {
            var dscode = $("#checkDsCode").val();
            var dsname = $("#checkDsName").val();

            console.log("dscode: " + dscode);
            console.log("dsname: " + dsname);

            $.ajax({
                type: "POST",
                url: "/MyWebSite/DestinationChangeController",
                data: { dscode: dscode, dsname: dsname },
                success: function(data) {
                    // 서버에서 받아온 HTML로 내용 갱신
                    $("#additionalFields").html(data);

                    // 나머지 입력 폼이 나타날 경우 content를 토글
                    contentToggle('destinationchange');
                },
                error: function() {
                    //alert("회원 정보 확인에 실패했습니다.");
                }
            });
        }
      //회원 삭제 메커니즘
        function checkCredentials1() {
          var dscode = $("#deleteDsCode").val();
          //var dsname = $("#deleteDsName").val();
      
          console.log("dscode: " + dscode);
          //console.log("dsname: " + dsname);
      
          $.ajax({
              type: "POST",
              url: "/MyWebSite/DestinationDeleteController",
              data: { dscode: dscode},
              //data: { dscode: dscode, dsname: dsname },
              success: function(data) {
                  console.log("Data from server:", data);  // 서버에서 받아온 데이터 출력
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields1").html(data);
      
                  // 나머지 입력 폼이 나타날 경우 content를 토글
                  contentToggle('destinationdelete');
              },
              error: function(jqXHR, textStatus, errorThrown) {
                  console.error("AJAX Error:", textStatus, errorThrown);
                  alert("회원 삭제 확인에 실패했습니다.");
              }
          });
      }
        function checkCredentials2() {
           var dscode = $("#deleteDsCode").val();
          var dsname = $("#deleteDsName").val();
      
          console.log("dscode: " + dscode);
          console.log("dsname: " + dsname);
      
          $.ajax({
              type: "GET",
              url: "/MyWebSite/DestinationDeleteController",
              data: { dscode: dscode, dsname: dsname },
              success: function(data) {
                  console.log("Data from server:", data);  // 서버에서 받아온 데이터 출력
                  // 서버에서 받아온 HTML로 내용 갱신
                  $("#additionalFields1").html(data);
      
                  // 나머지 입력 폼이 나타날 경우 content를 토글
                  contentToggle('destinationdelete');
              },
              error: function(jqXHR, textStatus, errorThrown) {
                  console.error("AJAX Error:", textStatus, errorThrown);
                  alert("회원 삭제 확인에 실패했습니다.");
              }
          });
      }
    </script>
</body>
</html>