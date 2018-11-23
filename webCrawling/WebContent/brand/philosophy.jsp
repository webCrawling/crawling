<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 
	*meta tag 
	html문서 자체의 특성을 담고 있다.
	 -->
	<!-- 
	*인코딩 방식 선언하기
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	HTML4에서 사용하는 인코딩 설정방식이다.
	HTML5에서 사용하는 인코딩 설정방식이 더 간결하다.
	 -->
    <meta charset=utf-8 />
    
    <!-- 
    *viewport 화면상 화상 표시 영역
    데스크탑에 기반하여 설계된 웹페이지를 모바일 환경에서도 최적화시키기 위해
    페이지의 너비나 배율을 설정해야 한다. 
    -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- 
    *og tag Open Graph
      SNS 상에서 웹 사이트의 URL링크 공유 시 제목,내용,이미지 미리보기를 만들 때 사용하는 태그
    -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="한솥 웹사이트 클론" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="../assets/images/brand/brand_m_visual_01.jpg" />
    <meta property="og:description" content="3조가 만들었다!" />
   
	<!--
	*meta tag 속성 name,content
	검색엔진에게 문서의 내용을 요약해 주는 역할
	 -->
    <meta name="한솥" content="한솥메뉴,주문" />
    
    <title>브랜드 철학</title>

    
    <!-- 
    link tag를 사용해서 외부문서와 연결하기
    rel 속성:현재문서와 연결문서의 관계 
    type 속성:연결문서의 타입(content type) 
     -->
    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/ui.brand.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />
     <!-- 
    <style>태그를 사용해서 css 코드 작성하기
      -->
     
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

<!-- 
외부 js파일을 client-side에서 동작시키기 
그렇다면 link tag 를 사용해서 js파일을 가져와 볼수도 있을까?
보통 link tag의 경우 href속성을 통해.css 파일을 연결하는 것이고 (외부파일을 읽으면서 페이지로딩을 병렬처리) 
script tag는 src속성을 통해  .js 파일을 가져와 바로 실행하는 코드이다.
(src에 있는 파일을 읽은 후 페이지로딩 그래서 js파일로드하는것을 페이지 마지막에서 하는 걸 권장한다.) 
 -->
 
<script type="text/javascript" src="../assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="../assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="../assets/js/ui.common.js"></script>
<script type="text/javascript" src="../assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="../assets/js/TweenMax.min.js"></script>
<script type="text/javascript" src="../assets/js/tss.js"></script>
<script type="text/javascript" src="../assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="../assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="../assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="../assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="../assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="../assets/js/fileupload/jquery.fileupload.js"></script>
<script type="text/javascript" src="../assets/js/hansot.common.js"></script>

