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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3686d4d2-3095-4d0a-b475-9e59503b5982" /><title>인재채용</title>

    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
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
</script><script type="text/javascript">
    </script>

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.footer.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/ui.inquiry.css" />

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
                    <a href="../login/login.jsp">로그인</a>
                    </li>
                <li>
                    <a href="../join/join1.jsp">회원가입</a>
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
                <h1><a href="../"><span class="blind">한솥</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="../login/login.jsp">로그인</a>
                            </li>
                        <li>
                            <a href="../join/join1.jsp">회원가입</a>
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
                                    <li class="active"><a href="../brand/story.jsp">브랜드 스토리</a></li>
                                    <li><a href="../brand/philosophy.jsp">브랜드 철학</a></li>
                                    <li><a href="../brand/legacy.jsp">브랜드 유산</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="/brand/esg.jsp">ESG경영이란?</a></li>
                                    <li><a href="../brand/philosophy.jsp">환경보호(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">사회공헌(Social)</a></li>
                                    <li><a href="../brand/esg.jsp">윤리경영(Governance)</a></li>

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
    <div id="container" class="sub_page">
        
<div class="content area_footer">
    <section class="incruit mo_version">
        <!-- 인재채용 -->
        <div class="incruit_wrap">
            <h2 class="h2_tit h2_01">인재채용</h2>
            <div class="incruit_cont">
                <!-- 한솥이 원하는 인재상 -->
                <div class="talent_wrap">
                    <h3 class="h3_tit fz_01">한솥이 원하는 인재상</h3>
                    <p class="fz_03">착한 심성, 외식업에 대한 열정이 가득한 준비된 인재</p>
                    <div class="talent_list">
                        <ul class="keypoint">
                            <li class="ta_list_01">
                                <p class="tit fz_02">
                                    <span class="s_block"><strong>마음이 따뜻하고</strong></span>
                                    <span class="s_block"><strong>착하다</strong></span>
                                </p>
                            </li>
                            <li class="ta_list_02">
                                <p class="tit fz_02">
                                    <span class="s_block"><strong>외식업을</strong></span>
                                    <span class="s_block"><strong>좋아한다</strong></span>
                                </p>
                            </li>
                            <li class="ta_list_03">
                                <p class="tit fz_02">
                                    <strong><span class="s_block">꼼꼼하고 치밀하게</span></strong>
                                    <strong><span class="s_block">업무를 신속하게 처리한다</span></strong>
                                </p>
                            </li>
                            <li class="ta_list_04">
                                <p class="tit fz_02">
                                    <span class="s_block"><strong>단정한 복장과 약속시간 엄수,</strong></span>
                                    <span class="s_block"><strong>항상 큰 목소리로 밝게 인사를 나눈다</strong></span>
                                </p>
                            </li>
                            <li class="ta_list_05">
                                <p class="tit fz_02">
                                    <span class="s_block"><strong>법과 윤리를</strong></span>
                                    <span class="s_block"><strong>철저히 지킨다</strong></span>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //한솥이 원하는 인재상 -->
                <!-- 직급체계 -->
                <div class="in_list rank">
                    <h4 class="h4_tit fz_02">직급체계</h4>
                    <div class="cont">
                        <div class="rank_info">
                            <div class="rank_txt">
                                <dl class="first">
                                    <dt>사원</dt>
                                    <dd>2년</dd>
                                </dl>
                                <dl>
                                    <dt>주임</dt>
                                    <dd>2년</dd>
                                </dl>
                                <dl>
                                    <dt>대리</dt>
                                    <dd>3년</dd>
                                </dl>
                                <dl>
                                    <dt>과장</dt>
                                    <dd>3년</dd>
                                </dl>
                                <dl>
                                    <dt>차장</dt>
                                    <dd>3년</dd>
                                </dl>
                                <dl class="last">
                                    <dt>부장</dt>
                                    <dd></dd>
                                </dl>
                            </div>
                        </div>
                        <p class="cont_first">- 공정한 평가를 통한 승진/승급 제도 운영 : 우수 고과자 발탁 승진</p>
                        <p>- 입사 후 3개월의 수습 기간이 있습니다. (임원급 제외)</p>
                    </div>
                </div>
                <!-- //직급체계 -->
                <!-- 복리후생 -->
                <div class="in_list welfare">
                    <h4 class="h4_tit fz_02">복리후생</h4>
                    <div class="cont">
                        <div class="welfare_wrap">
                            <dl class="welfare_01">
                                <dt class="fz_03">회사생활 및 자기계발</dt>
                                <dd>장기 근속자 포상 및 창업비용 지원</dd>
                                <dd>주차비, 유류비 지원</dd>
                                <dd>우수사원 포상 및 해외연수</dd>
                                <dd>통신비 지원</dd>
                                <dd>한솥/미타니야 이용 시 직원 할인
                                    <span class="s_block">(한솥 50%/미타니야20%)</span>
                                </dd>
                                <dd>명절 선물 지급</dd>
                            </dl>
                            <dl class="welfare_02">
                                <dt class="fz_03">가족 및 여가</dt>
                                <dd>하계 휴가비 지원</dd>
                                <dd>법인소유 콘도 이용</dd>
                                <dd>부모님(미혼)/배우자(기혼) 생일 화환 지급 </dd>
                                <dd>학자금 지원</dd>
                                <dd>각종 기념일 쿠폰 지급</dd>
                                <dd>경조휴가/경조사비 지원</dd>
                            </dl>
                        </div>
                    </div>

                </div>
                <!-- //복리후생 -->
                <!-- 급여체계 -->
                <div class="in_list pay">
                    <h4 class="h4_tit fz_02">급여체계</h4>
                    <div class="cont">
                        <div class="pay_wrap">
                            <p>
                                <span class="s_block">공정하고 객관적인 평가로 역량과 업적에 따른 성과지향적 급여체계를 운영</span>
                                <span class="s_block">PS/PI 제도 운영 (회사의 실적과 개인성과에 따른 별도 보상제도)</span>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- //급여체계 -->
                <!-- 채용절차 -->
                <div class="in_list employ">
                    <h4 class="h4_tit fz_02">채용절차</h4>
                    <div class="cont">
                        <div class="employ_wrap">
                            <dl class="employ_01">
                                <dt class="fz_03">신입사원</dt>
                                <dd>
                                    <span>서류전형</span>
                                    <span>인·적성 평가</span>
                                    <span>면접 1차·2차</span>
                                    <span>인턴 3개월</span>
                                    <span>직무능력평가</span>
                                    <span class="last">최종합격</span>
                                </dd>
                            </dl>
                            <dl class="employ_02">
                                <dt class="fz_03">경력사원</dt>
                                <dd>
                                    <span>서류전형</span>
                                    <span>실무자 면접</span>
                                    <span>인·적성 평가</span>
                                    <span>경영진 면접</span>
                                    <span class="last">최종합격</span>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <!-- //채용절차 -->
                <!-- btn -->
                <div class="in_site_wrap">
                    <p>한솥 채용사이트에서 채용 공고와 더욱 다양한 한솥 채용 정보를 확인해 보세요.</p>
                    <div class="btn_wrap">
                        <span class="btn btn_st03"><a href="https://hsd.recruiter.co.kr/" target="_blank" class="c_01">채용사이트</a></span>
                    </div>
                </div>
                <!-- //btn -->
            </div>

        </div>
        <!-- //인재채용 -->
    </section>
</div>


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