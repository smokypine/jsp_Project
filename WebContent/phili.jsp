<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>필리핀</title>
	<style>
        *{
            padding:0;
            margin:10px;
        }
        li{
            list-style-type:none;
        }
        a {
            text-decoration: none;
        }
        .clear{
            clear:both;
        }
        th, td{
            border:1px solid #4444;
        }
        header {
            width: 995px;
            height: 30px;
            margin-top: 10px;
        }
        #logoimg {
            margin: 5px;
            float: left;
        }
        #logo {
            margin-top: 30px;
            margin-left:0px;
            float: left;
        }
        #logo li{     
            color: white;            
            background-color: rgb(199, 194, 194);           
            font-size: 18px;
            font-weight: bold;            
            font-family: "Trebuchet MS", Dotum, Arial; 
        }
        
        #top {
            float: right;
            margin: 10px 20px 0 0;
        }
        #content1{
            width: 1035px;
            height: 110px;
            margin-top: 20px;
            border: solid 1px #cccccc;
        }
        #content1 li{
            display: inline;
            margin: 50px 30px;
        }
        nav {
        margin-top: 0px;
        margin-left: 0px;
        padding-top: 10px;
        }
        nav li {
            display: inline;
            margin: 50px 30px;
        }
        section {
            float: left;
            margin-top: 00px;
            margin-left:0px;
            margin-left: 0px;
            
        }
        footer {
            width: 995px;
            height: 100px;
            border-top: solid 1px #cccccc;
            margin-top: 10px;
            border: solid 1px #cccccc;
        }
        #address {
            float: left;
            margin: 30px 0 0 20px;
        }
        #customer {
            float: right;
            margin: 30px 0 0 180px;
            padding-right: 20px;
        }
        #page {
            width: 1010px;
            margin: auto;
            border: solid 0px #cccccc;
        }
        .dropdown{
            display:inline-block;
            position:relative;

            width: 0px;
            margin : 10px;
            padding: 15px;
            border : none;
            font-size: 60px;
        }
        .dropdownContents{/*child*/
            display:none;
            width:140px;
            padding:0px;
            margin:15px;
            line-height:30x;
            position:absolute;/*relative 요소를 찾는다*/
            list-style:circle;
        }
        .dropdown:hover .dropdownContents{
            display:block;
            background-color:white;
        }
        .sticky{            
            background-color: white;            
            position:sticky;            
            top:0px;        
        }
    </style>
