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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="6c2568a4-599f-481b-8bf7-b42ae0626cec" /><title>사회공헌활동</title>

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
                <h1><a href="/"><span class="blind">한솥</span></a></h1>
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
    <section class="social">
        <!-- 사회공헌활동 -->
        <div class="social_wrap tab_st01">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01">사회공헌활동</h2>
            </div>
            <!-- //title -->
            <!-- social_list -->
            <div class="detail_wrap mo_version">
                <!-- sub_tit -->
                <div class="so_sub_tit">
                    <p class="fz_02">
                        <span class="s_block">“따끈한 도시락으로 지역사회에 공헌한다” </span>
                        <span class="s_block">라는 기업이념 아래 다양한 사회공헌활동을 진행하고 있습니다.</span>
                    </p>
                </div>
                <!-- //sub_tit -->
                <!-- list -->
                <div class="news_list_wrap">
                    <!-- 사회취약계층 지원 -->
                    <div class="list_box box_01">
                        <p class="list_title">사회취약계층 지원</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_10.jpg" alt="다운복지관 도시락 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">다운복지관 도시락 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    다운복지관은 발달장애인 특성화 복지관으로 다운인이 건강한 인간, 높은 가치를 가진 인간으로 살아갈 수 있도록 지원하는 단체입니다. 한솥에서는 따뜻한 이웃사랑의 활동에 힘이 되고자 다운복지관 행사에 정기적으로 도시락을 후원하고 있습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_11.jpg" alt="혜심원 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">혜심원 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    혜심원은 1929년 시작된 아동 양육시설로 고아 등 유아에서 고등학생까지 18세 미만 55명의 아동이 생활하고 있는 보육시설입니다. 정부지원만으로 운영에 어려움을 겪고 있어, 한솥에서는 후원금과 도시락을 정기적으로 기부해 ‘따끈한 도시락으로 지역사회에 공헌한다.’ 라는 경영이념을 실천하고 있습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_08.jpg" alt="사랑의 쌀 나눔운동본부" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">사랑의 쌀 나눔운동본부 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    홀몸어르신, 노숙인, 장애인들 ,외롭고 소외된 분들에게 무료급식을 제공하는 사랑의 밥차기지가 화재로 폐허가 되어, 당장 사랑의 쌀 나눔운동본부의 무료급식이 중단될 상황에 처해 한솥도시락에서는 바로 도시락 750인분을 지원, 지역사회의 나눔을 이어갈 수 있도록 후원하였습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_07.jpg" alt="강남복지재단" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">강남복지재단 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    강남구는 서울시 25개 자치구 기초생활 수급자가 8번째로 많은 곳으로 2014년 10월 1일 정식 출범하였습니다. 한솥도시락은 빈부 격차를 줄이고 지역사회의 복지 사각지대를 해소하고자 강남 복지 재단 운영기금을 후원하고 있습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                            <!-- 5 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_01.jpg" alt="사랑의 열매" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">사회복지공동모금회 사랑의열매 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    한솥은 고객과 함께하는 기부문화를 만들어 소외된 이웃들에게 큰 사랑을 전달하고자 매년 12월 기부행사를 진행하고 있습니다. 2015년에는 ‘만원의 행복, 100원의 사랑’ 행사를 통해 1,145만 7,900원을, 2016년 12월에는 “2016년 신메뉴 사은행사” 를 통해 2000만원을 사회복지 공동모금회(사랑의 열매)에 기부하였습니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //5 -->
                        </ul>
                    </div>
                    <!-- //사회취약계층 지원 -->
                    <!-- 불우환자 치료기금 및 연구기금 후원 -->
                    <div class="list_box box_02">
                        <p class="list_title">
                            <span class="s_block">불우환자 치료기금 및 연구기금 후원</span>
                            <span class="s_block">(국내 주요 의료기관)</span>
                        </p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_02.jpg" alt="삼성서울병원 후원" /><!-- 2017.10.26 텍스트 수정 -->
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">삼성서울병원 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2012년부터 해마다 한솥에서는 질병으로 고통받는 사람들을 위한 국민 보건 향상을 위해 서울 삼성병원에 불우환자 치료 기금 및 심장 뇌혈관 병원 발전기금을 후원함으로, 다양한 사회 기부 활동을 실천해 나가고 있습니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_03.jpg" alt="세브란스" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">연세의료원 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2014년부터 한솥에서는 세브란스 家의 나눔을 실천하고 있는 연세의료원에 의료원 발전기금을 후원하여 암, 희귀질환 치료사업, 의료선교사업 등 사회공헌이라는 시업의 사회적 소명을 실천하고 있습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_04.jpg" alt="서울아산병원 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">서울아산병원 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2015년 한솥은 “우리 사회의 가장 불우한 이웃을 돕는다” 는 아산재단의 설립취지에 동참하고자 서울아산병원에 불우 환자  치료기금 및 정형외과 연구기금에 후원하였습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_05.jpg" alt="국립암센터" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">국립암센터 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    국립암센터는 암의 예방과 조기진단을 위한 홍보, 교육, 검진 및 연구사업 및 암관련 국내, 외 학술교류와 학술대회를 지원하는 기관입니다. 한솥은 2016년 12월 30일 국립암센터 발전기금으로 1,500만원을 폐암연구에 기부하여 암 걱정없는 세상을 만들어 인류 사회 발전에 기여하는 경영이념을 실천하였습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                        </ul>
                    </div>
                    <!-- //불우환자 치료기금 및 연구기금 후원 -->
                    <!-- 저소득 교육지원 -->
                    <div class="list_box box_03">
                        <p class="list_title">저소득 교육지원</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_06.jpg" alt="서울대학교" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">서울대학교 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    한솥에서는 서울대학교 대학원생과 학부생에게 2016년부터 2019년까지 매 학기당 장학금을 전달하여 저소득층 학생들의 학업을 장려하고 외식산업 인재 육성에 앞장서고 있습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                        </ul>
                    </div>
                    <!-- //저소득 교육지원 -->
                    <!-- 기타 공익 사업 후원 -->
                    <div class="list_box box_03">
                        <p class="list_title">기타 공익 사업 후원</p>
                        <ul>
                            <!-- 1 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_14.JPG" alt="서울로 7017 공감나눔 축제" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">서울로 7017 공감나눔 축제</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    서울로 7017 공감나눔 축제는 장애인과 비장애인이 함께 하는 어울림 행사입니다. 한솥은 함께 사는 세상을 만드는데 노력하는 서울시에 힘을 보태기 위해 도시락을 후원하였습니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //1 -->
                            <!-- 2 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_15.JPG" alt="대한적십자사" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">대한적십자사</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    대한적십자사에 H스페셜티 카페라떼 43,560개를 기부하였습니다. 한솥은 독거노인들에게 따뜻한 위로가 되는 사회, 헌혈자들을 격려함으로써 훈훈한 인정이 넘치는 사회를 이뤄나가기를 희망합니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //2 -->
                            <!-- 3 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_12.jpg" alt="굿시즈 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">굿시즈 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    굿시즈는 청소년 멘토링을 통해 건강하고 행복한 대한민국 사회를 만들고자 설립된 비영리 단체입니다. 한솥도시락은 청소년들이 올바른 성장에 도움이 되고자 도시락을 후원하였습니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //3 -->
                            <!-- 4 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_09.jpg" alt="한일축제한마당 행사 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">한일축제한마당 행사 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    ‘한일축제 한마당’은 수만 명의 한국인과 일본인이 하나가 되어 만들어가는 최대 규모의 한일교류 행사입니다. 이를 통해 한일 문화의 차이를 더 이해하고 서로를 더 존중하는 계기가 되고 있습니다. 한솥에서는 ‘한일축제 한마당’ 행사에 도시락 후원들 통해 한일 양국 간 우호친선을 위한 성공적인 행사 개최를 지원하고 있습니다.

                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //4 -->
                            <!-- 5 -->
                            <li>
                                <div class="news_list">
                                    <div class="news_visual">
                                        <img src="assets/images/hansot/so_img_13.jpg" alt="페루찬차마요시 정흥원 사장 후원" />
                                    </div>
                                    <div class="news_txt">
                                        <h3 class="h3_tit fz_02">페루찬차마요시 정흥원 사장 후원</h3>
                                        <div class="so_txt_wrap">
                                            <!-- mobile_btn -->
                                            <a href="#none" class="so_open_btn"/>내용보기</a>
                                            <!-- //mobile_btn -->
                                            <div class="so_txt_cont">
                                                <p class="story_txt">
                                                    2012년 5월 방영된 KBS 글로벌 성공시대를 통해 인연이 되어, 한솥에서 페루 찬차마요 정흥원 시장님을 후원하게 되었으며, 이후 페루 찬차마요시 가난한 영세농민의 커피를 수출하고자 하는 정 사장님의 소원을 이루기 위해 한솥에서는 매년 찬차마요 커피를 수입해 판매하고 있습니다. 한솥에서 수입하는 커피 수익 금액 일부는 찬차마요시에 기부되고 있으며, 도로정비 및 커피시설 건설을 위한 중장비 구매를 위해 5만불을 지원하였습니다.
                                                </p>
                                                <!-- mobile_btn -->
                                                <a href="#none" class="so_close_btn"/>닫기</a>
                                                <!-- //mobile_btn -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <!-- //5 -->
                        </ul>
                    </div>
                    <!-- //기타 공익 사업 후원 -->
                </div>
                <!-- //list -->
            </div>
            <!-- //social_list -->
        </div>
        <!-- //사회공헌활동 -->
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