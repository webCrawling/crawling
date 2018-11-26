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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3686d4d2-3095-4d0a-b475-9e59503b5982" /><title>연혁</title>

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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.hansot.css"/>
    <script type="text/javascript" src="assets/js/scrollmagic.js"></script>

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
            <ul>
                <li>
                    <a href="login.do">로그인</a>
                    </li>
                <li>
                    <a href="join.do">회원가입</a>
                    </li>
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
								<li><a href="login.do">로그인</a></li>
								<li><a href="join.do">회원가입</a></li>
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
    <section class="history">
        <!-- 연혁 -->
        <div class="history_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">연혁·수상</h2>
                <div class="tab_wrap mo_version">
                    <ul class="tab_menu">
                        <li class="active"><a href="#none">연혁</a></li>
                        <li><a href="award.go">수상</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->
            <!-- history_list -->
            <div class="history_cont mo_version">
                <h3 class="h3_tit">
                    <span class="s_block">지난 20년간 한솥의</span>
                    <span class="s_block">성장 발자취</span>
                </h3>
                <div class="hi_list_wrap">
                    <ul>
                        <li class="ht_list right" id="ht_item21">
                            <div class="ht_wrap">
                                <h4>2017</h4>
                                <ul>
                                    <li>
                                        <span>12</span>
                                        <p>프리미엄 찌개시리즈(소고기 육개장, 묵은지 김치찌개) 출시</p>
                                    </li>
                                    <li>
                                        <span>11</span>
                                        <p>단호박스프, 왕치킨마요, 왕카레돈까스덮밥  출시</p>
                                    </li>
                                    <li>
                                        <span>09</span>
                                        <p>와사마요시리즈 출시</p>
                                    </li>
                                    <li>
                                        <span>07</span>
                                        <p>불닭비빔밥 출시</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>깐풍도시락 출시</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>깐깐도시락 출시</p>
                                    </li>
                                    <li class="line">
                                        <span>03</span>
                                        <p>
                                            <span class="s_block">매일경제 2017 100대 프랜차이즈 6년 연속 수상</span>
                                            <span class="s_block">조선비즈 2017 한국의 가장 사랑받는 브랜드 대상 6년 연속 수상</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item20">
                            <div class="ht_wrap">
                                <h4>2016</h4>
                                <ul>
                                    <li>
                                        <p>야채가끼아게덮밥 출시</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>데미그라스함박스테이크 출시</p>
                                        <span>09</span>
                                    </li>
                                    <li class="line">
                                        <p>
                                            <span class="s_block">고등어조림도시락 출시</span>
                                            <span class="s_block">신촌연세로점 직영점 오픈</span>
                                        </p>
                                        <span>05</span>
                                    </li>
                                    <li>
                                        <p>나시고랭 출시</p>
                                        <span>02</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item19">
                            <div class="ht_wrap">
                                <h4>2015</h4>
                                <ul>
                                    <li>
                                        <span>07</span>
                                        <p>점보새우프리미엄도시락 출시</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>치킨제육도시락, 치킨불고기도시락 출시</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>불고기비빔밥, 제육강된장비빔밥 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item18">
                            <div class="ht_wrap">
                                <h4>2014</h4>
                                <ul>
                                    <li>
                                        <p>불고기김치볶음밥, 해피박스, 참치야채고추장, 돈치불고기도시락 출시</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>치킨마요 판매 1억2천5백만개 돌파</p>
                                        <span>09</span>
                                    </li>
                                    <li>
                                        <p>비비고샐러드우동, 흔들고치킨샐러드 출시</p>
                                        <span>07</span>
                                    </li>
                                    <li>
                                        <p>실속반찬 출시</p>
                                        <span>06</span>
                                    </li>
                                    <li>
                                        <p>폴리도시락 출시</p>
                                        <span>05</span>
                                    </li>
                                    <li>
                                        <p>나물밥 출시</p>
                                        <span>04</span>
                                    </li>
                                    <li>
                                        <p>불낙비빔밥 출시</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item17">
                            <div class="ht_wrap">
                                <h4>2013</h4>
                                <ul>
                                    <li>
                                        <span>09</span>
                                        <p>닭강정 출시</p>
                                    </li>
                                    <li>
                                        <span>08</span>
                                        <p>식자재 실명제 도입</p>
                                    </li>
                                    <li>
                                        <span>06</span>
                                        <p>열무강된장비빔밥 출시</p>
                                    </li>
                                    <li>
                                        <span>04</span>
                                        <p>샐러드 마요 / 쉐이크 샐러드 출시</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>돈치마요 출시</p>
                                    </li>
                                    <li class="line">
                                        <span>02</span>
                                        <p>
                                            <span class="s_block">뽀로로 도시락 출시</span>
                                            <span class="s_block">부산역앞점 직영점 오픈</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item16">
                            <div class="ht_wrap">
                                <h4>2012</h4>
                                <ul>
                                    <li>
                                        <p>찬차마요 커피사업 진출</p>
                                        <span>11</span>
                                    </li>
                                    <li>
                                        <p>강남역점 직영점 오픈</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>한솥도시락 가맹 600호점 돌파</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item15">
                            <div class="ht_wrap">
                                <h4>2011</h4>
                                <ul>
                                    <li>
                                        <span>03</span>
                                        <p>한솥도시락 가맹 500호점 돌파</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item14">
                            <div class="ht_wrap">
                                <h4>2009</h4>
                                <ul>
                                    <li>
                                        <span>06</span>
                                        <p>New Model 점포 리뉴얼</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item13">
                            <div class="ht_wrap">
                                <h4>2008</h4>
                                <ul>
                                    <li>
                                        <p>한솥 new BI·CI 도입</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>한솥도시락 가맹 400호점 돌파</p>
                                        <span>09</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item12">
                            <div class="ht_wrap">
                                <h4>2005</h4>
                                <ul>
                                    <li>
                                        <span>08</span>
                                        <p>도미뱃살덮밥, 고갈비도시락 출시</p>
                                    </li>
                                    <li>
                                        <span>05</span>
                                        <p>고추잡채덮밥 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item11">
                            <div class="ht_wrap">
                                <h4>2004</h4>
                                <ul>
                                    <li>
                                        <p>씨푸드마요덮밥 출시</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item10">
                            <div class="ht_wrap">
                                <h4>2003</h4>
                                <ul>
                                    <li>
                                        <span>10</span>
                                        <p>가끼아게덮밥 출시</p>
                                    </li>
                                    <li>
                                        <span>09</span>
                                        <p>치킨마요덮밥 출시</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>어린이 도시락 시리즈 출시</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>(주)한솥으로 법인 변경</p>
                                    </li>
                                    <li>
                                        <span>02</span>
                                        <p>호이궈로 도시락 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item9">
                            <div class="ht_wrap">
                                <h4>2002</h4>
                                <ul>
                                    <li>
                                        <p>한솥도시락 연수센터 오픈</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item8">
                            <div class="ht_wrap">
                                <h4>2001</h4>
                                <ul>
                                    <li>
                                        <p>마파두부밥 출시</p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>한솥도시락 가맹 300호점 돌파</p>
                                        <span>03</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item7">
                            <div class="ht_wrap">
                                <h4>1999</h4>
                                <ul>
                                    <li>
                                        <span>05</span>
                                        <p>제육김치볶음, 제육김치 볶음 스페셜 도시락 출시</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>
                                            한솥도시락 가맹 200호점 돌파
                                        </p>
                                    </li>
                                    <li>
                                        <span>02</span>
                                        <p>황태구이, 스파게티 도시락 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item6">
                            <div class="ht_wrap">
                                <h4>1998</h4>
                                <ul>
                                    <li>
                                        <p>창립 5주년 기념메뉴(소갈비도시락) 출시</p>
                                        <span>07</span>
                                    </li>
                                    <li>
                                        <p>호남사업본부 개설</p>
                                        <span>03</span>
                                    </li>
                                    <li>
                                        <p>대구사업본부 개설</p>
                                        <span>02</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item5">
                            <div class="ht_wrap">
                                <h4>1997</h4>
                                <ul>
                                    <li class="line">
                                        <p>
                                            <span class="s_block">가을 신메뉴(오징어 덮밥, 장어구이도시락) 출시</span>
                                            <span class="s_block">한솥도시락 가맹 100호점 돌파</span>
                                        </p>
                                        <span>10</span>
                                    </li>
                                    <li>
                                        <p>스페셜 도시락 탄생</p>
                                        <span>09</span>
                                    </li>
                                    <li>
                                        <p>부산사업본부 개설</p>
                                        <span>01</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item4">
                            <div class="ht_wrap">
                                <h4>1995</h4>
                                <ul>
                                    <li>
                                        <span>11</span>
                                        <p>대전사업본부(중부사업본부) 개설</p>
                                    </li>
                                    <li>
                                        <span>03</span>
                                        <p>사위덮밥 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list right" id="ht_item3">
                            <div class="ht_wrap">
                                <h4>1994</h4>
                                <ul>
                                    <li>
                                        <span>04</span>
                                        <p>김치볶음밥, 치킨까스, 연어가자미, 도련님, 특선안주도시락 출시</p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list left" id="ht_item2">
                            <div class="ht_wrap">
                                <h4>1993</h4>
                                <ul>
                                    <li>
                                        <p>교대후문앞점 직영점 오픈</p>
                                        <span>12</span>
                                    </li>
                                    <li>
                                        <p>김치찌개 도시락 출시</p>
                                        <span>11</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="ht_list first" id="ht_item1">
                            <div class="ht_wrap">
                                <h4>1993</h4>
                                <ul>
                                    <li>
                                        <span>07</span>
                                        <p class="hi_tit">㈜한솥 1호점 오픈</p>
                                        <p class="hi_block"><!-- 1호점 오픈 종로구청앞 점 --> </p>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="history_progress"></div>
            </div>
            <!-- //history_list -->
        </div>
        <!-- //연혁 -->
    </section>
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">더 많은 이야기</h2>
    <ul>
        <li>
            <a href="story.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_story.jpg" alt="브랜드 스토리" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 스토리</h3>
                    <h3 class="h3_tit_o">브랜드 스토리</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="philosophy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_philosophy.jpg" alt="브랜드 철학" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 철학</h3>
                    <h3 class="h3_tit_o">브랜드 철학</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="legacy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_legacy.jpg" alt="브랜드 유산" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">브랜드 유산</h3>
                    <h3 class="h3_tit_o">브랜드 유산</h3>
                </figcaption>
            </figure>
        </li>
        </ul>
</div>
<!--// more_cont-->
<script type="text/javascript">
    $(document).ready(function () {
        var controller = new ScrollMagic.Controller();
        var history_progress  = $(".history_progress");
        setTimeout(function(){
            $(".hi_list_wrap li.ht_list").each(function(){
                var id = this.id,
                    name = "#"+id,
                    el = $(this);
                new ScrollMagic.Scene({
                    "triggerElement" : name,
                    offset: -800
                })
                .on("start", function (event) {
                    if(!$(".hi_list_wrap").hasClass("complete")) {
                        var idx = id.replace("ht_item" ,"");
                        var height = $(".history").height();
                        var top = el.position().top + 80;
                        setTimeout(function(){ el.addClass("on"); }, 1000);
                        if(idx == 1){
                            history_progress.addClass("complete");
                            history_progress.css({easing: 'snap', top: -280, duration: 1000});
                        }else{
                            history_progress.css({easing: 'snap', top: -height+top+72, duration: 500});
                        }
                    }
                })
                .addTo(controller);
            })
        }, 100);
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