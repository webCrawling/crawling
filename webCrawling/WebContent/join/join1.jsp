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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3a1f9029-2dc0-42ff-bbc3-227a8384a395" /><title>한솥도시락 > 회원가입</title>
    
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

    

    <link rel="stylesheet" type="text/css" href="assets/css/ui.join.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.min.css"/>

<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
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
                                    <li><a href="faq_list.go">고객센터</a></li>
                                    <li class="h_last"><a href="incruit.go">인재채용</a></li>
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
        
<div class="content join">
    <section class="join_step_01 mo_version">
        <!-- 회원가입_약관동의 -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">회원가입</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">약관동의</h3>
                    <!-- pc -->
                    <p class="pc_s_block">
                        <span class="s_block">회원가입을 위해서 <em class="emphasis">이용약관 및</em> </span>
                        <span class="s_block"> <em class="emphasis">개인정보 수집 및 이용</em>에 대한</span>
                        <span class="s_block">안내를 읽고 <em class="emphasis">동의</em>해주세요.</span>
                    </p>
                    <!-- //pc -->
                    <!-- mobile -->
                    <p class="mo_s_block">
                        <span class="s_block">회원가입을 위해서</span>
                        <span class="s_block"><em class="emphasis">이용약관 및 개인정보 수집 및 이용</em>에 대한</span>
                        <span class="s_block">안내를 읽고 <em class="emphasis">동의</em>해주세요.</span>
                    </p>
                    <!-- //mobile -->
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">

                    <form id="joinForm" name="joinForm" action="join2.jsp" method="post"><h4 class="h4_tit">이용약관</h4>
                    <div class="textarea_wrap cont">
                        <div class="cont_area">
                            <!-- 이용약관 cont-->
