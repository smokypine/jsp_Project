<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style_01.css">
	<title>사이판</title>
	<script>
	// 내 정보 보기
	    function checkCredentials0() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode0").val();
	       var prmcode1 = $("#checkPrmCode0").val();
	       var fiprice1 = $("#fiprice0").val();
	       var date1 = $("#date0").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
	 // 내 정보 보기
	    function checkCredentials1() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode1").val();
	       var prmcode1 = $("#checkPrmCode1").val();
	       var fiprice1 = $("#fiprice1").val();
	       var date1 = $("#date1").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
	 // 내 정보 보기
	    function checkCredentials2() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode2").val();
	       var prmcode1 = $("#checkPrmCode2").val();
	       var fiprice1 = $("#fiprice2").val();
	       var date1 = $("#date2").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
	 // 내 정보 보기
	    function checkCredentials3() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode3").val();
	       var prmcode1 = $("#checkPrmCode3").val();
	       var fiprice1 = $("#fiprice3").val();
	       var date1 = $("#date3").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
		 // 내 정보 보기
	    function checkCredentials4() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode4").val();
	       var prmcode1 = $("#checkPrmCode4").val();
	       var fiprice1 = $("#fiprice4").val();
	       var date1 = $("#date4").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
		 // 내 정보 보기
	    function checkCredentials5() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode5").val();
	       var prmcode1 = $("#checkPrmCode5").val();
	       var fiprice1 = $("#fiprice5").val();
	       var date1 = $("#date5").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
		 // 내 정보 보기
	    function checkCredentials6() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode6").val();
	       var prmcode1 = $("#checkPrmCode6").val();
	       var fiprice1 = $("#fiprice6").val();
	       var date1 = $("#date6").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
		 // 내 정보 보기
	    function checkCredentials7() {

	       var id1 = $("#insertId").val();
	       var usercode1 = $("#insertUsercode").val();
	       var dscode1 = $("#checkDsCode7").val();
	       var prmcode1 = $("#checkPrmCode7").val();
	       var fiprice1 = $("#fiprice7").val();
	       var date1 = $("#date7").val();

	       $.ajax({
	          type : "GET",
	          url : "/MyWebSite/ReservationController",
	          data : {
	        	  	usercode : usercode1,
	             	id : id1,
					dscode : dscode1,
					prmcode : prmcode1,
					fiprice : fiprice1,
					date : date1
	          }
	       });
	    }
	
	</script>
	
