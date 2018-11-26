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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="22ae22c2-21e3-4ad4-b776-68a154ffd3bd" /><title>창업개설절차</title>

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
    <link rel="stylesheet" type="text/css" href="assets/css/ui.inquiry.css" />

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
    <div id="container" class="sub_page">
        
<div class="content franchise">
    <section class="process mo_version">
        <!-- 창업개설절차 -->
        <div class="process_wrap">
            <h2 class="h2_tit h2_01">창업개설절차</h2>
            <div class="process_cont cont_st02">
                <!-- 창업개설절차 intro -->
                <div class="process_tit">
                    <p class="fz_02">
                        <span class="s_block">성공으로 가는 창업의</span>
                        <span class="s_block">든든한 길잡이, 한솥</span>
                    </p>
                    <div class="space_wrap">
                        <p>
                            <span class="s_block">상담부터 개업까지 여러분의 꿈을</span>
                            <span class="s_block">실현시켜 드리기 위해 함께 합니다.</span>
                        </p>
                    </div>
                </div>
                <!-- //창업개설절차 intro -->
                <!-- 창업개설절차 안내 -->
                <div class="process_sub">
                    <div class="process_info">
                        <ul>
                            <li>
                                <p class="pro_tit">가맹 상담</p>
                                <p class="pro_txt">가맹에 앞서 가맹조건, 입지선정, 자금, 운영 등 궁금한 점에 대하여 전담직원이 상세하고도 친절하게 상담하여 드립니다.</p>
                            </li>
                            <li class="list_st01">
                                <p class="pro_tit">
                                    <span class="s_block">시장조사 및</span>
                                    <span class="s_block">점포계약</span>
                                </p>
                                <p class="pro_txt">개점 후보지의 입지 및 경합상황 등을 여러 각도에서 조사하여 가장 적합한 점포 선정과 점포 계약을 도와드립니다.</p>
                            </li>
                            <li>
                                <p class="pro_tit">가맹 계약</p>
                                <p class="pro_txt">선정된 후보점에 여건을 충분히 검토하신 후 점포 계약이 완료되면 본부와 가맹 계약을 체결하며 가맹 계약과 함께 가맹비, 보증금, 교육비 등을 지정 은행에 납부하시면 가맹 계약이 체결됩니다.</p>
                            </li>
                            <li>
                                <p class="pro_tit">점포 설계 및 시공</p>
                                <p class="pro_txt">한솥 도시락의 통일된 이미지를 유지하면서 완벽한 기능과 세련미를 갖출 수 있도록 설계, 시공하여 드립니다.</p>
                            </li>
                            <li>
                                <p class="pro_tit">연수 교육</p>
                                <p class="pro_txt">접객, 조리, 운영, 관리, 판촉, 회계, 실습 등을 3주 동안 체계적으로 알기 쉽게 교육 해드립니다.</p>
                            </li>
                            <li>
                                <p class="pro_tit">개업준비</p>
                                <p class="pro_txt">관공서와 관련된 각종 인·허가 업무에 대하여 조언해 드리고 점포인수 후 집기비품확보와 정리, 청소 등 준비작업은 물론, 시험판매 및 판촉 행사 등을 도와드립니다.</p>
                            </li>
                            <li class="open">
                                <p class="pro_tit">개업</p>
                                <p class="pro_txt">담당 슈퍼바이저(SV)가 개업 시는 물론 개업 후에도 지속적으로 지원해 드리므로 안심하고 개업하실 수 있습니다.</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //창업개설절차 안내 -->
            </div>
        </div>
        <!-- //창업개설절차 -->
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