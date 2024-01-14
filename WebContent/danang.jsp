<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style_01.css">
	<title>다낭</title>
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
	 </script>
</head>
<body id="page">
	<%@ include file="./header.jsp" %>
    <nav style="text-align:left">
        <img src="img/danang/dng01.jpg" width="995">
        <img src="img/danang/hill.jpg" width="995">
        <h2 style="text-align:left">|| 여행스토리 - 바나힐 투어</h2>
        <p>풍부한 문화유산과 아름다운 해안으로 유명한 연안 도시 다낭은 늘 인기 있는 관광지였지만 최근 몇 년간 더욱 많은 사람들에게 인기를 얻고 있습니다. 
            케이블카에 타서 추아산을 한눈에 담아보세요. 높은 폭포에서 안개 덮인 정상, 열대식물이 빽빽한 숲을 감상할 수 있습니다. 
            바나힐은 매년 150만명의 관광객이 오가는 명소입니다. 세계에서 가장 긴 케이블카 시스템으로 꼽히는 바나힐 케이블카는 그야말로 장관입니다. 
            케이블카에 올라 추아산을 한눈에 담아보세요.</p>
            <img src="img/danang/dng07.png" width="995">
            <img src="img/danang/dng02.jpg" width="995">
            <h2 style="text-align:left">|| 여행스토리 - 호이안 투어</h2>
            <p>다낭에 이웃한 호이안은 과거 중국, 일본, 유럽의 무역선이 드나들던 항구도시로 동서양의 문물이 교류하며 중국, 일본, 서양의 양식이 혼재된 예쁜 건물이 많이 남아 있는 곳입니다. 구시가지는 유네스코가 선정한 세계문화유산이며, 야시장이 유명해 오후에 방문하는 경우가 많습니다. 
                셔틀버스나 택시로 갈 수 있지만, 현지투어를 이용하면 더 편하게 다녀올 수 있습니다.
                </p>
            <img src="img/danang/dng03.jpg" width="995">
            <img src="img/danang/five.jpg" width="995">
            <h2 style="text-align:left">|| 여행스토리 - 오행산 투어</h2>
            <p>오행산은 물, 불, 금, 흙, 나무를 상징하는 다섯 개의 봉우리가 있어 오행산으로 불리는데요. 다낭의 명산으로 산 위에 올라 다낭의 전경을 내려다보고, 동굴과 사원과 14~15세기 왕국의 유적 등을 둘러볼 수 있습니다. 
                반나절 일정으로 많이 가며, 투어를 이용할 경우 오전은 오행산, 오후는 호이안을 방문합니다.
            </p>
            <img src="img/danang/hue01.jpg" width="995">
            <img src="img/danang/hue02.jpg" width="995">
            <h2 style="text-align:left">|| 여행스토리 - 후에 투어</h2>
            <p>베트남 최초 통일 왕조의 도읍지였던 후에는 왕궁과 왕릉 등의 유적이 많은 역사 도시입니다. 대중교통이 불편하지만, 차량으로 1~2시간 정도면 갈 수 있어 현지투어로 다녀오시는 분들이 많은데요. 투어에 참여하면 후에 왕궁, 
                뜨득 황제릉, 카이딘 황제릉, 티무엔 사원 등 서로 떨어져 있는 곳을 쉽게 갈 수 있으며, 다낭과 후에 사이의 하이반 고개를 방문합니다.
            </p>
    </nav>
    <hr size="7" noshade>
    <section>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61349.624064702475!2d108.1349469288839!3d16.047239303787368!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219c792252a13%3A0xfc14e3a044436487!2z67Kg7Yq464KoIOuLpOuCrSDtlZjsnbTsqYzsmrAg6rWwIOuLpOuCrQ!5e0!3m2!1sko!2skr!4v1655524959377!5m2!1sko!2skr" width="995" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>
    <br>
    <hr size="7" noshade>
    <section class="shining03">
        <h2>마일 리얼 메거진</h2>
        <h3>여행 전 필독! 꿀 정보 대방출!</h3>
        <table class="img">
            <tr>
                <td class="scale"><a href="https://www.myrealtrip.com/contents/25?contents_id=25"><img src="img/danang/rv01.jpg" width="300"></a></td>
                <td class="scale"><a href="https://www.myrealtrip.com/contents/21?contents_id=21"><img src="img/danang/rv02.jpg" width="300"></a></td>
                <td class="scale"><a href="https://www.myrealtrip.com/contents/15?contents_id=15"><img src="img/danang/rv03.jpg" width="300"></a></td>
            </tr>
        </table>
    </section>
    <br>
    <hr size="7" noshade>
    <section>
        <br>
        <h2>패키지</h2>
        <input type="hidden" id="insertId" name = "id" value = ${mem_id}>
        <input type="hidden" id="insertUsercode" name = "usercode" value = ${mem_usercode}>
        <table>
            <tr>
                <td><a href=""><img src="img/danang/pk01.jpg" width="210"></a></td>
                <td><a href=""><img src="img/danang/pk02.jpg" width="210"></a></td>
                <td><a href=""><img src="img/danang/pk03.jpg" width="210"></a></td>
                <td><a href=""><img src="img/danang/pk04.png" width="210"></a></td>
            </tr>
            <tr>
                <td><strong>다낭/호이안 4~6일 #가성비부터 #가심비까지 #5성호텔 </strong> </a></td>
                <input type="hidden" id="checkPrmCode0" name="prmcode" value="2">
                <td><strong>다낭/호이안 4~6일 #베스트셀러 #5성급호텔 #호이안 핵심일정</strong></a></td>
                <input type="hidden" id="checkPrmCode1" name="prmcode" value="1">
                <td><strong>다낭 5일 #가성비 #시내4성호텔 #바나산 #호이안투어 #자유시간 #쇼핑3회</strong> </a></td>
                <input type="hidden" id="checkPrmCode2" name="prmcode" value="1">
                <td><strong>[초특가-실버트립] 다낭/호이안/후에 4박6일 [무엉탄럭셔리or래디슨]</strong> </a></td>
                <input type="hidden" id="checkPrmCode3" name="prmcode" value="1">
            </tr>
            <tr>
                <td>가성비와 가심비를 모두 갖춘 5성 호텔에서 투숙하며 다낭 핵심 시내 관광코스와 필수 방문 코스인 호이안 올드타운을 관광할 수 있는 알뜰 상품입니다.</td>
                <input type="hidden" id="checkDsCode0" name="dscode" value="2">
                <td>[부산출발] NO쇼핑/NO가이드기사경비, 여행지에서의 부담이 확 줄어든 다낭을 즐겨보세요!! #바나산 #호이안야경투어+시클로 #마사지</td>
                <input type="hidden" id="checkDsCode1" name="dscode" value="3">
                <td>바나산 테마파크를 포함한 다낭과 호이안의 핵심 관광지를 둘러보며, 시내 중심 호텔을 이용하는 실속형 패키지입니다.</td>
                <input type="hidden" id="checkDsCode2" name="dscode" value="4">
                <td>영흥사(손짜)를 포함한 다낭과 호이안의 핵심 관광지를 둘러보며, 다양한 추가 상품으로 무장한 실속형 패키지입니다.</td>
            	<input type="hidden" id="checkDsCode3" name="dscode" value="5">
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td>549,400원~</td>
                <input type="hidden" id = "fiprice0" name="fiprice" value="549400">
                <td>1,059,000원~</td>
                <input type="hidden" id = "fiprice1" name="fiprice" value="1059000">
                <td>529,900원~</td>
                <input type="hidden" id = "fiprice2" name="fiprice" value="529900">
                <td>549,200원~</td>
                <input type="hidden" id = "fiprice3" name="fiprice" value="549200">
            </tr>
            <tr>
                <td ><strong>2023/08/11 ~ 2023/08/14</strong></td>
	                <input type="hidden" id="date0" name="date" value="2023/08/11 ~ 2023/08/14">
	                <td ><strong>2023/08/13 ~ 2023/08/17</strong></td>
	                <input type="hidden" id="date1" name="date" value="2023/08/13 ~ 2023/08/17">
	                <td ><strong>2023/08/14 ~ 2023/08/18</strong> </td>
	                <input type="hidden" id="date2" name="date" value="2023/08/14 ~ 2023/08/18">
	                <td ><strong>2023/08/15 ~ 2023/08/19</strong> </td>
	                <input type="hidden" id="date3" name="date" value="2023/08/15 ~ 2023/08/19">
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
    </section>
    <br>
    <hr size="7" noshade>
	<%@ include file="./footer.jsp" %>
</body>
</html>