<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="mem_id" value="${sessionScope.idKey}" />
<c:set var="mem_usercode" value="${sessionScope.getUsercode}" />

<c:set var="log">
    <c:choose>
        <c:when test="${empty mem_id}">
            <input type='button' value='로그인' onclick='popup()' />
        </c:when>
        <c:otherwise>
            <a href='/MyWebSite/logout.do'>로그아웃</a>
        </c:otherwise>
    </c:choose>
</c:set>

<c:set var="mem">
    <c:choose>
        <c:when test="${empty mem_id}">
            <a href='/MyWebSite/Register.jsp'>회원 가입</a>
        </c:when>
    </c:choose>
</c:set>

<c:set var="reser">
    <c:choose>
        <c:when test="${empty mem_id}">
            <a href=#>예약확인/결제</a>
        </c:when>
    </c:choose>
</c:set>

<c:set var="mypage">
    <c:choose>
        <c:when test="${empty mem_id}">
            <!-- 로그인 안된 상태에서는 mypage 변수를 빈 문자열로 유지 -->
        </c:when>
        <c:when test="${mem_id == 'root'}">
            <a href='./Manager_Members.jsp'>관리자 페이지</a>
        </c:when>
        <c:otherwise>
            <a href='./MyPage_Member.jsp'>마이페이지</a>
        </c:otherwise>
    </c:choose>
</c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>우리 함께 즐겨요 동양 투어</title>
    <link rel="stylesheet" type="text/css" href="css/style_01.css">

    <script>
	    function popup() {
	        var url = "manager_Page/Login.jsp";
	        var name = "popup_test";
	        var option = "width=500, height=500, top=100, left=200, location=no";
	        var popupWindow = window.open(url, name, option);
	
	        // 팝업창이 닫히면 부모 창 새로고침
	        var checkPopupClosed = setInterval(function() {
	            if (popupWindow.closed !== false) {
	                clearInterval(checkPopupClosed);
	                location.reload();
	            }
	        }, 1000);
	    }
        function popupshut(){
            opener.document.location.reload();		
            self.close();
        }
        function join(){
            var url = "./Register.jsp";
        }
    </script>
