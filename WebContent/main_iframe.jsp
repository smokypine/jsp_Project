<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        .slider{
            width: 640px;
            height: 480px;
            position: relative;
            margin: 0 auto;
        }
        .slider input[type=radio]{
            display: none;
        }
        ul.imgs{
            padding: 0;
            margin: 0;
        }
        ul.imgs li{
            position: absolute; /* 슬라이드가 겹쳐서 모여야 하므로 absolute 속성으로 배치 */
            opacity: 0; /* 체크한 라디오박스 순서의 슬라이드만 표시되도록 기본 투명도 설정 */
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .bullets{
            position: absolute;
            left: 50%; /* 가로로 가운데 정렬 */
            transform: translateX(-50%);
            bottom: 20px; /* 슬라이드 밑에서 20px 간격 띄움 */
            z-index: 2; /* 슬라이드 위에 보이도록 레이어 순위를 높임 */
        }
        .bullets label{
            display: inline-block; /* 한 줄로 불릿 나열*/
            border-radius: 50%; /* 원형 불릿으로 처리 */
            background-color: rgba(0,0,0,0.55);
            width: 20px; /* 불릿 너비 */
            height: 20px; /* 불릿 높이 */
            cursor: pointer;
        }
        .slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(5):checked~.bullets>label:nth-child(5){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(6):checked~.bullets>label:nth-child(6){
            background-color: #fff;
        }
        .slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        .slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        .slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        .slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        .slider input[type=radio]:nth-child(5):checked~ul.imgs>li:nth-child(5){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        .slider input[type=radio]:nth-child(6):checked~ul.imgs>li:nth-child(6){
            opacity: 1;
            transition: 1s;
            z-index: 1;
        }
        ul.imgs li{
            position: absolute;
            opacity: 0;
            list-style: none;
            padding: 0;
            margin: 0;
            transition-delay: 0.9s; /* 트랜지션 지연 시간 지정 */
        }
    </style>
</head>
<body>
    <div class="slider">
        <input type="radio" name="slide" id="slide1" checked>
        <input type="radio" name="slide" id="slide2">
        <input type="radio" name="slide" id="slide3">
        <input type="radio" name="slide" id="slide4">
        <input type="radio" name="slide" id="slide5">
        <input type="radio" name="slide" id="slide6">
        <ul id="imgholder" class="imgs">
            <li><img src="img/main/air.jpg" height="540"></li>
            <li><img src="img/main/southeastasia.jpg" height="540"></li>
            <li><img src="img/main/america.jpg" height="540"></li>
            <li><img src="img/main/europe.jpg" height="540"></li>
            <li><img src="img/main/pacific.jpg" height="540"></li>
            <li><img src="img/main/korea.jpg" height="540"></li>
        </ul>
        <div class="bullets">
            <label for="slide1">&nbsp;</label>
            <label for="slide2">&nbsp;</label>
            <label for="slide3">&nbsp;</label>
            <label for="slide4">&nbsp;</label>
            <label for="slide5">&nbsp;</label>
            <label for="slide6">&nbsp;</label>
        </div>
    </div>
</body>
</html>
