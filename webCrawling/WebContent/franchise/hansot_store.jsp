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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="c14d230a-1550-44ed-99f5-7bae85c218c3" /><title>Why �Ѽ� ������</title>

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
                if(tss.util.confirm('�α����� �ʿ��մϴ�.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("������ �߻��߽��ϴ�.");
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
                    <a href="login.do">�α���</a>
                    </li>
                <li>
                    <a href="join.do">ȸ������</a>
                    </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="�� â ����" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="�� â ����" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="first_home.do"><span class="blind">�Ѽ�</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- ����� �α���/ȸ������ -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <a href="login.do">�α���</a>
                            </li>
                        <li>
                            <a href="join.do">ȸ������</a>
                            </li>
                    </ul>
                </div>
                <!-- //����� �α���/ȸ������ -->

               <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="story.go">�귣�� ���丮</a></li>
                                    <li><a href="philosophy.go">�귣�� ö��</a></li>
                                    <li><a href="legacy.go">�귣�� ����</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="esg.go">ESG�濵�̶�?</a></li>
                                    <li><a href="philosophy.go">ȯ�溸ȣ(Environment)</a></li>
                                    <li><a href="social.go">��ȸ����(Social)</a></li>
                                    <li><a href="esg.go">�����濵(Governance)</a></li>

                                    </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="menu_list.go">��ü�޴�</a></li>
                                    <li><a href="material.go">����� �̾߱�</a></li>
                                    <li><a href="chancha.go">�����������Ŀ��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="store_find.go">�ֺ�����ã��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="event_list.go">�� ���� �̺�Ʈ</a></li>
                                    <li><a href="store_event_list.go">�ű��� �����̺�Ʈ</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="hansot_store.go">Why �Ѽ� ������</a></li>
                                    <li><a href="success.go">��������</a></li>
                                    <li><a href="process.go">â����������</a></li>
                                    <li><a href="calc.go">���� â�� ���</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="promise.go">�Ѽ��� ���</a></li>
                                    <li><a href="vision.go">�Ѽ��� ����</a></li>
                                    <li><a href="history.go">����&amp;����</a></li>
                                    <li><a href="news_list.go">�Ѽ� NEWS</a></li>
                                    <li><a href="location.go">���ô� ��</a></li>
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
        <!-- ���bg ���� -->
        <div class="hs_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //���bg ���� -->
        <!-- section01 -->
        <div class="hs_wrap section_01">
            <p class="menu_tit mo_version">Why �Ѽ� ������</p>
            <div class="hs_cont mo_tr">
                <h2 class="h2_tit">
                    <span class="s_block">10��, 20��</span>
                    <span class="s_block">�븦 �մ� ���� ���</span>
                </h2>
                <div class="hs_txt">
                    <p>
                        <span class="s_block">â��, �װ��� ������ ������ ���� ���� ������ ���� ���� �� �����ϴ�.</span>
                        <span class="s_block">�Ѽ��� ������ ������ ���縸�� ���ͺ��� ����� ������ ������ �켱�� �߱� �����Դϴ�.</span>
                        <span class="s_block">������ �� ���� ��ȸ�� �����ϰڴٴ� ö���� ���ѿԱ� �����Դϴ�.</span>
                        <span class="s_block">�ܽ����ձ���� ���� �ų�� ������ �濵���� �ŷڹ޴� �ܽĹ�ȭ�� ������ �ֱ�</span>
                        <span class="s_block">�����Դϴ�. ���� ����� �Բ���� ���� �Ѽ��� ������ ������ �غ� �Ǿ� �ֽ��ϴ�.</span>
                    </p>
                </div>
            </div>
        </div>
        <!-- //section01 -->
        <!-- section02 -->
        <div class="hs_wrap section_02">
            <div class="hs_cont">
                <div class="hs_img mo_tr">
                    <img src="assets/images/franchise/fr_img_01.jpg" alt="�Ѽ��̾�� �ϴ� ������ ���� �̹���" />
                </div>
                <div class="hs_txt_wrap">
                    <h3 class="h3_tit fz_01">
                        <span class="s_block">�Ѽ��̾�� �ϴ�</span>
                        <span class="s_block">�� ���� ����</span>
                    </h3>
                    <div class="hs_txt">
                        <p>
                            <strong>Ʈ���忡 ������ ���� �ʽ��ϴ�</strong>
                            <span class="s_block">
                                ���� Ʈ���忡 ���� ���и� �޸��ϴ� �ܽľ�! �Ѽ��� ����� ������� ������ ������ ���� ���׵𼿷� �����������Դϴ�. ������ ��  30%�� �Ѵ� �������� 10�� �̻� ������ ��ϰ� �ִ� �Ѽ�. �Ѽ��� ������ �븦 �̾� ������ �� �ִ� ����Դϴ�.
                            </span>
                        </p>
                        <p>
                            <strong>���� ���ִ��� ������ ���� �����մϴ�</strong>
                            <span class="s_block">
                                ������ ���������� ������ �켱���� �����մϴ�. �������� �������� ���� �������� ����Ḧ ���� ��� �������ְ� ������ �� �ֵ��� ����մϴ�. ������ �������ַκ��� �Ѽ��� ���ϴٴ� ���� ��� �����Դϴ�.
                            </span>
                        </p>
                        <p>
                            <strong>�����ϰ� �����մϴ�</strong>
                            <span class="s_block">
                                �Ѽ��� â�� �̷� �������� ������ ���� ������ �� 1�ǵ� �������ϴ�. ������ �������� �������� �ٶ󺸴� ������ ������ �ƴ� �ŷڸ� �������� �̷��� �Բ� �ϴ� �θ��� �������� ���ϱ� �����Դϴ�. �װ��� �Ѽ��� �������� ������ �þ�� ���� �� �ϳ��Դϴ�.
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
                            <span class="s_block">25�� ���Ͽ�� ������ �帳�ϴ�.</span>
                        </h3>
                        <p>
                            <span class="s_block">����â�����ִ��� ���ͺ����� ������ ��ǰ ����, �����ý����� ���� </span>
                            <span class="s_block">���� ��Ʈ�ʸ� �����Ͻñ� �ٶ��ϴ�.</span>
                        </p>
                    </div>
                    <!-- //h3 -->
                    <!-- list_01 -->
                    <div class="hs_txt hs_01">
                        <h4 class="h4_tit">
                            <span class="s_block">������ �߽�</span>
                            <span class="s_block">�濵���� ����</span>
                        </h4>
                        <p>
                            <span class="s_block">SUPERVISOR(�����������)�� ���� ��������</span>
                            <span class="s_block">������� �濵������ ���ؼ� �������� ����� ������</span>
                            <span class="s_block">�ش�ȭ�� ���Ͽ� ���͵帳�ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_01 -->
                    <!-- list_02 -->
                    <div class="hs_txt hs_02">
                        <h4 class="h4_tit">
                            <span class="s_block">���� ���� ������� ��</span>
                            <span class="s_block">�����, ������ ����</span>
                        </h4>
                        <p>
                            <span class="s_block">1��, 8���� �ǽ��ϴ� ������������ ���� �Ⱓ����</span>
                            <span class="s_block">�������� ���޵Ǵ� ����� �� ��������簡</span>
                            <span class="s_block">3~10%(�Ϻ�ǰ�� ����) ���εǾ� ���޵ǹǷ� ��������</span>
                            <span class="s_block">���ο� ���� �߰� ���� �δ��� �����ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_02 -->
                    <!-- list_03 -->
                    <div class="hs_txt hs_03">
                        <h4 class="h4_tit">
                            <span class="s_block">�μ⹰(������,</span>
                            <span class="s_block"> ������ ��) ��������</span>
                        </h4>
                        <p>
                            <span class="s_block">�Ÿ޴� ��ÿ� ������� �ǽö����� ���� ������(4,000��),</span>
                            <span class="s_block">������ ���� �����Ͽ� �������� �ص帳�ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_03 -->
                    <!-- list_04 -->
                    <div class="hs_txt hs_04">
                        <h4 class="h4_tit">
                            <span class="s_block">��ǰ��� ������</span>
                            <span class="s_block"> ���̳ʽ� ����</span>
                        </h4>
                        <p>
                            <span class="s_block">�Ѽܰ� �ϳ������� �����Ͽ� �Ѽ� �������� �ǽø�</span>
                            <span class="s_block">��ǰ��� ������ ��Ȱ�ϰ� �Ͻ� �� �ֵ��� 500����</span>
                            <span class="s_block">�ѵ��� ���̳ʽ� ������ ������ �帳�ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_04 -->
                    <!-- list_05 -->
                    <div class="hs_txt hs_05">
                        <h4 class="h4_tit">
                            <span class="s_block">���� �� �ִ� �ְ� ǰ����</span>
                            <span class="s_block"> �����</span>
                        </h4>
                        <p>
                            <span class="s_block">HACCP������ ���� ��ü�κ��� ���� �� �ִ� �ְ�</span>
                            <span class="s_block">ǰ���� ��Ḧ �����ϰ� ��ǰ�ް� �ֽ��ϴ�. ����</span>
                            <span class="s_block">�������� �������� ��Ḧ ��ǰ�ϰ� ������ ö����</span>
                            <span class="s_block">��ǰ, �˼� �ý������� ǰ�� �� ���������� ������ ���ϰ� �ֽ��ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_05 -->
                    <!-- list_06 -->
                    <div class="hs_txt hs_06">
                        <h4 class="h4_tit">
                            <span class="s_block">�Ѽ� ���� �Ŵ����� ��</span>
                            <span class="s_block">���� �ҽ��� ���Ѽܹ䡯</span>
                        </h4>
                        <p>
                            <span class="s_block">20�Ⱓ ������ �Ѽ��� ��� ���Ͽ츦 ���� ����</span>
                            <span class="s_block">�Ŵ������� �����Ͽ� ���� â���� ������ �帮�� ����</span>
                            <span class="s_block">�ҽ����� ���� ���θ�� �� �Ÿ޴� �� ��Ÿ �߿��� ������</span>
                            <span class="s_block">������ �帳�ϴ�.</span>
                        </p>
                    </div>
                    <!-- //list_06 -->
                    <!-- list_07 -->
                    <div class="hs_txt hs_07">
                        <h4 class="h4_tit">���� ���� ����</h4>
                        <p>
                            <span class="s_block">���ľ� ������ ���� ���̶� �Ǹ��� �濵�ְ� �ǽ� ��</span>
                            <span class="s_block">�ֵ��� ���� ���� ���ǿ�  ������ �ǽ��� ���� ����̳�,</span>
                            <span class="s_block">����, ����, ����, ����, ȸ�� �� ��� �о߸� 3�ֵ���</span>
                            <span class="s_block">ü�������� ������ �帳�ϴ�.</span>
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
    <h2 class="more_tit">�� ���� �̾߱�</h2>
    <ul>
        <li>
            <a href="story.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_story.jpg" alt="�귣�� ���丮" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ���丮</h3>
                    <h3 class="h3_tit_o">�귣�� ���丮</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="philosophy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_philosophy.jpg" alt="�귣�� ö��" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ö��</h3>
                    <h3 class="h3_tit_o">�귣�� ö��</h3>
                </figcaption>
            </figure>
        </li>
        <li>
            <a href="legacy.go" class="more_link"></a>
            <figure>
                <span class="more_img">
                    <img src="assets/images/common/more_legacy.jpg" alt="�귣�� ����" />
                </span>
                <figcaption>
                    <h3 class="h3_tit">�귣�� ����</h3>
                    <h3 class="h3_tit_o">�귣�� ����</h3>
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
                <li class="first_be off"><a href="incruit.go">����ä��</a></li>
                <li class="off"><a href="partners.go">���¾�ü���</a></li>
                <li class="mo_bl"><a href="notice_list.go">��������</a></li>
                <li><a href="faq_list.go">�� ����</a></li>
                <li class="mo_bl"><a href="policy.go"><strong>����������޹�ħ</strong></a></li>
                <li><a href="agreement.go">�̿���</a></li>
            </ul>
        </div>
        <!--// family goods -->
		<div class="mark_webaward"><p><span class="blind">web award korea 2017 ����������о� ���2017</span></p></div><!-- 2018-01-11������帶ũ -->
        <!-- info -->
        <div class="ft_info_wrap">
            <!-- pc -->
            <div class="ft_info pc_info">
                <span class="first_be">��ǥ�̻�  �̿���</span>
                <span>����ڵ�Ϲ�ȣ  214-81-96569</span>
                <span>����� ������ ������� 318(���ﵿ) Ÿ��837���� 8,9��</span>
                <span>T.  02-585-1114</span>
                <span>F.  02-598-1116</span>
                <span class="first_be">E.  webmaster@hsd.co.kr</span>
                <span>�Ѽ� ���ö� ������  02-585-1114</span>
                <span>����â������ȸ  1811-0188</span>
                <span>��ü�ֹ�  1644-3288</span>
            </div>
            <!-- //pc -->
            <!-- mobile -->
            <div class="ft_info mo_info">
                <div class="mo_info_list">
                    <p class="btn_toggle">
                        <a href="#none">�Ѽ� ����� ����</a>
                    </p>
                    <div class="mo_info_on">
                        <span class="mo_bl">��ǥ�̻�  �̿���</span>
                        <span>����ڵ�Ϲ�ȣ  214-81-96569</span>
                        <br/>
                        <span class="mo_bl">����� ������ ������� 318(���ﵿ) Ÿ��837���� 8,9��</span>
                        <br/>
                        <span class="mo_bl">T.  02-585-1114</span>
                        <span>F.  02-598-1116</span>
                        <br/>
                        <span class="mo_bl">E.  webmaster@hsd.co.kr</span>
                        <div class="mo_info_call">
                            <dl>
                                <dt>�Ѽ� ������</dt>
                                <dd>02-585-1114</dd>
                            </dl>
                            <dl>
                                <dt>����â������ȸ</dt>
                                <dd>1811-0188</dd>
                            </dl>
                            <dl>
                                <dt>��ü�ֹ�</dt>
                                <dd>1644-3288</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //mobile -->

            <p class="copyright">COPYRIGHT<span>&copy;</span>���Ѽ�. ALL RIGHTS RESERVED.</p>

            <div class="ft_sns">
                <a href="https://www.instagram.com/hansot_official/" target="_blank" title="�� â ����" class="sns_insta_02" target="_blank" title="�� â ����" ><span class="blind">instagram</span></a>
                <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" class="sns_face_02" target="_blank" title="�� â ����" ><span class="blind">facebook</span></a>
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