<!-- naver map api -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script>
<!-- moment js api -->
<script type="text/javascript" src="../assets/js/moment.js"></script>
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
</script>

    <script type="text/javascript" src="../assets/js/jquery.viewportchecker.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics 
    async 속성 : 스크립트의 비동기 실행
     브라우저가 async 속성을 만나면 스크립트 실행을 뒤로 미루고 우선 스크립트 파일의 수신과 HTML 문서의 파싱에 집중한다. 
     외부 스크립트 파일의 수신이 완료되었을 때 스크립트를 실행시킨다.
    -->
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
    <!-- 
    noscript : 스크립트 미지원을 표시한다
     -->
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
                    <a href="/login">로그인</a>
                    </li>
                <li>
                    <a href="/join/join_step1">회원가입</a>
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
                        <li>
                            <a href="/login">로그인</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">회원가입</a>
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
                                    <li class="active"><a href="./story.jsp">브랜드 스토리</a></li>
                                    <li><a href="philosophy.jsp">브랜드 철학</a></li>
                                    <li><a href="./legacy.jsp">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./esg.jsp">ESG경영이란?</a></li>
                                    <li><a href="./philosophy.jsp">환경보호(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">사회공헌(Social)</a></li>
                                    <li><a href="./esg.jsp">윤리경영(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">전체메뉴</a></li>
                                    <li><a href="../menu/material.jsp">식재료 이야기</a></li>
                                    <li><a href="../menu/chancha.jsp">페루찬차마요커피</a></li>
                                    <li><a href="../menu/menu_order.jsp">단체 주문</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">이 달의 이벤트</a></li>
                                    <li><a href="../event/store_event_list.jsp">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why 한솥 가맹점</a></li>
                                    <li><a href="../franchise/success.jsp">성공수기</a></li>
                                    <li><a href="../franchise/process.jsp">창업개설절차</a></li>
                                    <li><a href="../franchise/calc.jsp">예상 창업 비용</a></li>
                                    <li><a href="../franchise/qna.jsp">창업문의</a></li>
                                    <li><a href="../franchise/briefing.jsp">창업설명회 일정·신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">한솥의 약속</a></li>
                                    <li><a href="../hansot/vision.jsp">한솥의 비전</a></li>
                                    <li><a href="../hansot/history.jsp">연혁&amp;수상</a></li>
                                    <li><a href="../hansot/news_list.jsp">한솥 NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">오시는 길</a></li>
                                    <li><a href="../footer/faq_list.jsp">고객센터</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">인재채용</a></li>
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
        
<div class="content brand">
    <!-- group_order -->
    <section class="brand_philosophy">
        <!-- 상단bg 영역 -->
        <div class="brand_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //상단bg 영역 -->
        <!-- section01 -->
        <div class="bs_wrap section_01">
            <p class="menu_tit mo_version">브랜드 철학</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">
                    <span class="s_block">든든한 솥밥을 위해</span>
                    <span class="s_block">지키고, 키워가는 것들</span>
                </h2>
                <div class="bs_txt">
                    <p>
                        <span class="s_block">한솥은 ‘따끈한 도시락으로 지역사회에 공헌한다’ 라는 기업이념 아래, 고객이익을 최우선으로 하며</span>
                        <span class="s_block">엄선된 좋은 식재료만 사용하는 대한민국 외식종합기업 시장을 리드하는 글로벌 종합외식기업입니다.</span>
                    </p>
                </div>
            </div>
        </div>
        <!-- //section01 -->
        <!-- section02 -->
        <div class="bs_wrap section_02">
            <div class="bs_cont">
                <div class="bs_img mo_tr">
                    <img src="../assets/images/brand/brand_ph_img_01.jpg" alt="한솥밥 이미지" />
                </div>
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        따뜻<em class="emphasis">한 솥</em>밥
                    </h3>
                    <div class="bs_txt">
                        <p>
                            <span class="s_block">그 옛날, 마을잔치가 열리면 우리의 어머니들은 모두 솥을 걸었습니다.</span>
                            <span class="s_block">그 솥밥을 나눠 먹으며, 우리는 친구가 되었고, 추억을 나눠 가졌지요.</span>
                            <span class="s_block">따끈한 한 끼를 중심으로 친구가 되고, 연인이 되고, 가족의 마음에</span>
                            <span class="s_block">온기가 넘치는 한 솥. </span>
                            <span class="s_block">저희는 그 따끈한 한 끼의 힘을 믿습니다.</span>
                        </p>
                        <p>
                            <span class="s_block">언제나 가격 이상의 가치를 누리실 수 있도록 접객 서비스와 청결까지</span>
                            <span class="s_block">늘 고민하며 갓 지은 솥밥과 같은 한 끼를 대접하겠습니다.</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //section02 -->
        <!-- section03 -->
        <div class="bs_wrap section_03">
            <div class="bs_cont">
                <div class="bs_img mo_tr">
                    <img src="../assets/images/brand/brand_ph_img_02.jpg" alt="한솥밥 이미지" />
                </div>
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        정직<em class="emphasis">한 솥</em>밥
                    </h3>
                    <div class="bs_txt">
                        <p>
                            <span class="s_block">한솥은 손해를 감수하고서라도 원칙과 신념을 지킵니다. 언제나 </span>
                            <span class="s_block">고객에게 드릴 수 있는 가치를 최우선으로 삼기에 고객이 믿고</span>
                            <span class="s_block">사랑하는 기업으로 성장할 수 있었지요. </span>
                            <span class="s_block">그것이 한솥 도시락의 가격이 늘 착한 이유입니다. </span>
                        </p>
                        <p>
                            <span class="s_block">또한 건전하고 투명한 기업 운영을 통해 가맹점주에게 변함없이 사랑</span>
                            <span class="s_block">받는 기업이기도 합니다. 고객에게, 가맹점주에게 무한한 신뢰와</span>
                            <span class="s_block">지속적인 사랑을 받는 것이 따뜻한 대한민국을 만들고,</span>
                            <span class="s_block">인류사회발전에 조금이라도 기여하는 일이라고 믿기 때문입니다.</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //section03 -->
        <!-- section04 -->
        <div class="bs_wrap section_04">
            <div class="bs_cont mo_tr">
                <div class="bs_img mo_tr">
                    <img src="../assets/images/brand/brand_ph_img_03.jpg" alt="한솥밥 이미지" />
                </div>
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        건강<em class="emphasis">한 솥</em>밥
                    </h3>
                    <div class="bs_txt">
                        <p>
                            <span class="s_block">한솥은 식재료 앞에서는 한없이 까탈스럽습니다.</span>
                            <span class="s_block">신선하지 않아도, 합리적인 가격이 아니어도 한솥이 될 수 없습니다.</span>
                            <span class="s_block">건강하지 않으면 결코 한솥이 될 수 없습니다.</span>
                        </p>
                        <p>
                            <span class="s_block">외식기업은 그 어떤 기업보다도 더 고객님을 소중하게 생각해야 한다는</span>
                            <span class="s_block">것이 한솥의 신념입니다. </span>
                            <span class="s_block">한솥의 도시락이 건강해야, 고객 또한 건강해질 수 있다는 믿음,</span>
                            <span class="s_block">그것이 한결 같은 한솥의 초심입니다.</span>
                        </p>
                    </div>
                    <!-- btn -->
                    <div class="btn_wrap">
                        <span class="btn btn_st04">
                            <a href="../menu/material" class="c_05">식재료 이야기</a>
                        </span>
                    </div>
                    <!-- //btn -->
                </div>
            </div>
        </div>
        <!-- //section04 -->
    </section>
    <!-- //group_order -->
</div>

<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">더 많은 이야기</h2>
    <ul>
        <li>
            <a href="../hansot/vision.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_vision.jpg" alt="한솥의 비전" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥의 비전</h3>
                    <h3 class="h3_tit_o">한솥의 비전</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/promise.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_hansot.jpg" alt="한솥의 약속" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥의 약속</h3>
                    <h3 class="h3_tit_o">한솥의 약속</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/news_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_news.jpg" alt="한솥 NEWS" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥 NEWS</h3>
                    <h3 class="h3_tit_o">한솥 NEWS</h3>
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
                <li class="first_be off"><a href="../footer/incruit.jsp">인재채용</a></li>
                <li class="off"><a href="../footer/partners.jsp">협력업체등록</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">공지사항</a></li>
                <li><a href="../footer/faq_list.jsp">고객 센터</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>개인정보취급방침</strong></a></li>
                <li><a href="../footer/agreement.jsp">이용약관</a></li>
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