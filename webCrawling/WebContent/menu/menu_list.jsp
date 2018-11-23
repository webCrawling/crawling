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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3caca266-b988-4ce5-a3db-343784207d4a" /><title>전체메뉴 > 한솥 메뉴</title>

    <link rel="icon" href="/assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mycss.css" />
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

    

    <link rel="stylesheet" type="text/css" href="../assets/css/ui.menu.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.min.css"/>
    <script type="text/javascript" src="../assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
                                    <li class="active"><a href="../brand/esg.jsp">ESG경영이란?</a></li>
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
        
<div class="content menu">
    <section class="menu_all">
        <!-- 한솥 메뉴 -->
        <div class="menu_all_wrap tab_st01">
            <!-- title -->
            <div class="title">
                <h2 class="h2_tit h2_02">한솥 메뉴</h2>
                
                <div class="tab_wrap">
                    
                </div>
            </div>
            
            <!-- 메뉴 -->
            <div class="my_hansot_menu">
                        
              <ul class="my_menu_cont">
              
              <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/shrimp.jpg">
              </div>
              <div class="my_item_text">
              새우돈가스 덮밥
              <div class="my_item_price">
              3,800원  &nbsp;
              <input type ="checkbox" id="my_checkbox1" name="my_checkbox"/>
              <label for="my_checkbox1"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/sobul.jpg">
              </div>
              <div class="my_item_text">
              소불고기 덮밥
              <div class="my_item_price">
              4,200원  &nbsp;
              <input type ="checkbox" id="my_checkbox2" name="my_checkbox"/>
              <label for="my_checkbox2"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/wang.jpg">
              </div>
              <div class="my_item_text">
              왕카레돈까스덮밥
              <div class="my_item_price">
              5,500원  &nbsp;
              <input type ="checkbox" id="my_checkbox3" name="my_checkbox"/>
              <label for="my_checkbox3"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/don.jpg">
              </div>
              <div class="my_item_text">
              돈가스 덮밥
              <div class="my_item_price">
              3,600원  &nbsp;
              <input type ="checkbox" id="my_checkbox4" name="my_checkbox"/>
              <label for="my_checkbox4"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/chicken.jpg">
              </div>
              <div class="my_item_text">
              치킨마요
              <div class="my_item_price">
              2,800원  &nbsp;
              <input type ="checkbox" id="my_checkbox5" name="my_checkbox"/>
              <label for="my_checkbox5"></label>
              </div>
              </div>
              
              </div>
              </li>
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/tuna.jpg">
              </div>
              <div class="my_item_text">
              참치 샐러드마요
              <div class="my_item_price">
              3,300원  &nbsp;
              <input type ="checkbox" id="my_checkbox6" name="my_checkbox"/>
              <label for="my_checkbox6"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/donchi.jpg">
              </div>
              <div class="my_item_text">
              돈치마요
              <div class="my_item_price">
              3,400원  &nbsp;
              <input type ="checkbox" id="my_checkbox7" name="my_checkbox"/>
              <label for="my_checkbox7"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/tunama.jpg">
              </div>
              <div class="my_item_text">
              참치마요
              <div class="my_item_price">
              2,800원  &nbsp;
              <input type ="checkbox" id="my_checkbox8" name="my_checkbox"/>
              <label for="my_checkbox8"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/jin.jpg">
              </div>
              <div class="my_item_text">
              진달래
              <div class="my_item_price">
              7,000원  &nbsp;
              <input type ="checkbox" id="my_checkbox9" name="my_checkbox"/>
              <label for="my_checkbox9"></label>
              </div>
              </div>
              
              </div>
              </li>
              
                
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/gogi.jpg">
              </div>
              <div class="my_item_text">
              돈치 고기고기
              <div class="my_item_price">
              5,200원  &nbsp;
              <input type ="checkbox" id="my_checkbox10" name="my_checkbox"/>
              <label for="my_checkbox10"></label>
              </div>
              </div>
              
              </div>
              </li>
              
                <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/gokhwa.jpg">
              </div>
              <div class="my_item_text">
             국화
              <div class="my_item_price">
              4,000원  &nbsp;
              <input type ="checkbox" id="my_checkbox11" name="my_checkbox"/>
              <label for="my_checkbox11"></label>
              </div>
              </div>
              
              </div>
              </li>
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/dongbak.jpg">
              </div>
              <div class="my_item_text">
             동백
              <div class="my_item_price">
              5,000원  &nbsp;
              <input type ="checkbox" id="my_checkbox12" name="my_checkbox"/>
              <label for="my_checkbox12"></label>
              </div>
              </div>
              
              </div>
              </li>
              
                <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/gang.jpg">
              </div>
              <div class="my_item_text">
             열무 두부강된장 비빔밥
              <div class="my_item_price">
              3,800원  &nbsp;
              <input type ="checkbox" id="my_checkbox13" name="my_checkbox"/>
              <label for="my_checkbox13"></label>
              </div>
              </div>
              
              </div>
              </li>
              
                 <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/tunabi.jpg">
              </div>
              <div class="my_item_text">
             참치야채 감초고추장
              <div class="my_item_price">
              3,200원  &nbsp;
              <input type ="checkbox" id="my_checkbox14" name="my_checkbox"/>
              <label for="my_checkbox14"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
                <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/buldak.jpg">
              </div>
              <div class="my_item_text">
           불닭비빔밥
              <div class="my_item_price">
              4,500원  &nbsp;
              <input type ="checkbox" id="my_checkbox15" name="my_checkbox"/>
              <label for="my_checkbox15"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
               <li> 
              <div class="my_item_spacer">
              <div class="my_item_img">
              <img src="../images/sobi.jpg">
              </div>
              <div class="my_item_text">
           소불고기 감초고추장 비빔밥
              <div class="my_item_price">
              4,800원  &nbsp;
              <input type ="checkbox" id="my_checkbox16" name="my_checkbox"/>
              <label for="my_checkbox16"></label>
              </div>
              </div>
              
              </div>
              </li>
              
              
              </ul>
              
              
              <div class="btn_wrap btn_more" style="margin-top:40px;">
                        <span class="btn btn_st04">
                            <a href="./menu_order.jsp" class="c_05">주문하기</a>
                        </span>
                    </div>
             
        
        </div>
        </div>
        <!-- //한솥 메뉴 -->
    </section>
</div>


<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">더 많은 이야기</h2>
    <ul>
        <li>
            <a href="../store/store_find.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_store.jpg" alt="한솥 STORE" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">한솥 STORE</h3>
                    <h3 class="h3_tit_o">한솥 STORE</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../event/event_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_event.jpg" alt="이 달의 이벤트" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">이 달의 이벤트</h3>
                    <h3 class="h3_tit_o">이 달의 이벤트</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../event/store_event_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_event_store.jpg" alt="신규점 오픈 이벤트" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">신규점 오픈 이벤트</h3>
                    <h3 class="h3_tit_o">신규점 오픈 이벤트</h3>
                </figcaption>
            </figure>
        </li>
    </ul>
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


</div>
<!--// wrap e -->
</body>
</html>