<div class="agree_cont">
    <!-- list01-->
    <div class="list">
        <h3 class="h3_tit">제1장 총칙</h3>
        <!-- 1조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 1 조 (목적)</h4>
            <p class="list_txt">이 약관은 (주)한솥(이하 "회사"라 합니다)이 제공하는 웹사이트 및 주문앱 서비스(이하 "서비스"라 합니다)의 이용조건 및 절차, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
        </div>
        <!-- //1조 -->
        <!-- 2조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 2 조 (약관의 효력과 변경)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 이 약관은 그 내용을 회사가 웹사이트 및 주문앱에 게시하거나 기타의 방법으로 회원에게 공지함으로써 그 효력이 발생합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회사는 합리적인 사유가 있는 경우 이 약관을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 게시 또는 공지함으로써 효력이 발생합니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회원은 변경된 약관에 동의하지 않으면 언제든지 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 동의한 것으로 간주됩니다. </p>
                </li>
            </ol>
        </div>
        <!-- //2조 -->
        <!-- 3조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 3 조 (약관 외 준칙)</h4>
            <p class="list_txt">이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 등에 관한 법률, 전자거래기본법, 전자서명법 및 기타 관련 법령의 규정에 따릅니다. </p>
        </div>
        <!-- //3조 -->
        <!-- 4조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 4 조 (용어의 정의)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1.회원 : 회사와 서비스 이용에 관한 계약을 체결하고 이용자 아이디를 부여 받은 자</li>
                            <li>
                                2.아이디(ID) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자, 숫자 또는 양자의 조합
                            </li>
                            <li>
                                3.비밀번호 : 회원의 본인 확인과 비밀 보호를 위해 회원 자신이 설정한 문자, 숫자 또는 양자의 조합
                            </li>
                            <li>
                                4.이용계약 : 서비스를 제공받기 위하여 이 약관으로 회사와 회원 간에 체결하는 계약
                            </li>
                            <li>
                                5.해지 : 회사 또는 회원이 서비스 개통 후 이용계약을 해약하는 것
                            </li>
                            <li>
                                6.운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람
                            </li>
                        </ol>
                    </div>

                </li>
                <li>
                    <p class="list_txt">② 제1항의 용어를 제외한 용어의 정의는 거래 관행 및 관계 법령에 따릅니다.</p>
                </li>
            </ol>
        </div>
        <!-- //4조 -->
    </div>
    <!-- //list01 -->
    <!-- list02-->
    <div class="list">
        <h3 class="h3_tit">제2장 서비스 이용계약의 체결 </h3>
        <!-- 5조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 5 조 (서비스의 구분)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사가 회원에게 제공하는 서비스는 기본서비스와 부가서비스 등으로 구분합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 서비스의 구체적인 종류와 내용은 회사가 이 약관 또는 공지, 이용 안내 등에서 별도로 정하는 바에 따릅니다.</p>
                </li>
            </ol>
        </div>
        <!-- //5조 -->
        <!-- 6조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 6 조 (이용계약의 성립)</h4>
            <p class="list_txt">이용계약은 서비스를 이용하고자 하는 자의 이용 신청에 대한 회사의 이용 승낙으로 성립합니다. </p>
        </div>
        <!-- //6조 -->
        <!-- 7조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 7 조 (이용 신청)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 서비스를 이용하고자 하는 자는 회사 웹사이트 및 주문앱의 "회원가입" 메뉴에서 회원 약관에 동의하면 회사 소정의 가입신청 양식에 요구하는 사항을 기재하고 '가입' 버튼을 누르면 됩니다.</p>
                    <p class="list_txt">② 회원 가입을 하면 이 약관에 동의하는 것으로 간주됩니다. </p>
                    <p class="list_txt">③ 온라인 가입 신청 양식에 기재하는 모든 회원 정보는 실제와 일치하는 데이터인 것으로 간주됩니다. 실명이나 실제와 일치하는 정보를 입력하지 않은 자는 법적인 보호를 받을 수 없으며 서비스의 이용을 제한 받을 수 있습니다.</p>
                </li>
            </ol>
        </div>
        <!-- //7조 -->
        <!-- 8조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 8 조 (이용 신청의 승낙)</h4>
            <p class="list_txt">회사는 제7조의 규정에 의한 이용 신청에 대하여 원칙적으로 즉시 이용 신청을 승낙하며, 이용 승낙의 사실을 회원에게 전자우편으로 통보합니다.</p>
        </div>
        <!-- //8조 -->
        <!-- 9조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 9 조 (이용 신청의 불승낙 및 보류)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 다음 각 호에 해당하는 경우 이용 신청에 대하여 승낙을 하지 않을 수 있습니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 가명, 차명, 허무인 명의 기타 이용신청자 본인의 실제 성명과 다른 명의에 의한 신청</li>
                            <li>
                                2. 이용 신청 시 가입신청 양식상의 기재 사항을 허위로 하여 신청한 경우
                            </li>
                            <li>
                                3. 이용신청자가 회사의 채무자로서 채무를 완제하지 않고 있는 경우
                            </li>
                            <li>
                                4. 이용신청자가 이 약관 제23조 제2항에 의거하여 이용계약이 해지된 적이 있는 경우
                            </li>
                            <li>
                                5. 기타 이용신청자의 귀책사유로 이용 승낙이 곤란한 경우
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">② 회사는 다음 각 호에 해당하는 경우에는 그 사유가 해소될 때까지 이용 승낙을 보류할 수 있으며, 그 사유를 웹사이트 및 주문앱에 공지합니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 설비의 여유가 없는 경우</li>
                            <li>
                                2. 기술 상 또는 업무 수행 상 지장이 있는 경우
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //9조 -->
        <!-- 10조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 10 조 (이용계약 사항의 변경)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회원은 이용 신청 시 기재한 사항이 변경되었을 경우에 온라인으로 수정합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회원의 이용 신청 시 기재사항의 미변경 또는 허위 변경으로 인하여 발생되는 문제에 대한 책임은 회원에게 있습니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 다음 각 호에 해당하는 경우에 직권에 의하여 아이디의 사용을 제한하거나 회원의 신청에 의하여 아이디를 변경할 수 있습니다. </p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 아이디가 미풍양속을 해하는 경우</li>
                            <li>
                                2. 아이디가 회원의 사생활을 침해할 우려가 있는 경우
                            </li>
                            <li>
                                3. 기타 합리적인 사유가 있는 경우
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>
        <!-- //10조 -->
    </div>
    <!-- //list02 -->
    <!-- list03-->
    <div class="list">
        <h3 class="h3_tit">제3장 서비스의 이용</h3>
        <!-- 11조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 11 조 (서비스의 이용 개시)</h4>
            <p class="list_txt">회사는 제8조의 규정에 따라서 이용신청을 승낙한 때로부터 즉시 서비스를 개시합니다. 다만, 회사의 업무상 또는 기술상의 장애로 인하여 즉시 서비스를 개시하지 못하는 경우, 회사는 이를 회사의 웹사이트 및 주문앱에 공지하거나 회원에게 통지하여야 합니다. </p>
        </div>
        <!-- //11조 -->
        <!-- 12조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 12 조 (서비스의 내용)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">①회사가 제공하는 서비스는 다음과 같습니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 당사 제품의 소개</li>
                            <li>
                                2. 각종 이벤트
                            </li>
                            <li>
                                3. 제품 구입처 안내
                            </li>
                            <li>
                                4. 게시판 서비스
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">② 회사는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있으며, 추가 또는 변경 내용은 회사의 및 주문앱에 공지합니다. </p>
                </li>
            </ol>
        </div>
        <!-- //12조 -->
        <!-- 13조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 13 조 (서비스의 이용 요금)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 별도로 표시된 유료 서비스를 제외한 모든 서비스는 회원들에게 무료로 제공됩니다. </p>
                </li>
            </ol>
        </div>
        <!-- //13조 -->
    </div>
    <!-- //list03 -->
    <!-- list04-->
    <div class="list">
        <h3 class="h3_tit">제4장 계약당사자의 권리와 의무</h3>
        <!-- 14조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 14 조 (개인 정보의 보호)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 정보통신망이용촉진 등에 관한 법률 등 관계 법령에 따라 이용 신청 시 제공받은 회원의 개인 정보, 추후에 추가로 제공받는 개인 정보 및 서비스 이용 중 생성되는 개인 정보를 보호합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 개인 정보의 수집 목적 및 이용 목적은 다음 각 호와 같으며, 회사는 회원의 별도의 사전 동의 없이 이 목적을 넘어서는 개인 정보의 수집 및 이용을 하지 않습니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 서비스의 제공</li>
                            <li>
                                2. 서비스를 위한 회원의 관리
                            </li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 개인 정보를 회원의 별도의 사전동의 없이 제3자에게 제공하지 않습니다. 다만, 다음 각 호의 경우에는 회원의 별도의 동의 없이 제3자에게 회 원의 개인 정보를 제공할 수 있습니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 법령에 특별한 규정이 있는 경우</li>
                            <li>2. 서비스 제공에 따른 요금정산을 위하여 필요한 경우</li>
                            <li>3. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공되는 경우</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">④ 회원은 언제든지 자신의 개인 정보를 열람할 수 있으며, 오류를 수정할 수 있습니다. 열람 및 수정은 원칙적으로 이용 신청과 동일한 방법으로 하며, 자세한 방법은 별도로 정한 "개인정보보호정책" 및 이용안내에 정한 바에 따릅니다.</p>
                </li>
                <li>
                    <p class="list_txt">⑤ 회원은 언제든지 개인 정보의 수집 및 이용에 대한 동의, 고지 또는 명시된 범위를 초과하는 이용 및 제3자 제공에 대한 동의를 철회할 수 있으며, 이 경우 회사는 지체 없이 필요한 조치를 취합니다. 다만 회원이 개인 정보의 수집 및 이용에 대한 동의를 철회한 경우에 회사는 이용계약을 해지할 수 있습니다.</p>
                </li>
                <li>
                    <p class="list_txt">⑥ 회사의 개인 정보 관리책임자를 비롯한 개인정보보호에 관한 기타 사항은 별도로 정한 "개인정보보호정책"에 기재하여 공지합니다. </p>
                </li>
            </ol>
        </div>
        <!-- //14조 -->
        <!-- 15조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 15 조 (회사의 의무)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 이 약관이 정하는 바에 따라 지속적이고 안정적인 서비스를 제공하는 데 최선을 다해야 합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회사는 회원의 신용정보를 포함한 개인신상정보의 보안에 대하여 기술적 안전 조치를 강구하고 관리에 만전을 기함으로써 회원의 개인정보 보안에 최선을 다해야 합니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 회원으로부터 제기되는 의견 및 불만사항이 정당하다고 판단되는 경우 그 사항을 신속히 처리하여야 합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리 일정을 통지하여야 합니다. </p>
                </li>
                <li>
                    <p class="list_txt">④ 회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 회원과의 계약 관련 절차 및 내용 등에 있어 회원에게 편의를 제공하도록 노력합니다.</p>
                </li>
                <li>
                    <p class="list_txt">⑤ 회사는 공정하고 건전한 운영과 지속적인 연구 개발을 통하여 양질의 서비스를 제공함으로써 고객만족을 극대화하여 인터넷 비즈니스 발전에 기여하도록 합니다. </p>
                </li>
            </ol>
        </div>
        <!-- //15조 -->
        <!-- 16조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 16 조 (회원의 의무)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회원은 서비스를 이용함에 있어 다음 각 호의 행위를 하여서는 안됩니다.</p>
                    <div class="sub_list">
                        <ol class="sub_list01">
                            <li>1. 가명, 차명, 허무인 명의 기타 회원의 실제 성명과 다른 명의에 의해 이용 신청을 하는 행위</li>
                            <li>2. 허위의 개인정보를 기재하거나 중복하여 가입하는 행위</li>
                            <li>3. 타인의 서비스 아이디 및 비밀번호를 도용하는 행위</li>
                            <li>4. 타인의 지적재산권을 침해하는 행위</li>
                            <li>5. 타인의 명예를 훼손하거나 사생활을 침해하는 행위</li>
                            <li>6. 게시판이나 대화실 등에서 욕설, 비방 또는 음란, 폭력적인 내용의 표현을 하는 행위</li>
                            <li>7. 과실 또는 고의로 허위의 정보를 공개 또는 유포하는 행위</li>
                            <li>8. 다량의 정보를 전송하거나 동일한 또는 유사한 내용의 정보를 반복적으로 게시하여 서비스의 안정적인 운영을 방해하는 행위</li>
                            <li>9. 광고성 정보를 수신자의 의사에 반하여 전자우편으로 일시에 다량으로 또는 지속적으로 전송하거나 게시판에 게시하여 다른 회원의 서비스 이용을 방해하는 행위</li>
                            <li>10. 정보통신설비의 오작동이나 정보 등의 파괴를 유발하는 컴퓨터 바이러스 등을 유포하는 행위</li>
                            <li>11. 회사의 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 행위</li>
                            <li>12. 회사의 정상적인 경영 또는 업무를 방해하거나 서비스의 운영을 방해하는 행위</li>
                            <li>13. 불법선거운동을 하는 행위</li>
                            <li>14. 기타 미풍양속을 해하거나 관련법령 및 이 약관을 포함하여 회사가 정한 이용 조건에 위반하는 행위</li>
                        </ol>
                    </div>
                </li>
                <li>
                    <p class="list_txt">② 회원은 아이디 및 비밀번호의 관리에 상당한 주의를 기울여야 합니다. 아이디와 비밀번호에 관한 모든 관리 책임은 회원에게 있으며, 회원에게 부여된 아이디 및 비밀번호의 관리 소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다. 회원은 자신의 아이디 또는 비밀 번호가 부정하게 사용된 경우 반드시 회사에 그 사실을 통보하여야 합니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회원은 회사의 사전 서면 동의 없이 서비스를 이용하여 영리적인 목적의 영업 행위를 하여서는 안됩니다. 이를 위반한 영업 행위의 결과에 대하여 회사는 책임을 지지 않으며, 이와 같은 영업 행위의 결과로 회사에 손해가 발생한 경우, 회원은 회사에 대하여 손해배상의 의무를 집니다.</p>
                </li>
                <li>
                    <p class="list_txt">④ 회원은 명시적 동의가 없는 한 회사의 서비스의 이용 권한, 기타 이용계약 상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공하거나 기타 처분할 수 없습니다. </p>
                </li>
            </ol>
        </div>
        <!-- //16조 -->
        <!-- 17조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 17 조 (지적재산권 등)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사가 작성하여 제공하는 서비스에 관한 저작권 및 기타 지적재산권은 회사에 속합니다. 회원은 회사가 제공하는 서비스를 회사의 사전동의 없이 영리 목적으로 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회원이 서비스에 게재한 게시물, 자료에 관한 권리와 책임은 게시한 회원에게 있습니다. 회사는 회원이 게재한 게시물, 자료에 대하여 서비스 내의 게재권을 가지며, 게재한 회원의 동의 없이 이를 영리적인 목적으로 사용하지 아니합니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 제19조의 의무를 위반하는 내용을 담고 있는 게시물에 대하여 수정 또는 삭제할 권한을 갖습니다. 이에 대한 구체적인 기준과 절차는 별도의 규정에 따릅니다. </p>
                </li>
            </ol>
        </div>
        <!-- //17조 -->
    </div>
    <!-- //list04 -->
    <!-- list05-->
    <div class="list">
        <h3 class="h3_tit">제5장 서비스의 이용 제한 및 계약의 해지 </h3>
        <!-- 18조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 18 조 (서비스 이용 제한 등)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 회원이 제16조의 의무를 위반한 경우 회원의 서비스 이용을 일부 또는 전부 제한할 수 있습니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 제1항의 규정에 의하여 회원의 서비스 이용을 제한하는 경우, 제한의 종류 및 기간 등 구체적인 기준은 별도의 규정에 따릅니다. </p>
                </li>
            </ol>
        </div>
        <!-- //18조 -->
        <!-- 19조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 19 조 (이용 제한 및 제한 해제의 절차)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 제18조의 규정에 의하여 이용제한을 하고자 하는 경우 그 사유, 일시 및 기간을 정해 전자우편 또는 전화 등의 방법에 의하여 해당 회원 또는 그 대리인에게 통지하여야 합니다. 다만 회사가 긴급하게 이용을 제한할 필요가 있다고 인정하는 경우에는 그러하지 아니합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 제1항의 규정에 의하여 이용 제한의 통지를 받거나 긴급하게 이용 제한 조치를 받은 회원 또는 그 대리인은 전자우편 또는 서면의 방법에 의하여 회사에 이의를 제기할 수 있습니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 제2항의 규정에 의한 이의신청에 대하여 그 확인을 위한 기간까지 이용제한을 일시 연기할 수 있으며, 그 결과를 당해 회원 또는 그 대리인에게 통지합니다.</p>
                </li>
                <li>
                    <p class="list_txt">④ 회사는 이용 제한 기간 중 그 사유가 해소되는 등의 합리적인 사유가 있는 경우 이용 제한 조치를 해제합니다. </p>
                </li>
            </ol>
        </div>
        <!-- //19조 -->
        <!-- 20조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 20 조 (계약의 해지)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회원은, 이용계약을 해지하고자 하는 경우, 회사 웹사이트 및 주문앱의 "회원탈퇴" 메뉴에서 탈퇴 신청을 하여야 합니다. 회사는 회원의 탈퇴 신청을 빠른 시간 내에 처리하여야 합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회사는, 회원이 제19조의 의무를 위반한 경우 사전 통지를 거쳐 이용계약을 해지하고 회원탈퇴 처리할 수 있습니다. 다만, 그 내용이 중하여 회사의 정상적인 경영이나 업무 활동 또는 서비스 운영에 지장이 있는 경우 사전통지 없이 계약을 해지하고 탈퇴 처리를 할 수 있습니다. 그 구체적인 기준과 절차는 별도의 규정에 따릅니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는, 제2항에 의하여 탈퇴 처리된 회원이 다시 이용 신청을 하는 경우, 그에 대한 승낙을 거절하거나 일정 기간 그 승낙을 보류할 수 있습니다.</p>
                </li>
            </ol>
        </div>
        <!-- //20조 -->
        <!-- 21조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 21 조 (면책)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사는 전시, 사변 등 국가비상사태, 천재지변, 기간통신사업자의 서비스 제공 중단, 전력공급 중단, 해커의 침입, 컴퓨터 바이러스 기타 이와 유사한 사정으로 인한 회사 시스템의 작동불능 기타 회사의 귀책 사유 없이 회사가 서비스를 제공할 수 없는 경우 회사는 그로 인한 책임을 면합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 회사는 이용고객이 회사의 서비스로부터 기대하는 이익을 얻지 못하거나 제공된 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.</p>
                </li>
                <li>
                    <p class="list_txt">③ 회사는 회원이 게시, 전송한 정보 또는 자료의 내용과 관련하여서는 책임을 부담하지 않습니다.</p>
                </li>
                <li>
                    <p class="list_txt">④ 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개함으로 그들 사이에 발생한 분쟁에 관여할 의무가 없으며, 이로 인한 어떠한 손해도 배상할 책임이 없습니다. </p>
                </li>
            </ol>
        </div>
        <!-- //21조 -->
        <!-- 22조 -->
        <div class="ag_list">
            <h4 class="h4_tit">제 22 조 (분쟁의 해결)</h4>
            <ol class="o_st_01">
                <li>
                    <p class="list_txt">① 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다.</p>
                </li>
                <li>
                    <p class="list_txt">② 제1항의 규정에도 불구하고 회사와 회원 사이에 소송이 제기될 경우, 소송은 회사의 본사 소재지를 관할하는 법원을 관할법원으로 합니다</p>
                </li>
            </ol>
        </div>
        <!-- //22조 -->
    </div>
    <!-- //list05 -->
