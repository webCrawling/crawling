
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	
    <meta charset=utf-8 />
    
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    
    <meta property="og:type" content="website" />
    <meta property="og:title" content="��쩌� �짜쨩챌���짰 �짭쨌�" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="../assets/images/brand/brand_m_visual_01.jpg" />
    <meta property="og:description" content="3�쨋째징 쨍쨍쨉챕쩐첬쨈�!" />
   
	
    <meta name="��쩌�" content="��쩌�쨍�쨈쨘,��쨔짰" />
    
    <title>ESG 째챈쩔쨉</title>

    
   
    <link rel="icon" href="../assets/images/common/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../assets/css/ui.common.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/swiper.min.css" />
	<link rel="stylesheet" type="text/css" href="../assets/css/ui.brand.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />
    
     
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
                if(tss.util.confirm('쨌�짹����� ��쩔채��쨈�쨈�.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("쩔�쨌첫째징 쨔�쨩첵��쩍�쨈�쨈�.");
            }
        });
    });
</script>

    <script type="text/javascript" src="../assets/js/jquery.viewportchecker.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics 
    async 쩌�쩌쨘 : 쩍쨘�짤쨍쨀�짰�� 쨘챰쨉쩔짹창 쩍���
     쨘챗쨋처쩔챙�첬째징 async 쩌�쩌쨘�쨩 쨍쨍쨀짧쨍챕 쩍쨘�짤쨍쨀�짰 쩍����쨩 쨉�쨌� 쨔�쨌챌째챠 쩔챙쩌짹 쩍쨘�짤쨍쨀�짰 ������ 쩌철쩍�째첬 HTML 쨔짰쩌짯�� ��쩍�쩔징 �첵����쨈�. 
     쩔�쨘� 쩍쨘�짤쨍쨀�짰 ������ 쩌철쩍��� 쩔�쨌찼쨉�쩐첬�쨩 쨋짠 쩍쨘�짤쨍쨀�짰쨍짝 쩍���쩍��짼쨈�.
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
    noscript : 쩍쨘�짤쨍쨀�짰 쨔��철쩔첩�쨩 �짜쩍���쨈�
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
                    <a href="/login">쨌�짹���</a>
                    </li>
                <li>
                    <a href="/join/join_step1">�쨍쩔첩째징��</a>
                    </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="쨩천 �짖 쩔짯쨍짼" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="쨩천 �짖 쩔짯쨍짼" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="../home.jsp"><span class="blind">��쩌�</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 쨍챨쨔��� 쨌�짹���/�쨍쩔첩째징�� -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="/login">쨌�짹���</a>
                            </li>
                        <li>
                            <a href="/join/join_step1">�쨍쩔첩째징��</a>
                            </li>
                    </ul>
                </div>
                <!-- //쨍챨쨔��� 쨌�짹���/�쨍쩔첩째징�� -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./story.jsp">쨘챗쨌짙쨉책 쩍쨘�채쨍짰</a></li>
                                    <li><a href="./philosophy.jsp">쨘챗쨌짙쨉책 �쨋��</a></li>
                                    <li><a href="./legacy.jsp">쨘챗쨌짙쨉책 �짱쨩챗</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="./esg.jsp">ESG째챈쩔쨉��쨋천?</a></li>
                                    <li><a href="./philosophy.jsp">�짱째챈쨘쨍�짙(Environment)</a></li>
                                    <li><a href="../hansot/social.jsp">쨩챌�쨍째첩�책(Social)</a></li>
                                    <li><a href="./esg.jsp">�짹쨍짰째챈쩔쨉(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../menu/menu_list.jsp">�체�쩌쨍�쨈쨘</a></li>
                                    <li><a href="../menu/material.jsp">쩍��챌쨌찼 ��쩐�짹창</a></li>
                                    <li><a href="../menu/chancha.jsp">�채쨌챌�첫�첨쨍쨋쩔채�쩔��</a></li>
                                    <li><a href="../menu/menu_order.jsp">쨈��쩌 ��쨔짰</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../store/store_find.jsp">��쨘짱�징�첨�짙짹창</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../event/event_list.jsp">�� 쨈��� ��쨘짜�짰</a></li>
                                    <li><a href="../event/store_event_list.jsp">쩍�짹��징 쩔�����쨘짜�짰</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../franchise/hansot_store.jsp">Why ��쩌� 째징쨍��징</a></li>
                                    <li><a href="../franchise/success.jsp">쩌쨘째첩쩌철짹창</a></li>
                                    <li><a href="../franchise/process.jsp">�짖쩐첨째쨀쩌쨀�첵�첨</a></li>
                                    <li><a href="../franchise/calc.jsp">쩔쨔쨩처 �짖쩐첨 쨘챰쩔챘</a></li>
                                    <li><a href="../franchise/qna.jsp">�짖쩐첨쨔짰��</a></li>
                                    <li><a href="../franchise/briefing.jsp">�짖쩐첨쩌쨀쨍챠�쨍 ���짚징짚쩍��쨩</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="../hansot/promise.jsp">��쩌��� 쩐�쩌�</a></li>
                                    <li><a href="../hansot/vision.jsp">��쩌��� 쨘챰�체</a></li>
                                    <li><a href="../hansot/history.jsp">쩔짭�천&amp;쩌철쨩처</a></li>
                                    <li><a href="../hansot/news_list.jsp">��쩌� NEWS</a></li>
                                    <li><a href="../hansot/location.jsp">쩔�쩍�쨈� 짹챈</a></li>
                                    <li><a href="../footer/faq_list.jsp">째챠째쨈쩌쩐��</a></li>
                                    <li class="h_last"><a href="../footer/incruit.jsp">���챌�짚쩔챘</a></li>
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
    <section class="brand_esg">
        <!-- 쨩처쨈�bg 쩔쨉쩔짧 -->
        <div class="brand_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //쨩처쨈�bg 쩔쨉쩔짧 -->
        <!-- section01 -->
        <div class="bs_wrap section_01">
            <p class="menu_tit mo_version">ESG 째챈쩔쨉</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">��쩌��� ESG 째챈쩔쨉</h2>
                <div class="bs_txt">
                    <p>
                        ��쩌�쨉쨉쩍�쨋척�쨘 UN쩔징쩌짯 2015쨀창 째첩�첨�� SDGs(�철쩌�째징쨈�째쨀쨔�쨍챰�짜)쩔징 쨘�����쩔짤 짹창쩐첨�첨쩔첩쩔징쩌짯 쩍��쨉�� 쩔채짹쨍쨉�쨈� ESG 째챈쩔쨉쩔징 쨍��첩��쩔짤 쩔�쩍�쨈�쨈�.
                    </p>
                    <p>
                        ESG쨋천 �짱째챈쨘쨍�짙(Environment)징짚쨩챌�쨍째첩�책(Social)징짚�짹쨍짰째챈쩔쨉(Governance)�� 쩐���쨌�, 짹창쩐첨�� �짱째챈쨘쨍�짙쩔징 쩐��책쩌짯쨍챌,
                        쨩챌�쨍�청 쩐���쩔징 쨈챘�� �철쩔첩째첬 쨀짼쨀� �챵쨉챤�� �첨�책쨔짰�짯�� �쨋쩌쨘 쨉챤 쨩챌�쨍째첩�책 �째쨉쩔�쨩 ��쨍챌,
                        쨔첵째첬 �짹쨍짰쨍짝 �쨋�첬�첨 ��쩌철��쨈� �짹쨍짰째챈쩔쨉 쨉챤 ESG째챈쩔쨉�쨩 쩍��쨉��쩐� �철쩌��청�� 쩌쨘�책�� 째징쨈���쨈�쨈� 쨋챈��쨈�쨈�.
                        �짱쨌쨈쩔짭����쨀짧 쨔�짹쨔 쨉챤쩔징쩌짯쨈� ��쨔� 짹창쩐첨�쨩 �챵째징��쨈�쨉짜 ��쩔채�� 짹창���쨍쨌� ��쨍짰�창째챠 ���쨍쨍챌,
                        �철�챌 �체 쩌쩌째챔�청�쨍쨌� �짰쨩챗쨉� 쨀짧째징째챠 ��쨈� ��쩌쩌��쨈�쨈�.
                        짹쨔쨀쨩쩔징쩌짯쨈� 쩐��첨짹챤�철 쨘쨍�챠�짯 쨉�쩐챤���철 쩐��쨍쨀짧 ��쩌�쨉쨉쩍�쨋척�쨘 �짖쩐첨 쨋짠쨘��� ESG째챈쩔쨉�쨩 쩍��쨉��쩔�째챠 ��쩍�쨈�쨈�.
                    </p>
                </div>
                <div class="bs_img mo_tr">
                    <img src="../assets/images/brand/brand_esg.jpg" alt="ESG짹창쩐첨�� 3쨈챘 쩔채째�" usemap="#map"/>
                    <map name="map" id="map">
                        <area target="" alt="social" title="social" href="https://www.hsd.co.kr/hansot/social" shape="rect" coords="240,422,121,323">
                    </map>
                </div>
            </div>
        </div>
    </section>
    <!-- //group_order -->
</div>
<!-- more_cont -->
<div class="conts_more">
    <h2 class="more_tit">쨈천 쨍쨔�쨘 ��쩐�짹창</h2>
    <ul>
        <li>
            <a href="../hansot/vision.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_vision.jpg" alt="��쩌��� 쨘챰�체" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">��쩌��� 쨘챰�체</h3>
                    <h3 class="h3_tit_o">��쩌��� 쨘챰�체</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/promise.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_hansot.jpg" alt="��쩌��� 쩐�쩌�" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">��쩌��� 쩐�쩌�</h3>
                    <h3 class="h3_tit_o">��쩌��� 쩐�쩌�</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="../hansot/news_list.jsp" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="../assets/images/common/more_news.jpg" alt="��쩌� NEWS" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">��쩌� NEWS</h3>
                    <h3 class="h3_tit_o">��쩌� NEWS</h3>
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
                <li class="first_be off"><a href="../footer/incruit.jsp">���챌�짚쩔챘</a></li>
                <li class="off"><a href="../footer/partners.jsp">�첫쨌�쩐첨�쩌쨉챤쨌�</a></li>
                <li class="mo_bl"><a href="../footer/notice_list.jsp">째첩�철쨩챌��</a></li>
                <li><a href="../footer/faq_list.jsp">째챠째쨈 쩌쩐��</a></li>
                <li class="mo_bl"><a href="../footer/policy.jsp"><strong>째쨀���짚쨘쨍�챘짹�쨔챈�짠</strong></a></li>
                <li><a href="../footer/agreement.jsp">��쩔챘쩐�째체</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 ��쨌짙�첨���챤쨘�쩐� 쨈챘쨩처2017</span></p></div><!-- 2018-01-11�짜쩐챤쩔철쨉책쨍쨋�짤 -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">쨈챘�짜��쨩챌  ��쩔쨉쨈철</span>
                <span>쨩챌쩐첨��쨉챤쨌�쨔첩�짙  214-81-96569</span>
                <span>쩌짯쩔챦쩍� 째짯쨀짼짹쨍 째짯쨀짼쨈챘쨌� 318(쩔짧쨩챦쨉쩔) �쨍쩔철837쨘척쨉첫 8,9�첸</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>��쩌� 쨉쨉쩍�쨋척 째챠째쨈쩌쩐��  02-585-1114</span>
                <span>�체짹쨔�짖쩐첨쩌쨀쨍챠�쨍  1811-0188</span>
                <span>쨈��쩌��쨔짰  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">��쩌� 쨩챌쩐첨�� �짚쨘쨍</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">쨈챘�짜��쨩챌  ��쩔쨉쨈철</span>
                        <span>쨩챌쩐첨��쨉챤쨌�쨔첩�짙  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">쩌짯쩔챦쩍� 째짯쨀짼짹쨍 째짯쨀짼쨈챘쨌� 318(쩔짧쨩챦쨉쩔) �쨍쩔철837쨘척쨉첫 8,9�첸</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>��쩌� 째챠째쨈쩌쩐��</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>�체짹쨔�짖쩐첨쩌쨀쨍챠�쨍</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>쨈��쩌��쨔짰</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>짖���쩌�. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="쨩천 �짖 쩔짯쨍짼" class="sns_insta_02" target="_blank" title="쨩천 �짖 쩔짯쨍짼" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="쨩천 �짖 쩔짯쨍짼" ><span class="blind">facebook</span></a>
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