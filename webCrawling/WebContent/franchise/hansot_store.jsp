<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="c14d230a-1550-44ed-99f5-7bae85c218c3" /><title>Why 한솥 가맹점</title>

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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.franchise.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <script type="text/javascript" src="assets/js/jquery.viewportchecker.min.js"></script>

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
<div id="wrap" class="bg_w">
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
                <h1><a href="first_home.do"><span class="blind">한솥</span></a></h1>
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
    <div id="container" class="sub_page bg">
        
<div class="content franchise">
    <!-- group_order -->
    <section class="hansot_store">
        <!-- 상단bg 영역 -->
        <div class="hs_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //상단bg 영역 -->
        <!-- section01 -->
        <div class="hs_wrap section_01">
            <p class="menu_tit mo_version">Why 한솥 가맹점</p>
            <div class="hs_cont mo_tr">
                <h2 class="h2_tit">
                    <span class="s_block">10년, 20년</span>
                    <span class="s_block">대를 잇는 가족 사업</span>
                </h2>
                <div class="hs_txt">
                    <p>
                        <span class="s_block">창업, 그것은 성공과 돈만을 좇다 보면 성공도 돈도 얻을 수 없습니다.</span>
                        <span class="s_block">한솥이 성공한 이유는 본사만의 이익보다 모두의 이익을 언제나 우선시 했기 때문입니다.</span>
                        <span class="s_block">따끈한 한 끼로 사회에 공헌하겠다는 철학을 지켜왔기 때문입니다.</span>
                        <span class="s_block">외식종합기업에 대한 신념과 정직한 경영으로 신뢰받는 외식문화를 만들어가고 있기</span>
                        <span class="s_block">때문입니다. 착한 사람과 함께라면 착한 한솥은 언제나 동행할 준비가 되어 있습니다.</span>
                    </p>
                </div>
            </div>
        </div>
        <!-- //section01 -->
        <!-- section02 -->
        <div class="hs_wrap section_02">
            <div class="hs_cont">
                <div class="hs_img mo_tr">
                    <img src="assets/images/franchise/fr_img_01.jpg" alt="한솥이어야 하는 세가지 이유 이미지" />
                </div>
                <div class="hs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        <span class="s_block">한솥이어야 하는</span>
                        <span class="s_block">세 가지 이유</span>
                    </h3>
                    <div class="hs_txt">
                        <p>
                            <strong>트렌드에 영향을 받지 않습니다</strong>
                            <span class="s_block">
                                유독 트렌드에 따라 성패를 달리하는 외식업! 한솥은 유행과 상관없이 꾸준히 성과를 내는 스테디셀러 프랜차이즈입니다. 가맹점 중  30%가 넘는 가맹점이 10년 이상 점포를 운영하고 있는 한솥. 한솥은 가족이 대를 이어 진행할 수 있는 사업입니다.
                            </span>
                        </p>
                        <p>
                            <strong>고객과 점주님의 이익을 먼저 생각합니다</strong>
                            <span class="s_block">
                                언제나 가맹점주의 이익을 우선으로 생각합니다. 안정적인 물류망과 높은 가성비의 식재료를 통해 모든 가맹점주가 만족할 수 있도록 노력합니다. 수많은 가맹점주로부터 한솥은 착하다는 말을 듣는 이유입니다.
                            </span>
                        </p>
                        <p>
                            <strong>투명하고 정직합니다</strong>
                            <span class="s_block">
                                한솥은 창업 이래 가맹점과 본사의 법적 문제가 단 1건도 없었습니다. 이익을 기준으로 가맹점을 바라보는 본사의 관점이 아닌 신뢰를 기준으로 미래를 함께 하는 부모의 마음으로 임하기 때문입니다. 그것이 한솥의 가맹점이 꾸준히 늘어나는 이유 중 하나입니다.
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //section02 -->
        <!-- section03 -->
        <div class="hs_wrap section_03">
            <div class="hs_cont">
                <div class="hs_txt_wrap">
                    <!-- h3 -->
                    <div class="hs_txt h3">
                        <h3 class="h3_tit fz_01">
                            <span class="s_block">25년 노하우로 지원해 드립니다.</span>
                        </h3>
                        <p>
                            <span class="s_block">예비창업점주님은 가맹본부의 꾸준한 상품 개발, 지원시스템을 보고 </span>
                            <span class="s_block">성공 파트너를 결정하시기 바랍니다.</span>
                        </p>
                    </div>
                    <!-- //h3 -->
                    <!-- list_01 -->
                    <div class="hs_txt hs_01">
                        <h4 class="h4_tit">
                            <span class="s_block">가맹점 중심</span>
                            <span class="s_block">경영지도 제도</span>
                        </h4>
                        <p>
                            <span class="s_block">SUPERVISOR(점포운영관리자)를 통해 전문적인</span>
                            <span class="s_block">점포운영과 경영지도를 통해서 가맹점의 매출과 이익의</span>
                            <span class="s_block">극대화를 위하여 도와드립니다.</span>
                        </p>
                    </div>
                    <!-- //list_01 -->
                    <!-- list_02 -->
                    <div class="hs_txt hs_02">
                        <h4 class="h4_tit">
                            <span class="s_block">정기 가격 할인행사 시</span>
                            <span class="s_block">식재료, 포장재 지원</span>
                        </h4>
                        <p>
                            <span class="s_block">1월, 8월에 실시하는 정기할인행사시 할인 기간동안</span>
                            <span class="s_block">가맹점에 공급되는 식재료 및 용기포장재가</span>
                            <span class="s_block">3~10%(일부품목 제외) 할인되어 공급되므로 가맹점은</span>
                            <span class="s_block">할인에 따른 추가 원가 부담이 없습니다.</span>
                        </p>
                    </div>
                    <!-- //list_02 -->
                    <!-- list_03 -->
                    <div class="hs_txt hs_03">
                        <h4 class="h4_tit">
                            <span class="s_block">인쇄물(전단지,</span>
                            <span class="s_block"> 포스터 등) 무상지원</span>
                        </h4>
                        <p>
                            <span class="s_block">신메뉴 출시와 각종행사 실시때마다 접지 전단지(4,000매),</span>
                            <span class="s_block">포스터 등을 제작하여 무상지원 해드립니다.</span>
                        </p>
                    </div>
                    <!-- //list_03 -->
                    <!-- list_04 -->
                    <div class="hs_txt hs_04">
                        <h4 class="h4_tit">
                            <span class="s_block">물품대금 결제용</span>
                            <span class="s_block"> 마이너스 통장</span>
                        </h4>
                        <p>
                            <span class="s_block">한솥과 하나은행이 제휴하여 한솥 가맹점이 되시면</span>
                            <span class="s_block">물품대금 결제를 원활하게 하실 수 있도록 500만원</span>
                            <span class="s_block">한도의 마이너스 통장을 개설해 드립니다.</span>
                        </p>
                    </div>
                    <!-- //list_04 -->
                    <!-- list_05 -->
                    <div class="hs_txt hs_05">
                        <h4 class="h4_tit">
                            <span class="s_block">믿을 수 있는 최고 품질의</span>
                            <span class="s_block"> 식재료</span>
                        </h4>
                        <p>
                            <span class="s_block">HACCP인증을 받은 업체로부터 믿을 수 있는 최고</span>
                            <span class="s_block">품질의 재료를 엄선하고 납품받고 있습니다. 또한</span>
                            <span class="s_block">안정적인 가격으로 재료를 납품하고 있으며 철저한</span>
                            <span class="s_block">검품, 검수 시스템으로 품질 및 위생관리에 만전을 기하고 있습니다.</span>
                        </p>
                    </div>
                    <!-- //list_05 -->
                    <!-- list_06 -->
                    <div class="hs_txt hs_06">
                        <h4 class="h4_tit">
                            <span class="s_block">한솥 종합 매뉴얼집 ·</span>
                            <span class="s_block">월간 소식지 ‘한솥밥’</span>
                        </h4>
                        <p>
                            <span class="s_block">20년간 축적된 한솥의 모든 노하우를 담은 종합</span>
                            <span class="s_block">매뉴얼집을 제공하여 성공 창업을 지원해 드리며 월간</span>
                            <span class="s_block">소식지를 통해 프로모션 및 신메뉴 등 기타 중요한 정보를</span>
                            <span class="s_block">제공해 드립니다.</span>
                        </p>
                    </div>
                    <!-- //list_06 -->
                    <!-- list_07 -->
                    <div class="hs_txt hs_07">
                        <h4 class="h4_tit">연수 교육 제도</h4>
                        <p>
                            <span class="s_block">음식업 경험이 없는 분이라도 훌륭한 경영주가 되실 수</span>
                            <span class="s_block">있도록 연수 센터 강의와  직영점 실습을 통해 기업이념,</span>
                            <span class="s_block">위생, 조리, 접객, 판촉, 회계 등 모든 분야를 3주동안</span>
                            <span class="s_block">체계적으로 교육해 드립니다.</span>
                        </p>
                    </div>
                    <!-- //list_07 -->
                </div>
            </div>
        </div>
        <!-- //section03 -->
    </section>
    <!-- //group_order -->
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
    $(document).ready(function() {
        //contents viewportChecker
        $('.bs_cont').addClass("hidden").viewportChecker({
            classToAdd: 'visible animated fadeInUp',
            offset: 120
        });
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