</div>
<!-- //이용약관 cont --></div>

                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_use" name="agree_use" value="Y">
                            <label for="agree_use">동의합니다</label>
                            <span class="ck_txt">(필수)</span>
                        </span>
                        <!-- //동의 -->
                    </div>

                    <h4 class="h4_tit prive">개인정보 수집 및 활용동의</h4>
                    <div class="textarea_wrap">
                        <div class="cont_area">
                            <!-- 개인정보 cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. 수집목적 : 회원가입, 상담, 서비스 신청 등

    2. 수집하는 개인정보 항목
    - 필수항목 : 성명, 아이디, 비밀번호, 휴대폰번호, 이메일
    - 선택항목 : 없음

    3. 보유기간 : 회원 탈퇴시

    4. 개인정보주체자는 개인정보 수집 및 이용에 대한 동의를 거부할 권리가 있습니다. 동의를 거부할 경우 원활한 서비스 이용이 불가함을 알려드립니다.
</div>
<!-- //개인정보 cont --></div>
                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_personal" name="agree_personal" value="Y">
                            <label for="agree_personal">동의합니다</label>
                            <span class="ck_txt">(필수)</span>
                        </span>
                        <!-- //동의 -->
                    </div>
                    <h4 class="h4_tit prive">마케팅 활용목적 동의</h4>
                    <div class="textarea_wrap">
                         <div class="cont_area">
                             <!-- 개인정보 cont -->
