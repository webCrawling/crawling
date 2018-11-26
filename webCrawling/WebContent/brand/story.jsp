<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <meta property="og:image" content="assets/images/brand/brand_m_visual_01.jpg" />
    <meta property="og:description" content="3조가 만들었다!" />
   
	<!--
	*meta tag 속성 name,content
	검색엔진에게 문서의 내용을 요약해 주는 역할
	 -->
    <meta name="한솥" content="한솥메뉴,주문" />
    
    <title>브랜드 스토리</title>

    
    <!-- 
    link tag를 사용해서 외부문서와 연결하기
    rel 속성:현재문서와 연결문서의 관계 
    type 속성:연결문서의 타입(content type) 
     -->
    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
	<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
	<link rel="stylesheet" type="text/css" href="assets/css/ui.brand.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
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
</script>

    <script type="text/javascript" src="assets/js/jquery.viewportchecker.min.js"></script>

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
        
<div class="content brand">
    <!-- group_order -->
    <section class="brand_story">
        <!-- 상단bg 영역 -->
        <div class="brand_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //상단bg 영역 -->
        <!-- section01 -->
        <div class="bs_wrap section_01">
            <p class="menu_tit mo_version">브랜드 스토리</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">착한 솥밥 이야기</h2>
                <div class="bs_txt">
                    <p>
                        종로에  8평짜리 1호점을 냈을 때의 이야기입니다. 배달 없이 시작하겠다는 소리에 모두가 손사래를 치며 말렸습니다.
                        테이크아웃만으로는 성공하기 힘들다고 했죠. 하지만, 진심이 담긴 도시락 앞에 사람들은 줄을 서며 기다렸습니다.
                        더 착한 가격으로, 더 값진 가치를 담아, 더 많은 사람들에게 돌려드리고 싶다는 그 진심 말입니다.
                    </p>
                    <p>
                        그 진심은 1993년 1호점을 시작으로 1997년 100호점,
                        <span class="s_block">
                        2012년 600호점을 넘어 2017년 700호점까지 이어지고 있습니다.
                        그리고 1억 5천만 그릇의 치킨마요로, 7000만 그릇의 동백도시락으로, 200여종의 새로운 메뉴로 6억 3천만개의 도시락으로
                        고객에게 찾아가 따끈한 한끼가 되었습니다.
                        </span>
                    </p>
                    <p>
                        그동안 위기가 없었던 것만은 아닙니다.
                        IMF때 물가가 급등하면서 도시락 가격을 인상해야만 하는 상황에 직면했죠.
                        하지만 그것은 우리의 신념과 맞지 않았고 초심을 잃고 싶지 않았습니다.
                        그 진심에 모든 가맹점주께서 뜻을 모아 주셨고 지금 당장은 손해를 보더라도 힘든 고객들을 위해 가격을 유지하기로 결정했습니다.
                        더 착한 가격으로,더 많은 사람들에게 돌려드리고 싶다는 초심을 선택한 것이죠. 이 선택은 옳았습니다.
                    </p>
                    <p>
                        <span class="s_block">IMF가 끝날 무렵, 한솥은 고객에게,</span>
                        <span class="s_block">그리고 가맹점주들에게 더 사랑 받는 브랜드가 되어 있었으니까요</span>
                    </p>
                </div>
            </div>
        </div>
        <!-- //section01 -->
        <!-- section02 -->
        <div class="bs_wrap section_02">
            <div class="bs_cont">
                <div class="bs_img mo_tr">
                    <img src="assets/images/brand/brand_img_01.jpg" alt="갓 지은 한끼 이미지" />
                </div>
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        <span class="s_block">갓 지은 진심 한 끼에는</span>
                        <span class="s_block">힘이 있습니다</span>
                    </h3>
                    <div class="bs_txt">
                        <p>
                            <span class="s_block">한솥은 쌀의 맛과 가격을 위하여 정기적으로 전국 무세미 rpc의 쌀을 엄격한</span>
                            <span class="s_block">테스트를 통하여 선정하고 있습니다.</span>
                            <span class="s_block">김치는 땅 좋고 물 맑은 해남, 평창, 태백 등에서 재배한 배추에 국내산 고춧가루만,</span>
                            <span class="s_block">불고기는 청정 호주산 S등급, A등급의 목심만 사용하여 엄격한 품질관리를</span>
                            <span class="s_block">통해 최상의 품질을 유지합니다.</span>
                        </p>
                        <p>
                            <span class="s_block">또한, 점주교육을 통해 외식업에 대한 철학을 공유하며 따끈한 한 끼의 힘에</span>
                            <span class="s_block">대해 늘 고민합니다.</span>
                        </p>
                        <p>무엇보다도 이 세상 누구보다 도시락을 사랑합니다. </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //section02 -->
        <!-- section03 -->
        <div class="bs_wrap section_03">
            <div class="bs_cont">
                <div class="bs_img mo_tr">
                    <img src="assets/images/brand/brand_img_02.jpg" alt="변함없이 한결같은 한솥 이미지" />
                </div>
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        <span class="s_block">변함없이 한결같아서</span>
                        <span class="s_block">한솥입니다</span>
                    </h3>
                    <div class="bs_txt">
                        <p>
                            한솥의 한결같음은 도시락에 그치지 않습니다.
                            <span class="s_block">수많은 복지관과 보육원은 물론, 삼성서울병원을 비롯한 4개 의료기관을</span>
                            <span class="s_block">후원하고 있으며, 각종 국가행사 및 재해현장에 대한 지원에서 대학교</span>
                            <span class="s_block">장학금 기탁까지 사회공헌활동 또한 멈추지 않고 있습니다.</span>
                        </p>
                    </div>
                    <!-- btn -->
                    <div class="btn_wrap btn_more">
                        <span class="btn btn_st04">
                            <a href="social.go" class="c_05">사회공헌활동</a>
                        </span>
                    </div>
                    <!-- //btn -->
                </div>
            </div>
        </div>
        <!-- //section03 -->
        <!-- section04 -->
        <div class="bs_wrap section_04">
            <div class="bs_cont mo_tr">
                <div class="bs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        <span class="s_block">착한 솥밥이</span>
                        <span class="s_block">약속합니다</span>
                    </h3>
                    <div class="bs_txt">
                        <p>
                            <span class="s_block">한솥과 함께 한 수많은 고객과 가맹점주들께서 칭찬과 함께 하시는</span>
                            <span class="s_block">말씀이 있습니다. 한솥은 참 착하다는 말입니다.</span>
                        </p>
                        <p>
                            <span class="s_block">고맙습니다.</span>
                            <span class="s_block">한솥 한 그릇으로 우정을 나누고, 사랑을 키울 수 있기를</span>
                            <span class="s_block">바라는 한솥의 마음이 더 따뜻해집니다.</span>
                            <span class="s_block">따끈한 한 끼로 세상의 온기가 되겠다는 초심,</span>
                            <span class="s_block">결코 잃지 않겠습니다.</span>
                        </p>
                    </div>
                    <!-- btn -->
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
            <a href="vision.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_vision.jpg" alt="한솥의 비전" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥의 비전</h3>
                    <h3 class="h3_tit_o">한솥의 비전</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="promise.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_hansot.jpg" alt="한솥의 약속" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥의 약속</h3>
                    <h3 class="h3_tit_o">한솥의 약속</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="news_list.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_news.jpg" alt="한솥 NEWS" />
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