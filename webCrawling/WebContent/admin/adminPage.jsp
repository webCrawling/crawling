<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <meta name="_csrf_parameter" content="_csrf" /><meta name="_csrf_header" content="X-CSRF-TOKEN" /><meta name="_csrf" content="3caca266-b988-4ce5-a3db-343784207d4a" /><title>관리자 페이지</title>

    <link rel="icon" href="assets/images/common/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/ui.common.css" />
<link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="assets/css/ui.menu.css" />

</head>
<body>

<div class="logout_container">
<a href="javascript:location.href='logout.do'" id="logout"/><img src="images/logout.png" style="width:21px"> logout </a>
</div>

<div id="my_container" class="my_sub_page" >


<h1 class="my_h1"> Administrator page </h1> 

</div>

<div class="my_container2">
 <a href="javascript:location.href='memberList.am'" id="a1"> <img src="images/group.png" style="width:48px"> &nbsp; 회원 관리</a>    <a href="deliver_admin.am" id="a2"> <img src="images/delivery.png" style="width:48px"> &nbsp;배달 관리</a> 
</div>





	
</body>
</html>