<div class="agree_cont" style="white-space: pre-line">
    1. 수집목적 : 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 당첨 시 안내 등을 목적으로 개인정보를 처리합니다.

    2. 마케팅 및 광고에의 활용
    - 필수항목 : 성명, 이메일, 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 정보
    - 선택항목 : 휴대폰번호

    3. 보유기간 : 회원 탈퇴 시 까지 보유

    4. 마케팅에 활용하는 목적 범위 내에서 개인정보를 이용하며, 동 범위를 초과하여 개인정보를 이용하거나 제 3 자에게 제공, 공개하지 않습니다.
</div>
<!-- //개인정보 cont --></div>
                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_3rd" name="agree_3rd" value="Y">
                            <label for="agree_3rd">동의합니다</label>
                            <span class="ck_txt">(선택)</span>
                        </span>
                            <!-- //동의 -->
                    </div>
                    <div>
<input type="hidden" name="_csrf" value="4a6b1751-f4cf-4dee-af18-69d93735802e" />
</div></form><!-- 전체동의 -->
                    <div class="all_check_wrap">
                        <span class="form checkbox pa_01">
                            <input type="checkbox" id="allchk" onclick="allchk();">
                            <label for="allchk">위 약관에 모두 동의합니다</label>
                        </span>
                        <!-- btn -->
                        <div class="btn_wrap pa_01">
                            <span class="btn btn_st03"><a href="javascript:nextStep();" class="c_01">다음</a></span>
                        </div>
                        <!--// btn -->
                    </div>
                    <!--// 전체동의 -->
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //회원가입_약관동의 -->
    </section>