</head>
<body id="page">
    <header>
        <div id="top">
            <c:choose>
                <c:when test="${empty mem_id}">
                    <input type='button' value='로그인' onclick='popup()' />
                </c:when>
                <c:otherwise>
                    <a href='/MyWebSite/logout.do'>로그아웃</a>
                </c:otherwise>
            </c:choose>
            | 
            <c:choose>
                <c:when test="${empty mem_id}">
                    <!-- <a href='/MyWebSite/manager_Page/Register.jsp'>회원 가입</a> -->
                    <a href='/MyWebSite/Register.jsp'>회원 가입</a>
                </c:when>
                <c:otherwise>
					<!-- 로그인 안된 상태에서는 mem 변수를 빈 문자열로 유지 -->
                </c:otherwise>
            </c:choose>

            <c:choose>
            	<c:when test="${empty mem_id}">
            		<!-- 로그인 안된 상태에서는 reser 변수를 빈 문자열로 유지 -->
            	</c:when>
            	<c:when test="${mem_id != 'root'}"> 
            		<a href=#> 예약확인/결제</a>
            	</c:when>
            </c:choose>
            <c:choose>
                <c:when test="${empty mem_id}">
                    <!-- 로그인 안된 상태에서는 mypage 변수를 빈 문자열로 유지 -->
                </c:when>
                <c:when test="${mem_id == 'root'}">
                	| 
                    <a href='./Manager_Members.jsp'>관리자 페이지</a>
                </c:when>
                <c:otherwise>
                	| 
                    <a href='./MyPage_Member.jsp'>마이페이지</a>
                </c:otherwise>
            </c:choose>
        </div>
    </header>
    <div id="content1" class="sticky">
        <div id="logoimg">
            <a href="./index.jsp"><img src="img/main/dongyanglogo.png" width="181"></a>
        </div>
        <div id="logo">
            <ul>
                <li class="dropdown">해외여행
                    <ul class="dropdownContents">
                        <li><a href="./saipan.jsp">사이판</a></li>
                        <li><a href="./guam.jsp">괌</a></li>
                        <li><a href="./danang.jsp">다낭</a></li>
                        <li><a href="./phili.jsp">필리핀</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="http://www.jejusbtour.com/?utm_campaign=%EC%A0%9C%EC%A3%BC%EC%88%A8%EB%B9%84%ED%88%AC%EC%96%B4_sa_%EC%A0%84%ED%99%98&utm_medium=sa&utm_source=google&utm_term=%EA%B4%80%EA%B4%91%20%EB%AA%85%EC%86%8C&gclid=Cj0KCQjwzLCVBhD3ARIsAPKYTcSe9Pr4xs4ZdQcWscO7m7OwFEACgAQNyarJT7VHCeWsRjXTTKx0ZjIaAj1OEALw_wcB">제주/국내여행</a></li>
                <li class="dropdown"><a href="https://www.agoda.com/ko-kr/search?device=c&network=g&adid=577974171046&rand=16693041401185526213&expid=&adpos=&aud=kwd-609856965035&city=16901&site_id=1891442&tag=9ff0f671-90e5-9c1e-e10d-f2e875dbbe3d&gclid=Cj0KCQjwzLCVBhD3ARIsAPKYTcR0xhbPcrmR_WOnw3PXR5Sx4OFe8OEkCi9LRqvL5dp95T-N3-Uv7roaAh3MEALw_wcB">호텔/펜션</a></li>
                <li class="dropdown"><a href="./honeymoon.jsp">허니문</a></li>
            </ul>
        </div>
    </div>
        <nav>
        <img src="img/main/dong_img.png" width="995">
    </nav>
    <hr size="7" noshade>
    <table width="100%" border="1">
        <tr>
            <td width="35%" valign="top">
                <c:choose>
                    <c:when test="${empty mem_id}">
                        <form method="get" action="/MyWebSite/login.do">
                            <table width="95%" border="1" align="left">
                                <tr bordercolor="#FFFF66"> 
                                    <td colspan="2" align="center">로그인</td>
                                </tr>
                                <tr> 
                                    <td width="50%" align="center">ID</td>
                                    <td width="50%" align="center"><input type="text" name="id"></td>
                                </tr>
                                <tr> 
                                    <td align="center">Password</td>
                                    <td align="center"><input type="text" name="password"></td>
                                </tr>
                                <tr> 
                                    <td colspan="2" align="center">
                                        <input type="submit" value="로그인">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <input type="reset" value="리셋">
                                        ${mem}
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <!-- 로그인 상태에서 보여줄 내용 -->
                        <c:choose>
                            <c:when test="${mem_id == 'root'}">
                                <table width="95%" border="0" align="center" height="200">
                                    <tr bordercolor="#FFFF66">
                                        <td colspan="2" align="center">로그인 상태입니다.</td>
                                    </tr>
                                    <tr>
                                        <td width="47%" align="center">
                                            <p>환영합니다, ${mem_id} 님!</p>
                                        </td>
                                        <td width="47%" align="center" >
                                            ${log}|${mypage}
                                        </td>
                                    </tr>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <table width="95%" border="0" align="center" height="200">
                                    <tr bordercolor="#FFFF66">
                                        <td colspan="2" align="center">로그인 상태입니다.</td>
                                    </tr>
                                    <tr>
                                        <td width="47%" align="center">
                                            <p>환영합니다, ${mem_id} 님!</p>
                                        </td>
                                        <td width="47%" align="center" >
                                            ${log}|${mypage}
                                        </td>
                                    </tr>
                                </table>
                            </c:otherwise>
                        </c:choose>
                    </c:otherwise>
                </c:choose>
            </td>
            <td width="50%" valign="top">
                <!-- 우측에 위치할 내용을 추가하세요 -->
                <table width="95%" border="1" align="right" height="200">
                    <!-- 추가할 내용 -->
                </table>
            </td>
        </tr>
    </table>
</body>
</html>