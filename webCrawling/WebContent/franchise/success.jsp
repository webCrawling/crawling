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

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="22ae22c2-21e3-4ad4-b776-68a154ffd3bd" /><title>��������</title>

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
    <div id="container" class="sub_page">
        
<div class="content franchise success">
    <section class="success_list">
        <!-- �������� -->
        <div class="suc_wrap">
            <h2 class="h2_tit h2_01">��������</h2>
            <div class="suc_cont">
                <!-- �������� intro -->
                <div class="suc_title">
                    <p class="fz_02">
                        <span class="s_block">�Ѽܵ��ö� 20�ֳ� ���</span>
                        <span class="s_block">����������</span>
                    </p>
                    <p class="fz_02">
                        <span class="s_block">������ ���� ���丮�� ������</span>
                        <span class="s_block">�����۵��Դϴ�</span>
                    </p>
                </div>
                <!-- //�������� intro -->
                <!-- list -->
                <div class="suc_list_wrap mo_version">
                    <ul>
                        <li>
                            <p class="suc_prime grand"><span>���</span></p>
                                <div class="suc_list_cnt">
                                <!-- ����/���� -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">��������</span>
                                    <h3 class="h3_tit fz_02">�Ѽܰ� �Բ� ���ǿ���</h3>
                                </div>
                                <!-- //����/���� -->
                                <p class="suc_txt">
                                    ���� 30���� �� �Ķ������߽��ϴ�. ��ӵǴ� �������, ��������� ���Ѻ� ��������. ���� �ٽ� �Ͼ �� �Ѽܰ� �Բ� �����ϴ�. 
������ �� ������ ��ϰ� �ִ� ����, ���� �Ѽܰ� �Բ� ���ǿ����� ���� �޸��� �ֽ��ϴ�.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/66a2c273f0ab46f6a89c6352ccb1596d20171019102947.jpg" alt="��������" />
                                </span>
                                <!-- //img -->
                                <!-- ��ư -->
                                <div class="btn_wrap">
                                    
                                </div>
                                <!-- //��ư -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>�ֿ����</span></p>
                                <div class="suc_list_cnt">
                                <!-- ����/���� -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">����û����</span>
                                    <h3 class="h3_tit fz_02">�� 2�� ������</h3>
                                </div>
                                <!-- //����/���� -->
                                <p class="suc_txt">
                                    ���� ������ �븮�� â��, ����Ʈ ���� �װ��� ù ��° �����⿴���ϴ�. 
������ �� ���� ��ģ ������� �������, IMF����. �쿬�� �Ѽ��� ���� ��, ���� ��꿡�� �� 2�� �����⸦ ������ �ֽ��ϴ�.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/7fd13ab70a8745b3898e343d35dd096020171019102916.jpg" alt="����û����" />
                                </span>
                                <!-- //img -->
                                <!-- ��ư -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //��ư -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>�ֿ����</span></p>
                                <div class="suc_list_cnt">
                                <!-- ����/���� -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">���ֱ�����</span>
                                    <h3 class="h3_tit fz_02">�Ѽܹ� ����</h3>
                                </div>
                                <!-- //����/���� -->
                                <p class="suc_txt">
                                    ������ ȸ�縦 �׸� �ξ����ϴ�. �׸��� ���ó�� �Ѽ��� �������ϴ�. 
��ħ ���� ��ó�� �޽Ľ��� ���� ���б��� ����� �� ����, ���� �Ѽܹ� ������ �Ҹ��� �ֽ��ϴ�. 
15���� ���� ����, �Ѽܹ� �ҸӴϰ� �Ǿ�� �ູ�մϴ�.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/1fae0d27c15e4b6688b5a59e7be9a54220171019102904.jpg" alt="���ֱ�����" />
                                </span>
                                <!-- //img -->
                                <!-- ��ư -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //��ư -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        <li>
                            <p class="suc_prime"><span>�ֿ����</span></p>
                                <div class="suc_list_cnt">
                                <!-- ����/���� -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">ȭ��Žð�����</span>
                                    <h3 class="h3_tit fz_02">������ �λ�</h3>
                                </div>
                                <!-- //����/���� -->
                                <p class="suc_txt">
                                    2006�� �ܿ�, ��� �Ѽ� ������� �� ���� �� �λ��� �ٲ���ҽ��ϴ�.
������Ȱ, ������â���� �����ִ� ������ �Ѽܵ��ö� ��� ���ϼ̴� ���Դϴ�. 
�� ���� 10���� ���� ����, �� �λ��� �� ���� ��ó�� �����մϴ�.</p>
                                <!-- img -->
                                <span class="suc_img s_block">
                                    <img src="https://www.hsd.co.kr/images/cc1461514d4840609471d549b2ed6a6620171019102728.jpg" alt="ȭ��Žð�����" />
                                </span>
                                <!-- //img -->
                                <!-- ��ư -->
                                <div class="btn_wrap">
                                </div>
                                <!-- //��ư -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        </ul>
                </div>
                <!-- //list -->
            </div>
        </div>
        <!-- //�������� -->
    </section>
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