<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jenkin 테스트 중입니다.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="resources/font/IBMPlexSansKR-Regular.ttf">
    <link rel="shortcut icon" href="resources/img/icon.png" type="icon">
</head>

<body>
    <div class="navbar-nav menubar" style="z-index:5;">
        <div class="img">
            <a href="#"><img src="resources/img/logo.png" alt="logo"></a>
        </div>
        <ul class="nav navbar-nav menu">
            <li class="active"><a href="#home">HOME</a>
            </li>
            <li><a href="#about">ABOUT</a>
            </li>
            <li><a href="#vision">기업비전</a>
            </li>
            <li><a href="#services">SERVICES</a>
            </li>
            <li><a href="#customer">주요고객</a>
            </li>
            <li><a href="#interview">인재채용</a>
            </li>
            <li><a href="#map">오시는 길</a>
            </li>
        </ul>
    </div>
   <container style="padding-top: 60px;">
        <div class="con col-12" id="home">
            <ul class="slides">
                <li><img src="resources/img/main1.jpg" alt="image01" class="navImg"></li>
                <li><img src="resources/img/main2.jpg" alt="image02" class="navImg"></li>
                <li><img src="resources/img/main3.jpg" alt="image03" class="navImg"></li>
            </ul>
            <p class="controller" style="visibility: hidden;">
                <span class="prev">&lang;</span>
                <span class="next" style="right : 0">&rang;</span>
            </p>
        </div>
        <div class="con col-12" id="about">
			<div class="company">
                <img class="com_logo" src="resources/img/logo.png" alt="로고">
                <div class="name">
                    <p><span>대표이사</span>최종구</p>
                    <p><span>설립일</span>2022년 1월 25일</p>
                </div>
                <hr>
                <p align="center">
                    (주)디엑스티앤은 클라우드 분야, 공공/금융 분야 SI, <br>
                    네트워크 보안 등의 솔루션 분야를 중점 사업으로 추진하고 있으며, <br>
                    특히, IT 대기업의 전략적 협력 회사로서 인력 채용에서부터 <br>
                    육성, 프로젝트 수행까지 공동으로 진행하고 있는
                    <span>Start-up</span>입니다.
                </p>
                
                <div class="business">
                    <img src="resources/img/company01.png" alt="SI사업본부">
                    <img src="resources/img/company02.png" alt="DX사업본부">
                    <img src="resources/img/company03.png" alt="솔루션사업본부" style="margin-right: 0;">
                </div>
            </div>
            <ul>
                <li style="margin-left: 500px;">
                    <img src="resources/img/about01.png" alt="SI공공사업" style="float: left;">
                    <p style=" padding-top: 25px; text-align: left">
                        <span>SI-공공사업</span><br>
                        KAMCO 차세대 채권관리 시스템 개발 <br>
                        KAMCO 차세대 채권관리 시스템 구축 <br>
                        차세대 사회보장정보시스템 구축 <br>
                        2021년 자치단체 공통기반 및 재해복구 시스템 유지 관리 사업 <br>
                        SH공사 전사자원관리 시스템 구축
                    </p>
                </li>
                <li>
                    <p style="float: left; text-align: right; padding-top: 45px;">
                        <span>DX-금융사업</span><br>
                        KB카드 인터넷 모바일 데이터 클라우드 전환<br>
                        KB카드 마이데이터 표준 API 제공 시스템 <br>
                        KB은행 전자문서 중계 서비스 <br>
                        신한타드 AllThat 서비스 MSA 선 구축</p>
                    <img src="resources/img/about02.png" alt="DX금융사업" style="float: right;">
                </li>
                <li style="margin-left: 500px;">
                    <img src="resources/img/about03.png" alt="SI일반사업" style="float: left;">
                    <p style="padding-top: 60px; text-align: left;">
                        <span>SI-일반사업</span><br>
                        서린상사(주) 시스템 개발<br>
                        아이티센 그룹 업무시스템 개발 및 운영 관리
                    </p>
                </li>
                <li>
                    <p style="float: left; text-align: right; padding-top: 45px;">
                        <span>DX-공공사업</span><br>
                        EBS 웹서비스 클라우드 도입 및 구축 <br>
                        NIA_행정공공기관 클라우드 전환 1차 <br>
                        NIA_행정공공기관 클라우드 전환 3차 <br>
                        원격교육을 위한 공공플랫폼 클라우드 임차
                    </p>
                    <img src="resources/img/about04.png" alt="DX공공사업" style="float: right;">
                </li>
            </ul>
        </div>
        <div class="con col-12" id="vision">
        <div id="back">
				<h2 align="center" style="font-size: 3.0em">기업비전</h2>
				<ul style="list-style:none;">
					<li>
						<img alt="" src="resources/img/human.png">
						<span style="font-size: 2em;">인재를 위하는 기업</span>
					</li>
					<li><img alt="" src="resources/img/human_growth.png">
						<span style="font-size: 2em;">인재와 함께 성장하는 기업</span>
					</li>
					<li><img alt="" src="resources/img/growth.png">
					<span style="font-size: 2em;">3년(2025년) 이내 SI 및 솔루션 전문 기업, 클라우드 MSP로 성장</span></li>
				</ul>
			</div>
			<div id="java">
				<h2 align="center" style="font-size: 3.0em">자바 SI & 클라우드</h2>
				<ul style="list-style:none;">
					<li>
						<img height="100" alt="" src="resources/img/employment.png">
						<p class="text">채용</p>
					</li>
					<li>
						<img height="100" alt="" src="resources/img/arrow.png">
					</li>
					<li><img height="100" alt="" src="resources/img/ojt.png">
						<p class="text">OJT</p>
					</li>
					<li>
						<img height="100" alt="" src="resources/img/arrow.png">
					</li>
					<li><img height="100" alt="" src="resources/img/growth.png">
						<p class="text">육성</p>
					</li>
					<li>
						<img height="100" alt="" src="resources/img/plus.png">
					</li>
					<li>
						<img height="100" alt="" src="resources/img/cooperation.png">
						<p class="text">대기업과의 협업</p>
					</li>
				</ul>
			</div>
			<br>
			<div id="solution">
				<h2 align="center" style="font-size: 3.0em">솔루션</h2>
				<ul style="list-style:none;">
					<li>
						<img width="80" alt="" src="resources/img/employment.png">
						<p class="text">채용</p>
					</li>
					<li>
						<img width="80" alt="" src="resources/img/arrow.png">
					</li>
					<li><img width="80" alt="" src="resources/img/ojt.png">
						<p class="text">교육</p>
					</li>
					<li>
						<img width="80" alt="" src="resources/img/plus.png">
					</li>
					<li>
						<img width="80" alt="" src="resources/img/cooperation.png">
						<p class="text">협력사와 OJT</p>
					</li>
					<li>
						<img width="80" alt="" src="resources/img/arrow.png">
					</li>
					<li><img width="80" alt="" src="resources/img/growth.png">
						<p class="text">육성</p>
					</li>
					<li>
						<img width="80" alt="" src="resources/img/plus.png">
					</li>
					<li>
						<img width="80" alt="" src="resources/img/cooperation.png">
						<p class="text">협업</p>
					</li>
				</ul>
			</div>
        </div>
        <div class="con col-12" id="services">
			<div class = "center">
				<div class = "b1"><h2 style = "font-weight: bold; text-align: center;">SI 사업 본부</h2><br><br>
				<div class = "sic">
				<br>-공공 금융 기업 분야에 정보시스템 통합 구축<br><br>
	
					-시스템 기획 및 설계<br><br>
					
					-최적의 하드웨어 선정<br><br>
					
					-발주 및 조달<br><br>
					
					-사용자의 필요에 맞춘 응용 소프트웨어 개발<br><br>
					
					-시스템 유지 보수 등 전반적인 시스템 통합 사업<br>
					</div>
				</div>
		        <div class = "b2"><h2 style = "font-weight: bold; text-align: center;">DX 사업 본부</h2>
		        <br><br>
				<div class = "sic">
				<br>-대형 MSP 업체 협력사로 AWS, Azure, NCP, KT Cloud 등<br> 신규 구축 및 운영사업<br><br>
	
					-다양한 프로젝트 관련 지식을 바탕으로 Cloud 사업을 확장<br><br>
					
					-클라우드 기반의 솔루션을 학습 및 전문 기술과 서비스 제공<br><br>
					
					-개인 역량 향상에 노력<br>
					</div>
		        </div>
		        <div class = "b3"><h2 style = "font-weight: bold; text-align: center;">솔루션 사업 본부</h2>
		        <br><br>
				<div class = "sic">
				<br>-네트워크 보안 및 미들웨어, Appliance까지<br> 제조사로부터 제품을 공급 받아 사업 수행<br><br>
	
					-제조사와 협력관계로 <br>최신 정보 업데이트 및 자료 공유, 스킬업 등 아낌없는 지원<br>
					</div></div>
	        </div><br><br><br>
	        <div class = "mail">
			<h3>사업문의 : <a href="mailto:﻿ta@dxtn.co.kr?subject=사업 문의">ta@dxtn.co.kr</a></h3>        
			</div>
		</div>
		
		
        <div class="con col-12" id="customer">
        	<div style="float:left;width:20%;">
        		<img src="../resources/img/cjtw.jpg" style="width:500px; height:766px;opacity:0.9; border-radius:10px;">
        	</div>
        	<div style="width:80%; float:right; padding-left:160px; padding-top:20px;">
				<p style="text-align:center; font-size:6em; font:oblique;">주요 고객</p><br/>
				<p style="text-align:center; font-size:3em;">우리는 같이 성장해 나갈 것 입니다.</p>
					<div class="slide slide_wrap" style="margin-top:80px;" >
      				<div class="slide_item item1"></div>
 		      			<div class="slide_item item2"></div>
    	  			<div class="slide_item item3"></div>
      				<div class="slide_item item4"></div>
      				<div class="slide_item item5"></div>
      				<div class="slide_item item6"></div>
    		  		<div class="slide_prev_button slide_button">◀</div>
      				<div class="slide_next_button slide_button">▶</div>
      				<ul class="slide_pagination"></ul>
  				</div>
  			</div>
        </div>
        
        <div class="con col-12" id="interview">
        	<div>
        		<h2 class="h2_t">인재상</h2>
        	</div>
        	<div style="margin-top:20px; text-align: center;">
        		<img alt="" src="resources/img/talent.png" width="700" height="600">     	
        	</div>
        	<div style="text-align:center;">
        		<input type="button" value="모집공고" class="btn btn-primary" onclick="window.open('employ','모집공고')">
        	</div>
        </div>
        
        <div class="con col-12" id="map">
        	<h2 class="h2_t">찾아오는길</h2>
        	<div id="daumRoughmapContainer1678086472122" class="root_daum_roughmap root_daum_roughmap_landing" style="z-index: 1"></div>
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1678086472122",
						"key" : "2dxqd",
						"mapWidth" : "800",
						"mapHeight" : "440"
					}).render();
				</script>
			<div style="text-align:center; margin-top:27px; padding-right:150px;">
				<div style="font-size: 18px;">&#124; 서울특별시 서대문구 서소문로21, 충정타워 6층 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#124; 대표번호 : 02-2088-0433</div>
			</div>
			<div id="ride">
			<table style="margin-top:10px; width:800px;">
				<tr>
					<td colspan="2">
						<h4 style="padding-top:10px; padding-left: 20px;">&#149; 찾아오시는길</h4>
						<hr style="border: 1px solid silver;"  width="98%">
					</td>
				</tr>
				<tr>
					<td style="width: 10%" >
						<img alt="" src="resources/img/subway.png">
					</td>
					<td>
						<ul>
							<li>2호선 2번출구</li>								
							<li>5호선 9번출구</li>								
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<hr style="border: 1px dotted silver;" width="98%">
					</td>
				</tr>
				<tr>
					<td style="width: 10%">
						<img alt="" src="resources/img/bus.png">
					</td>
					<td>
						<ul>
							<li>일반 : 7017, 7013A, 7013B, 7011</li>
							<li>간선 : 172, 370, 472, 600, 602</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<hr style="border: 1px solid silver;" width="98%">
					</td>
				</tr>
			</table>
			</div>
        </div>
		<div style="text-align:center;">
        		<input type="button" value="chat" class="btn btn-primary" onclick="window.open('/chat','채팅방')">
        	</div>
    </container>
    <footer>
        <div class="info">
            <img src="resources/img/logo2.png" alt="로고">
            <ul>
                <li>회사명 : (주)디엑스티앤</li>
                <li>대표자 : 최종구</li>
                <li>주소 : 서울특별시 서대문구 서소문로 21(충정타워빌딩) 603호</li>
                <li>전화번호 : 02-2088-0433</li>
                <li>팩스 : 070-8220-0433</li>
                <li style="margin-left : 10px">사업자등록번호 : 366-81-02488</li>
            </ul>
            <p>사업문의 : ta@dxtn.co.kr | 인재채용 : admin@dxtn.co.kr</p>
        </div> 
    </footer>
    <script>
        let slides = document.querySelector('.slides');
        let slideImg = document.querySelectorAll('.slides li');
        currentIdx = 0;
        slideCount = slideImg.length;
        prev = document.querySelector('.prev'); //이전 버튼
        next = document.querySelector('.next'); //다음 버튼
        slideWidth = 1520; //슬라이드이미지 넓이
        makeClone(); // 처음이미지와 마지막 이미지 복사 함수
        initfunction(); //슬라이드 넓이와 위치값 초기화 함수
        function makeClone() {
        let cloneSlide_first = slideImg[0].cloneNode(true);
        let cloneSlide_last = slides.lastElementChild.cloneNode(true);
        slides.append(cloneSlide_first);
        slides.insertBefore(cloneSlide_last, slides.firstElementChild);
        }
        function initfunction() {
        slides.style.width = slideWidth * (slideCount + 2) + 'px';
        slides.style.left = -slideWidth + 'px';
        }
        next.addEventListener('click', function () {
        //다음 버튼 눌렀을때
        if (currentIdx <= slideCount - 1) {
            //슬라이드이동
            slides.style.left = -(currentIdx + 2) * slideWidth + 'px';
            slides.style.transition = `${0.5}s ease-out`; //이동 속도
        }
        if (currentIdx === slideCount - 1) {
            //마지막 슬라이드 일때
            setTimeout(function () {
            //0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
            slides.style.left = -slideWidth + 'px';
            slides.style.transition = `${0}s ease-out`;
            }, 500);
            currentIdx = -1;
        }
        currentIdx += 1;
        move(currentIdx);
        });
        prev.addEventListener('click', function () {
        //이전 버튼 눌렀을때
        console.log(currentIdx);
        if (currentIdx >= 0) {
            slides.style.left = -currentIdx * slideWidth + 'px';
            slides.style.transition = `${0.5}s ease-out`;
        }
        if (currentIdx === 0) {
            setTimeout(function () {
            slides.style.left = -slideCount * slideWidth + 'px';
            slides.style.transition = `${0}s ease-out`;
            }, 500);
            currentIdx = slideCount;
        }
        currentIdx -= 1;
        move(currentIdx);
        });


        // 자동 슬라이드
 
        function move(currentIdx){
 
            let slides = document.querySelector('.slides');
            let slideImg = document.querySelectorAll('.slides li'); 
            currentIdx = 0;

            setInterval(function(){
                slides.style.transition = '3s';
                slides.style.transform = "translate3d(-"+1520*(currentIdx+1)+"px, 0px, 0px)";
 
                currentIdx++;
 
                if(currentIdx === 2){
                    currentIdx = -1;
                }
 
            },5000);
        }
        
        document.addEventListener("DOMContentLoaded",function(){
            move(currentIdx);
        });
    </script>
    <script src="resources/js/slide.js"></script>
</body>
</html>