</head>
<body id="page">
    <%@ include file="./header.jsp" %>
    <nav style="text-align:center">
        <img src="img/phili/gif01.gif" width="995">
        <img src="img/phili/phi01.jpg" width="995">
        <img src="img/phili/gif02.gif" width="995">
        <img src="img/phili/phi02.jpg" width="995">
        <img src="img/phili/beach.png" width="995">
        <img src="img/phili/phi03.jpg" width="995">
        <video src="img/phili/video4.mp4" width="995" controls autoplay loop muted></video>
        <img src="img/phili/phi04.jpg" width="995">
        <img src="img/phili/phi05.jpg" width="995">
        <img src="img/phili/phi06.png" width="995">
    </nav>
    <hr size="7" noshade>
    <section>
        <h2>세부</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/phili/sb01.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/sb02.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/sb03.png" width="280"></a></td>
            </tr>
            <tr>
                <td><strong>가볍게 떠나는 세부 </strong> </a></td>
                <td><strong>세부 시그니처 </strong></a></td>
                <td><strong>세부를 자유롭게!!</strong> </a></td>
            </tr>
            <tr>
                <td>[베스트셀러] 세부 일급/준특급 리조트 5일/6일</td>
                <td>[노쇼핑,노옵션,노팁,호핑투어,스톤마사지] 세부 5일/6일</td>
                <td>[에어텔] 세부 자유여행 / 5일/6일</td>
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td>550,600원~</td>
                <td>1,010,600원~</td>
                <td>650,600원~</td>
            </tr>
            <tr>
                <td><strong>6월</strong> 
                    <a href="">04</a>
                    |
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">27</a>
                    |
                    <a href="">30</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
            </tr>
            <tr>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
            </tr>
        </table>
    </section>
    <hr size="7" noshade>
    <section>
        <h2>보라카이</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/phili/bo01.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bo02.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bo03.png" width="280"></a></td>
            </tr>
            <tr>
                <td><strong>자유여행에 호핑과 마사지를 더하다  </strong> </a></td>
                <td><strong>주머니도 가볍게 떠나는 보라카이 </strong></a></td>
                <td><strong>호핑투어까지 화끈하게 하고 가자!! </strong> </a></td>
            </tr>
            <tr>
                <td>[프리한패키지][호핑+마사지] 보라카이 / 4일/5일/6일</td>
                <td>[비치근접/가성비갑] 보라카이 / 라까멜라 or 카사필라 4일/5일/6일</td>
                <td>[호핑+가이드기사경비 포함] 보라카이 / 헤난 4일/5일/6일</td>
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td>599,800원~</td>
                <td>549,800원~</td>
                <td>779,800원~</td>
            </tr>
            <tr>
                <td><strong>6월</strong> 
                    <a href="">04</a>
                    |
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">27</a>
                    |
                    <a href="">30</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">02</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                    <a href="">28</a>
                    |
                    <a href="">30</a>
                    |
                </td>
            </tr>
            <tr>
                <td><strong>7월</strong>
                <a href="">02</a>
                |
                <a href="">06</a>
                |
                <a href="">09</a>
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                </td>
            </tr>
            <tr>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
            </tr>
        </table>
        
    </section>
    <hr size="7" noshade>
    <section>
        <h2>보홀</h2>
        <br>
        <table>
            <tr>
                <td><a href=""><img src="img/phili/bh01.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bh02.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bh03.png" width="280"></a></td>
            </tr>
            <tr>
                <td><strong>★프리한패키지 특가★</strong> </a></td>
                <td><strong>세미 패키지[일급/준특급/특급] </strong></a></td>
                <td><strong>[노쇼핑/노옵션/노팁] 특급 리조트 </strong> </a></td>
            </tr>
            <tr>
                <td>[보홀직항][노쇼핑,노옵션] 3,4박+호핑or마사지+자유일정</td>
                <td>[보홀직항][노쇼핑] 3,4박 어드벤처투어+자유일정</td>
                <td>[보홀직항][노쇼핑/노옵션/노팁] 3,4박 어드벤처투어+호핑투어+자유일정</td>
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td>680,600원~</td>
                <td>770,600원~</td>
                <td>1,150,600원~</td>
            </tr>
            <tr>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">23</a>
                    |
                    <a href="">25</a>
                    |
                    <a href="">28</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">27</a>
                    |
                    <a href="">30</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
            </tr>
            <tr>
                <td><strong>7월</strong>
                <a href="">02</a>
                |
                <a href="">06</a>
                |
                <a href="">09</a>
                |
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                    |
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                    |
                    <a href="">13</a>
                    |
                    <a href="">17</a>
                    |
                </td>
            </tr>
            <tr>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
            </tr>
        </table>
        <table>
            <tr>
                <td><a href=""><img src="img/phili/bh04.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bh05.png" width="280"></a></td>
                <td><a href=""><img src="img/phili/bh06.png" width="280"></a></td>
            </tr>
            <tr>
                <td><strong>에어텔[일급 리조트] </strong> </a></td>
                <td><strong>에어텔[준특급 리조트] </strong></a></td>
                <td><strong>에어텔[특급 리조트]</strong> </a></td>
            </tr>
            <tr>
                <td>[베스트셀러] 자유여행 3,4박 ★공항호텔 왕복픽업서비스 포함★</td>
                <td>자유여행 3,4박 ★공항호텔 왕복픽업서비스 포함★</td>
                <td>자유여행 3,4박 ★공항호텔 왕복픽업서비스 포함★</td>
            </tr>
            <tr style="color:red; font-weight:bold;">
                <td>700,600원~</td>
                <td>810,600원~</td>
                <td>760,600원~</td>
            </tr>
            <tr>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">27</a>
                    |
                    <a href="">30</a>
                    |
                </td>
                <td><strong>6월</strong> 
                    <a href="">08</a>
                    |
                    <a href="">11</a>
                    |
                    <a href="">15</a>
                    |
                    <a href="">18</a>
                    |
                    <a href="">22</a>
                    |
                    <a href="">25</a>
                    |
                </td>
            </tr>
            <tr>
                <td><strong>7월</strong>
                <a href="">02</a>
                |
                <a href="">06</a>
                |
                <a href="">09</a>
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                </td>
                <td><strong>7월</strong>
                    <a href="">02</a>
                    |
                    <a href="">06</a>
                    |
                    <a href="">09</a>
                </td>
            </tr>
            <tr>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
                <td style="border:none;"><a href=""><button>+더보기</button></a></td>
            </tr>
        </table>
    </section>
    <hr size="7" noshade>
	<%@ include file="./footer.jsp" %>
</body>
</html>