</head>
<body id="page">
    <%@ include file="./header.jsp" %>
    <nav style="text-align:center">
        <img src="img/saipan/sap01.jpg" width="995">
        <!-- <video src="./saipan/sap.mp4" width="995" controls autoplay loop muted></video> -->
        <img src="img/saipan/sap04.jpg" width="995">
        <img src="img/saipan/sap05.jpg" width="995">
        <img src="img/saipan/sap06.jpg" width="995">
        <img src="img/saipan/sap07.jpg" width="995">
    </nav>
    <hr size="7" noshade>
    <section>
        <h2>패키지</h2>
        <div id= "reservationadd" class="content">
        	<form name="regForm" method="get" action="">
        	<table>
        	<input type="hidden" id="insertId" name = "id" value = ${mem_id}>
        	<input type="hidden" id="insertUsercode" name = "usercode" value = ${mem_usercode}>
        	
	        	<tr>
	                <td><a href="" target="_blank"><img src="img/saipan/s01.png" width="210"></a></td>
	                <td><a href="" target="_blank"><img src="img/saipan/s02.png" width="210"></a></td>
	                <td><a href="" target="_blank"><img src="img/saipan/s03.png" width="210"></a></td>
	                <td><a href="" target="_blank"><img src="img/saipan/s04.png" width="210"></a></td>
	            </tr>
	            <tr>
	                <td><strong>★PIC 홈쇼핑 따라잡기★</strong> </a></td>
	                <input type="hidden" id="checkPrmCode0" name="prmcode" value="1">
	                <td><strong>팁포함/노쇼핑/노옵션/프리미어디럭스 무료UP!</strong></a></td>
	                <input type="hidden" id="checkPrmCode1" name="prmcode" value="4">
	                <td><strong>[제주항공켄싱턴패키지]</strong> </a></td>
	                <input type="hidden" id="checkPrmCode2" name="prmcode" value="1">
	                <td><strong>§리모델링완료오션리조트§</strong> </a></td>
	                <input type="hidden" id="checkPrmCode3" name="prmcode" value="1">
	            </tr>
	            <tr>
	                <td >■홈쇼핑따라잡기■노팁/노옵션/노쇼핑 사이판 PIC 슈페리어룸 4일/5일 디럭스 무료 UP [마나가하섬 포함]</td>
	                <input type="hidden" id="checkDsCode0" name="dscode" value="14">
	                <td >■홈쇼핑따라잡기■노팁/노옵션/노쇼핑 사이판 켄싱턴 호텔 로얄디럭스룸 4/5일★프리미어디럭스 무료UP★</td>
	                <input type="hidden" id="checkDsCode1" name="dscode" value="15">
	                <td >■베이직■ [아침출발] 사이판 켄싱턴호텔 4/5/8일◈시내관광◈</td>
	                <input type="hidden" id="checkDsCode2" name="dscode" value="16">
	                <td >■PCR검사비용지원■[아침출발] 코럴 오션 리조트 사이판 디럭스룸 5일</td>
	                <input type="hidden" id="checkDsCode3" name="dscode" value="17">
	            </tr>
	            <tr style="color:red; font-weight:bold;">
	                <td >859500</td>
	                <input type="hidden" id = "fiprice0" name="fiprice" value="859500">
	                <td >1299000</td>
	                <input type="hidden" id = "fiprice1" name="fiprice" value="1299000">
	                <td >1152000</td>
	                <input type="hidden" id = "fiprice2" name="fiprice" value="1152000">
	                <td >765500</td>
	                <input type="hidden" id = "fiprice3" name="fiprice" value="765500">
	            </tr>
	            <tr>
	                <td ><strong>2023/06/11 ~ 2023/06/14</strong></td>
	                <input type="hidden" id="date0" name="date" value="2023/06/11 ~ 2023/06/14">
	                <td ><strong>2023/06/13 ~ 2023/06/17</strong></td>
	                <input type="hidden" id="date1" name="date" value="2023/06/13 ~ 2023/06/17">
	                <td ><strong>2023/06/14 ~ 2023/06/18</strong> </td>
	                <input type="hidden" id="date2" name="date" value="2023/06/14 ~ 2023/06/18">
	                <td ><strong>2023/06/15 ~ 2023/06/19</strong> </td>
	                <input type="hidden" id="date3" name="date" value="2023/06/15 ~ 2023/06/19">
	            </tr>
	            
	            <tr>
	                <td style="border:none;">
	                	<input type = "submit" value = "예약하기" onclick="checkCredentials0()">
	                </td>
	                <td style="border:none;">
						<input type = "submit" value = "예약하기" onclick="checkCredentials1()">
					</td>
	                <td style="border:none;">
	                	<input type = "submit" value = "예약하기" onclick="checkCredentials2()">
	                </td>
	                <td style="border:none;">
	                	<input type = "submit" value = "예약하기" onclick="checkCredentials3()">
	                </td>
	            </tr>
	        
        </table>
        </form>
        </div>
                <table>
            <tr>
                <td><a href="" target="_blank"><img src="img/saipan/s05.png" width="210"></a></td>
                <td><a href="" target="_blank"><img src="img/saipan/s06.png" width="210"></a></td>
                <td><a href="" target="_blank"><img src="img/saipan/s07.png" width="210"></a></td>
                <td><a href="" target="_blank"><img src="img/saipan/s08.png" width="210"></a></td>
            </tr>
            <tr>
                <td><strong>[아시아나월드리조트] </strong></td>
                <input type="hidden" id="checkPrmCode4" name="prmcode" value="1">
                <td><strong>[제주항공월드리조트패키지] </strong></td>
                <input type="hidden" id="checkPrmCode5" name="prmcode" value="1">
                <td><strong>[아시아나켄싱턴] </strong></td>
                <input type="hidden" id="checkPrmCode6" name="prmcode" value="1">
                <td><strong>[제주항공아쿠아리조트패키지] </strong></td>
                <input type="hidden" id="checkPrmCode7" name="prmcode" value="1">
            </tr>
            <tr> 
               	<td>[아시아나/오전출발] 사이판 월드리조트 슈페리어룸 4/5일◈조식,석식포함/아일랜드관광◈</td>
                <input type="hidden" id="checkDsCode4" name="dscode" value="18">
                <td>■베이직■ [아침출발] 사이판 월드리조트 슈페리어룸 4/5/8일◈시내관광◈</td>
                <input type="hidden" id="checkDsCode5" name="dscode" value="19">
                <td>■베이직■ [아침출발] 사이판 켄싱턴호텔 로얄디럭스룸 4/5일◈시내관광◈</td>
                <input type="hidden" id="checkDsCode6" name="dscode" value="20">
                <td>[오전출발]사이판 아쿠아리조트 디럭스가든뷰 4/5/8일◈조식포함/아일랜드관광◈</td>
                <input type="hidden" id="checkDsCode7" name="dscode" value="21">
            </tr>
            <tr style="color:red; font-weight:bold;">

                <td>1113400</td>
                <input type="hidden" id = "fiprice4" name="fiprice" value="1113400">
                <td>842000</td>
                <input type="hidden" id = "fiprice5" name="fiprice" value="842000">
                <td>1473400</td>
                <input type="hidden" id = "fiprice6" name="fiprice" value="1473400">
                <td>872000</td>
                <input type="hidden" id = "fiprice7" name="fiprice" value="872000">
            </tr>
            <tr>
                <tr>
	                <td ><strong>2023/06/11 ~ 2023/06/14</strong></td>
	                <input type="hidden" id="date4" name="date" value="2023/06/11 ~ 2023/06/14">
	                <td ><strong>2023/06/13 ~ 2023/06/17</strong></td>
	                <input type="hidden" id="date5" name="date" value="2023/06/13 ~ 2023/06/17">
	                <td ><strong>2023/06/14 ~ 2023/06/18</strong> </td>
	                <input type="hidden" id="date6" name="date" value="2023/06/14 ~ 2023/06/18">
	                <td ><strong>2023/06/15 ~ 2023/06/19</strong> </td>
	                <input type="hidden" id="date7" name="date" value="2023/06/15 ~ 2023/06/19">
	            </tr>
            <tr>
                <td style="border:none;">
                	<input type = "submit" value = "예약하기" onclick="checkCredentials4()">
                </td>
                <td style="border:none;">
					<input type = "submit" value = "예약하기" onclick="checkCredentials5()">
				</td>
                <td style="border:none;">
                	<input type = "submit" value = "예약하기" onclick="checkCredentials6()">
                </td>
                <td style="border:none;">
                	<input type = "submit" value = "예약하기" onclick="checkCredentials7()">
                </td>
            </tr>
        </table>
        
            
    </section>
    <br>
    <hr size="7" noshade>
	<%@ include file="./footer.jsp" %>
	
</html>