</div>

<script>
    $(function(){

        $("#agree_personal, #agree_use, #agree_3rd").on('click',function(){
            if($("#agree_use").is(":checked") && $("#agree_personal").is(":checked") && $("#agree_3rd").is(":checked")){
                $("#allchk").prop("checked", true);
            }else{
                $("#allchk").prop("checked", false);
            }
        });

    });

    // 모두 동의
    function allchk(){
        if($("#allchk").is(":checked")){
            $("#joinForm :checkbox").prop("checked", true);
        }else{
            $("#joinForm :checkbox").prop("checked", false);
        }
    }

    // 다음
    function nextStep(){
        if(!$("#agree_use").is(":checked")){
            alert("이용약관에 동의해 주세요.");
            $("#agree_use").focus();
            return;
        }

        if(!$("#agree_personal").is(":checked")){
            alert("개인정보 보호정책에 동의해 주세요.");
            $("#agree_personal").focus();
            return;
        }

      $("#joinForm").submit();


      /*if(!$("#agree_3rd").is(":checked")){
        alert("마케팅 활용목적에 동의해 주세요.");
        $("#agree_3rd").focus();
        return;
      }*/


    }


    $(".cont_area").mCustomScrollbar({
        theme: "minimal-dark",
        scrollInertia: 400
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