<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="be887547-da7b-4585-86da-36d32dfb8647" /><title>오시는길</title>

    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
<!--[if gte IE 9 ]><link rel="stylesheet" href="/assets/css/ui.ie9.css" type="text/css" /><![endif]-->

<style>
    .file_input {
        font-size:45px;
        position:absolute;
        top:0;
        right:0;
        bottom:0;
        left:0;
        margin:0;
        padding:0;
        border:0;
        z-index:-1;
        opacity: 0;
        filter: alpha(opacity=0);
        -ms-filter: "alpha(opacity=0)";
        -khtml-opacity:0;
        -moz-opacity:0;
    }
</style>

<script type="text/javascript" src="assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="assets/js/ui.common.js"></script>
<script type="text/javascript" src="assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="assets/js/TweenMax.min.js"></script>
<script type="text/javascript" src="assets/js/tss.js"></script>
<script type="text/javascript" src="assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="assets/js/fileupload/jquery.fileupload.js"></script>
<script type="text/javascript" src="assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>
<!-- moment js api -->
<script type="text/javascript" src="assets/js/moment.js"></script>
<!-- lodash js api -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>

<script>
    $(function () {
        var token = $("meta[name='_csrf']").attr('content');
        var header = "X-CSRF-TOKEN";
        $(document).ajaxSend(function(event, xhr, options) {
            xhr.setRequestHeader(header, token);
        });
        $(document).ajaxError(function(event, xhr, options) {
            if(xhr.status === 401) {
                console.log(xhr);
                if(tss.util.confirm('로그인이 필요합니다.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("오류가 발생했습니다.");
            }
        });
    });
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.hansot.css" />
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>


    <!-- kakao pixcel -->
    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
        kakaoPixel('5575357302971415199').pageView();
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '241666853119648');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->


</head>
<body ontouchstart>
<!-- wrap s -->
<div id="wrap" class="">
    <!-- inc header s -->
    <!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
             <% String id = (String)session.getAttribute("id"); %>
            <ul style="width:300px">
              <% if(id != null && id.equals("admin")){ %>
            	 <li>
           
                   <a href="goAdmin.am"><img src="images/key.png" style="width:15px;">&nbsp;관리자 페이지</a>
                   
                </li>
                
                <li>
                <a href="javascript:location.href='logout.do'" id="logout"/> logout </a>
                </li>
           <%}%>
           
            <% if(id != null && (!id.equals("admin"))){ %>
            	 <li >
           
                    <a href="mypage.go"> <%=id %> 님의 마이페이지</a> 
                    
                </li>
                <li>
                <a href="javascript:location.href='logout.do'" id="logout"/> logout </a>
                </li>
           <%}%>
            <% if(id == null){
            
            %>
                <li>

                    <a href="login.do">로그인</a>
                </li>
                    
                <li>
                    <a href="join.do">회원가입</a>
               </li>
             <%} %> 

                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="새 창 열림" ><span class="blind">instagram</span></a>
                </li>
                
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="새 창 열림" ><span class="blind">facebook</span></a>
                </li>
                
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="home.go"><span class="blind">한솥</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                    <a href="login.do">로그인</a>
                    </li>
                <li>
                    <a href="join.do">회원가입</a>
                    </li>
                    </ul>
                </div>
                <!-- //모바일 로그인/회원가입 -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="story.go">브랜드 스토리</a></li>
                                    <li><a href="philosophy.go">브랜드 철학</a></li>
                                    <li><a href="legacy.go">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="esg.go">ESG경영이란?</a></li>
                                    <li><a href="philosophy.go">환경보호(Environment)</a></li>
                                    <li><a href="social.go">사회공헌(Social)</a></li>
                                    <li><a href="esg.go">윤리경영(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="menu_list.go">전체메뉴</a></li>
                                    <li><a href="material.go">식재료 이야기</a></li>
                                    <li><a href="chancha.go">페루찬차마요커피</a></li>
                                    <li><a href="menu_order.go">단체 주문</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="store_find.go">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="event_list.go">이 달의 이벤트</a></li>
                                    <li><a href="store_event_list.go">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="hansot_store.go">Why 한솥 가맹점</a></li>
                                    <li><a href="success.go">성공수기</a></li>
                                    <li><a href="process.go">창업개설절차</a></li>
                                    <li><a href="calc.go">예상 창업 비용</a></li>
                                    <li><a href="qna.go">창업문의</a></li>
                                    <li><a href="briefing.go">창업설명회 일정·신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="promise.go">한솥의 약속</a></li>
                                    <li><a href="vision.go">한솥의 비전</a></li>
                                    <li><a href="history.go">연혁&amp;수상</a></li>
                                    <li><a href="news_list.go">한솥 NEWS</a></li>
                                    <li><a href="location.go">오시는 길</a></li>
                                    
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!--// gnb -->
            <!-- pc:bg -->
            <div class="bg_layer"></div>
            <!-- //pc:bg -->
            <!-- mobile_btn -->
            <div class="mobile_menu_btn">
                <div class="hamburger" id="hamburger-6">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <!-- //mobile_btn -->
        </div>
        <!--// header content -->
    </div>
</header>
<!--// header -->

<!--// inc header e -->

    <!-- popup -->
<!-- container s -->
    <div id="container" class="sub_page">
        
<div class="content hansot">
    <section class="location">
        <!-- 찾아오시는 길 -->
        <div class="location_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">오시는 길</h2>
                <div class="tab_wrap mo_version cont_area">
                    <ul class="tab_menu">
                        <li class="active"><a href="javascript:loadMap(0);">서울본사</a></li>
                        <li><a href="javascript:loadMap(1);">중부사업부</a></li>
                        <li><a href="javascript:loadMap(2);">대구사업부</a></li>
                        <li><a href="javascript:loadMap(3);">부산사업부</a></li>
                        <li><a href="javascript:loadMap(4);">호남사업부</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->

            <!-- 서울 본사 위치안내 -->
            <div class="tab_cont active">
                <div class="traffic_wrap">
                    <!-- 지도 api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map1" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //지도 api -->
                    <div class="map_info_wrap mo_version">
                        <!-- 주소 -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">서울 본사</h3>
                            <p class="map_address">
                                <span class="s_block">서울 강남구 강남대로 318 8층, 9층</span>
                                <span class="s_block call">02-585-1114</span>
                            </p>
                        </div>
                        <!-- //주소 -->
                        <!-- 교통편안내 -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">지하철 이용시</h4>
                                <dl>
                                    <dt>2호선</dt>
                                    <dd>강남역 4번 출구</dd>
                                    <dt>3호선</dt>
                                    <dd>양재역 3번 출구</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">버스 이용시</h4>
                                <dl>
                                    <dt>일반</dt>
                                    <dd>500-5</dd>
                                    <dt>간선</dt>
                                    <dd>140, 400, 402, 407, 420, 421, 440, 441, 462, 470, 471, 541, 542, N37</dd>
                                    <dt>직행</dt>
                                    <dd>
                                        <span class="s_block">500-2, 1005, 1005-1, 1151, 1241, 1251, 1550-1, 1550-3, 1551, 1551B, 1560, </span>
                                        <span class="s_block">3030, 3200, 5001, 5001-1, 5002, 5003, 5006, 5100, 6001, 6501, 9004, 9700</span>
                                    </dd>
                                    <dt>급행</dt>
                                    <dd>8101</dd>
                                    <dt>광역</dt>
                                    <dd>9100, 9200, 9201, 9300, 9404, 9408, 9500, 9501, 9711A, 9711B, 9802, M6405</dd>
                                    <dt>시외</dt>
                                    <dd>9502</dd>
                                    <dt>공항</dt>
                                    <dd>6009, 6500</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //교통편안내 -->
                    </div>
                </div>
            </div>
            <!-- //서울 본사 위치안내 -->
            <!-- 중부 사업부 위치안내 -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- 지도 api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map2" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //지도 api -->
                    <div class="map_info_wrap mo_version">
                        <!-- 주소 -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">중부 사업부</h3>
                            <p class="map_address">
                                <span class="s_block">대전광역시 서구 탄방동 792번지 </span>
                                <span class="s_block">타워렉스빌딩 5층 503호</span>
                                <span class="s_block call">042-624-1117</span>
                            </p>
                        </div>
                        <!-- //주소 -->
                        <!-- 교통안내 -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">지하철 이용시</h4>
                                <dl>
                                    <dt>1호선</dt>
                                    <dd>탄방역 4번 출구 하차 후 한가람아파트네거리방향 500M지점</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">버스 이용시</h4>
                                <dl>
                                    <dt class="blind">일반</dt>
                                    <dd>104, 105, 106, 706, 911</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //교통안내 -->
                    </div>
                </div>
            </div>
            <!-- //중부 사업부 위치안내 -->
            <!-- 대구사업부 위치안내 -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- 지도 api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map3" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //지도 api -->
                    <div class="map_info_wrap mo_version">
                        <!-- 주소 -->
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">대구 사업부</h3>
                            <p class="map_address">
                                <span class="s_block">대구광역시 동구 신천4동 350-7번지</span>
                                <span class="s_block">경동빌딩 4층</span>
                                <span class="s_block call">053-745-6114</span>
                            </p>
                        </div>
                        <!-- //주소 -->
                        <!-- 교통안내 -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">지하철 이용시</h4>
                                <dl>
                                    <dt>1호선</dt>
                                    <dd>동대구역 하차 후 2번 출구 동대구세무서방면 1.3KM 지점</dd>
                                    <dt>2호선</dt>
                                    <dd>범어역 하차 후 4번 출구 동대구세무서 방면 1.2KM 지점</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">버스 이용시</h4>
                                <dl>
                                    <dt class="blind">일반</dt>
                                    <dd>508, 518, 순환2, 818, 399</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //교통안내 -->
                    </div>
                </div>
            </div>
            <!-- //대구사업부 위치안내 -->
            <!-- 부산사업부 위치안내 -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- 지도 api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map4" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //지도 api -->
                    <!-- 주소 -->
                    <div class="map_info_wrap mo_version">
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">부산 사업부</h3>
                            <p class="map_address">
                                <span class="s_block">부산광역시 동구 중앙대로 236</span>
                                <span class="s_block">신흥빌딩 9층 (초량동 1198-1)</span>
                                <span class="s_block call">051-804-1114</span>
                            </p>
                        </div>
                        <!-- //주소 -->
                        <!-- 교통안내 -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">지하철 이용시</h4>
                                <dl>
                                    <dt>1호선</dt>
                                    <dd>부산역 하차 후 10번 출구 방면 250M지점</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">버스 이용시</h4>
                                <dl>
                                    <dt>일반</dt>
                                    <dd>
                                        <span class="s_block">2, 17, 26, 27, 40, 41, 43, 59, 61, 66, 67, 82, 87, 88-1A, 88-1B, 88A, 101, 103, 134, </span>
                                        <span class="s_block">167, 190, 333, 508</span>
                                    </dd>
                                    <dt>급행</dt>
                                    <dd>1000, 1001, 1003, 1004</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //교통안내 -->
                    </div>
                </div>
            </div>
            <!-- //부산사업부 위치안내 -->
            <!-- 호남사업부 위치안내 -->
            <div class="tab_cont">
                <div class="traffic_wrap">
                    <!-- 지도 api -->
                    <div class="area_map">
                        <div class="map_img">
                            <div id="map5" style="width:100%;height:500px;"></div>
                        </div>
                    </div>
                    <!-- //지도 api -->
                    <!-- 주소 -->
                    <div class="map_info_wrap mo_version">
                        <div class="map_tit_wrap">
                            <h3 class="h3_tit fz_01">호남 사업부</h3>
                            <p class="map_address">
                                <span class="s_block">광주광역시 동구 중앙로 143,</span>
                                <span class="s_block">2층(호남동)</span>
                                <span class="s_block call">062-943-1114</span>
                            </p>
                        </div>
                        <!-- //주소 -->
                        <!-- 교통안내 -->
                        <div class="map_tr_wrap">
                            <div class="tr_sub">
                                <h4 class="fz_03">지하철 이용시</h4>
                                <dl>
                                    <dt>1호선</dt>
                                    <dd>금남로4가역 광주1호선 1번 출구</dd>
                                </dl>
                            </div>
                            <div class="tr_bus">
                                <h4 class="fz_03">버스 이용시</h4>
                                <dl>
                                    <dt>간선</dt>
                                    <dd>수완12, 지원45, 금남59</dd>
                                    <dt>지선</dt>
                                    <dd>대촌170, 송암74, 금남55, 대촌70, 문흥80</dd>
                                    <dt>급행</dt>
                                    <dd>매월06, 진월07</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //교통안내 -->
                    </div>
                </div>
            </div>
            <!-- //호남사업부 위치안내 -->
        </div>
        <!-- //찾아오시는 길 -->
    </section>
</div>

<script>
    //$(window).on("load", function(){
    $(function(){
        loadMap(0);
    });

    //});

    var latlng = [
        {lat : "37.4915804", lng : "127.0311893"},  // 서울본사
        {lat : "36.3464304", lng : "127.3899069"},  // 중부사업부
        {lat : "35.8681321", lng : "128.6303401"},  // 대구사업부
        {lat : "35.1177324", lng : "129.0415861"},  // 부산사업부
        {lat : "35.1474656", lng : "126.9119342"}   // 호남사업부
    ];
    var mapContainer, map, mapOptions, position, markerOptions;

    // 지도생성
    function loadMap(n) {
        var lat = latlng[n].lat;
        var lng = latlng[n].lng;
        var id = $(".tab_cont.active").find(".map_img > div").attr("id");
        mapContainer = document.getElementById(id); // 지도를 표시할 div
        mapResize();

        position = new naver.maps.LatLng(lat, lng);
        mapOptions = {
            center: position,
            zoom: 10,
            logoControl : false,        // naver 로고
            mapDataControl : false      // 저작권 컨트롤
        };

        map = new naver.maps.Map(mapContainer, mapOptions);

        markerOptions = {
            position: position.destinationPoint(0, 0),
            map: map,
            icon: {
                url: 'assets/images/common/icon_map.png',
                size: new naver.maps.Size(42, 52),
                scaledSize: new naver.maps.Size(42, 52),
                origin: new naver.maps.Point(0, 0),
                anchor: new naver.maps.Point(25, 26)
            }
        };
        new naver.maps.Marker(markerOptions);
    }

    function mapResize(){

        var w = $(".location_wrap").width();
        var h = w * 0.427;

        mapContainer.style.width = w +'px';
        mapContainer.style.height = h + 'px';
    }

    $(window).on("resize", function(){
        mapResize();
    });
</script>

    </div>
    <!--// container e -->

    <!-- inc footer s -->
    <!-- footer -->
<footer id="footer">
    <div class="ft_content mo_version">

        <!-- family goods -->
        <div class="ft_menu">
            <ul>
                <li class="first_be off"><a href="incruit.go">인재채용</a></li>
                <li class="off"><a href="partners.go">협력업체등록</a></li>
                <li class="mo_bl"><a href="notice_list.go">공지사항</a></li>
                <li><a href="faq_list.go">고객 센터</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>개인정보취급방침</strong></a></li>
                <li><a href="agreement.go">이용약관</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 프랜차이즈분야 대상2017</span></p></div><!-- 2018-01-11웹어워드마크 -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">대표이사  이영덕</span>
                <span>사업자등록번호  214-81-96569</span>
                <span>서울시 강남구 강남대로 318(역삼동) 타워837빌딩 8,9층</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>한솥 도시락 고객센터  02-585-1114</span>
                <span>전국창업설명회  1811-0188</span>
                <span>단체주문  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">한솥 사업자 정보</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">대표이사  이영덕</span>
                        <span>사업자등록번호  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">서울시 강남구 강남대로 318(역삼동) 타워837빌딩 8,9층</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>한솥 고객센터</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>전국창업설명회</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>단체주문</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>㈜한솥. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="새 창 열림" class="sns_insta_02" target="_blank" title="새 창 열림" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="새 창 열림" ><span class="blind">facebook</span></a>
            </div>
        </div>
        <!--// info -->
    </div>
</footer>
<!--// footer -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-109125197-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', 'UA-109125197-1');
        </script>
    <!--// inc footer e -->

</div>
<!--// wrap e -->
</body>
</html>