<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>우리 함께 즐겨요 동양 투어</title>

</head>

<body id="page">
	<%@ include file="./header.jsp" %>
    <div class="clear"></div>
    <section>
        <iframe src="./main_iframe.jsp" name="mainifr" width="690" height="560" style="border:0;"></iframe>
    </section>
    <aside>
        <ul>
            <li><a href="#anc01">이 주의 추천 여행지</a></li>
            <li><a href="#anc02">이 상품 어때요?</a></li>
            <li><a href="#anc03">지금 가장 HOT 유럽</a></li>
            <li><a href="#anc04">2022 허니문 특가</a></li>
            <li><a href="#anc05">찾았다! 인생여행지</a></li>
            <li><a href="#anc06">국내 출발확정</a></li>
        </ul>
    </aside>
    <div class='clear'></div> <!-- float 속성 해제 -->
    <hr size="7" noshade>
    <div id="anc01">
        <h2 style="margin-left:30px;">이 주의 추천 여행지</h2>
        <table class="img">
            <tr >
                <td class="scale"><a href="./saipan.jsp"><img src="img/main/saipan.jpg" width="200"></a></td>
                <td class="scale"><a href=""><img src="img/main/hawaii.jpg" width="200"></a></td>
                <td class="scale"><a href="./guam.jsp"><img src="img/main/guam.jpg" width="200"></a></td>
                <td class="scale"><a href="./danang.jsp"><img src="img/main/danang.jpg" width="200"></a></td>
            </tr>
            <tr>
                <th><a href="./saipan.jsp">사이판</a></th>
                <th><a href="">하와이</a></th>
                <th><a href="./guam.jsp">괌</a></th>
                <th><a href="./danang.jsp">다낭</a></th>
            </tr>
        </table>
    </div>
    <div class='clear'></div> <!-- float 속성 해제 -->
    <hr size="7" noshade>
    <div id="content3">
        <a href=""><img src="img/main/coronabanner.png" style="margin-left:-10px;"></a>
    </div>
    <hr size="7" noshade>
    <div id="anc02" class="shining05">
        <h2 style="margin-left:30px;">이 상품 어때요?</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/main01.png" width="280"></a></td>
                <td><a href=""><img src="img/main/main02.png" width="280"></a></td>
                <td><a href=""><img src="img/main/main03.jpg" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">북해도/샤코탄반도/후라노/비에이 5일 [3대게요리,징기스칸특식]</a></td>
                <td><a href="">괌 두짓타니 디럭스 오션프론트룸 4/5일</a></td>
                <td><a href="">[하와이] 초특급 하얏트 리젠시 6/7/8일</a></td>
            </tr>
            <tr style="color:red">
                <td>1,499,000원~</td>
                <td>1,172,900원~</td>
                <td>2,715,000원~</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/main04.png" width="280"></a></td>
                <td><a href=""><img src="img/main/main05.png" width="280"></a></td>
                <td><a href=""><img src="img/main/main06.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">사이판 켄싱턴 호텔 로얄디럭스룸 4/5일 ★기사가이드경비포함/PCR검사지원★</a></td>
                <td><a href="">[휴양형/노쇼핑] 다낭/호이안 3박4일 [초특급 빈펄 남호이안]</a></td>
                <td><a href="">[도전최저가] 세부 솔레아 리조트 3박5일</a></td>
            </tr>
            <tr style="color:red">
                <td>1,115,400원~</td>
                <td>785,000원~</td>
                <td>580,600원~</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/main07.png" width="280"></a></td>
                <td><a href=""><img src="img/main/main08.jpg" width="280"></a></td>
                <td><a href=""><img src="img/main/main09.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">[호핑투어+반딧불투어] 코타키나발루 인생샷 5/6일</a></td>
                <td><a href="">[국적기 직항 탑승] 터키 프리미엄 일주 9/10일 [힐튼호텔1박ㅣ전일정 특급호텔ㅣBEST3옵션포함]</a></td>
                <td><a href="">[방콕파타야 5일/6일] 요트크루즈+스노쿨링+무앙보란+핵심관광등 다양한 볼거리 엄선상품</a></td>
            </tr>
            <tr style="color:red">
                <td>599,000원~</td>
                <td>1,699,000원~</td>
                <td>1,094,600원~</td>
            </tr>
        </table>
        <br>
        <p><a href="#top">맨 위로</a></p>
    </div>
    <hr size="7" noshade>
    <div id="anc03" class="shining01">
        <h2 style="margin-left:30px;">지금 가장 HOT 유럽</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/eu01.png" width="280"></a></td>
                <td><a href=""><img src="img/main/eu02.png" width="280"></a></td>
                <td><a href=""><img src="img/main/eu03.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">■마감임박■[노옵션/노쇼핑] 북유럽 품격여행 4국 9일</a></td>
                <td><a href="">■마감임박■ 스페인/포르투갈 완벽일주 9일</a></td>
                <td><a href="">■왕복직항■ 동유럽+발칸베스트 9일[플리트비체+블레드+4성1박업글+2대야경]</a></td>
            </tr>
            <tr style="color:red">
                <td>2,899,000원~</td>
                <td>1,599,000원~</td>
                <td>1,899,000원~</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/eu04.png" width="280"></a></td>
                <td><a href=""><img src="img/main/eu05.png" width="280"></a></td>
                <td><a href=""><img src="img/main/eu06.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">■출발확정■ 이탈리아 완벽일주 9일 《★전일정 4성호텔/ ★럭셔리 아울렛/ 친퀘테레/ 치비타/ 바티칸하</a></td>
                <td><a href="">■ 에미레이트ㅣ에티하드 항공 탑승 ■ 두바이/아부다비 완벽 일주 6일</a></td>
                <td><a href="">■ 두바이 시티투어 포함 ■ 두바이/터키일주 9일 [5대 옵션/월드체인 2박/전일정 5성 특급호텔/9대 특식]</a></td>
            </tr>
            <tr style="color:red">
                <td>1,549,000원~</td>
                <td>899,000원~</td>
                <td>1,099,000원~</td>
            </tr>
        </table>
        <br>
        <p><a href="#top">맨 위로</a></p>
    </div>
    <hr size="7" noshade>
    <div id="anc04" class="shining02">
        <h2>2022 허니문 특가</h2>
        <a href="./honeymoon.html"><img src="img/main/honeymoon.jpg" width="995"></a>
        <p><a href="#top">맨 위로</a></p>
    </div>
    <hr size="7" noshade>
    <div id="anc05" class="shining04">
        <h2>찾았다 인생여행지!</h2>
        <a href="./phili.jsp"><img src="img/main/phili.jpg" width="995"></a>
        <p><a href="#top">맨 위로</a></p>
    </div>
    <hr size="7" noshade>
    <div id="anc06" class="shining03">
        <h2 style="margin-left:30px;">국내 출발확정!</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/kor01.png" width="280"></a></td>
                <td><a href=""><img src="img/main/kor02.png" width="280"></a></td>
                <td><a href=""><img src="img/main/kor03.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">[KTX] ★평창관광택시★ 택시로 한바퀴! 대관령하늘목장+오대산 월정사(당일)</a></td>
                <td><a href="">[KTX] ★평창관광택시★ 평창 캠크닉! 대관령 하늘목장+캠핑다이닝(당일)</a></td>
                <td><a href="">*무조건 출발보장* [BEST 추천] 제주특가투어(새별오름+족욕체험) 관광호텔(3일)</a></td>
            </tr>
            <tr style="color:red">
                <td>102,000원~</td>
                <td>139,000원~</td>
                <td>390,000원~</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/kor04.png" width="280"></a></td>
                <td><a href=""><img src="img/main/kor05.png" width="280"></a></td>
                <td><a href=""><img src="img/main/kor06.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">★KTX+영주관광택시 실속형★ 소백힐링! 소백산국립공원+부석사+무섬마을</a></td>
                <td><a href="">★KTX+영주관광택시 일반형★ 영주 부석사+소수서원(선비촌)+무섬마을</a></td>
                <td><a href="">부산출발 [노팁노옵션 PERFECT 마라도투어] 제주오션스위츠호텔 3일</a></td>
            </tr>
            <tr style="color:red">
                <td>92,000원~</td>
                <td>99,000원~</td>
                <td>450,000원~</td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/main/kor07.png" width="280"></a></td>
            </tr>
            <tr>
                <td><a href="">부산출발 [BEST 추천] 제주특가투어 제주오션스위츠호텔 3일</a></td>
            </tr>
            <tr style="color:red">
                <td>360,000원~</td>
            </tr>
        </table>
        <br>
        <p><a href="#top">맨 위로</a></p>
    </div>
    <hr size="7" noshade>
    <%@ include file="./footer.jsp" %>
</body>
</html>