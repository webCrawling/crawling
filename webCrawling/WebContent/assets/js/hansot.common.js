$(function(){
    // 紐⑤몢�숈쓽
    $('#all_agree').click(function(){
        if($(this).is(":checked")){
            $("#regForm :checkbox").prop("checked", true);
        } else{
            $("#regForm :checkbox").prop("checked", false);
        }
    });

    $(".ad_wrap :checkbox").not(":eq(0)").click(function(){
       if($("#agree_01").is(":checked") && $("#agree_02").is(":checked") && $("#agree_03").is(":checked")){
           $("#all_agree").prop("checked", true);
       }else{
           $("#all_agree").prop("checked", false);
       }
    });

    // �쒕룄, 援곌뎄, �먰룷紐낆꽑��
    if($("#sido").length > 0) {
        searchSido();

        $("#sido").on("change", function () {
            searchGungoo();
        });
    }
    if($("#store").length > 0){
        $("#gungoo").on("change", function () {
            searchStore();
        });
    }

});


// �곷떞援щ텇
function searchCode(cd, id, type){
    $.getJSON("/api/find/code/" + cd, function(data){
        $.each(data,function(key,val){
            if(type == "radio"){
                $("#" + id).append('<label><input type="radio" name="' + id + '" value="' + val['idx'] + '"><span>' + val['cval'] + '</span></label>');
            }else {
                $("#" + id).append("<option value='" + val['idx'] + "'>" + val['cval'] + "</option>");
            }
        });

        if(type == "radio"){
            $("#" + id).find("input:eq(0)").prop("checked", "checked");
        }
    });
}

// �쒕룄
function searchSido(){
    $.getJSON("/api/find/sido", function(data){
        $.each(data,function(key,val){
            $("#sido").append("<option value='" + val['sidoCode'] + "'>" + val['sidoName'] + "</option>");
        });
    });
}

// 援곌뎄
function searchGungoo(){
    var sido = $("#sido").val();
    if(sido == "") return;

    $.getJSON("/api/find/sido?sido=" + sido, function(data){
        $("#gungoo > option").not(":eq(0)").remove();
        $("#store > option").not(":eq(0)").remove();
        $.each(data,function(key,val){
            $("#gungoo").append("<option value='" + val['gungooCode'] + "'>" + val['gungooName'] + "</option>");
        });
    });
}

// 留ㅼ옣
function searchStore(){
    var sido = $("#sido").val();
    var gungoo = $("#gungoo").val();
    if(sido == "" || gungoo == "") return;

    $.getJSON("/api/find/store?sido=" + sido + "&gungoo=" + gungoo, function(data){
        $("#store > option").not(":eq(0)").remove();
        $.each(data,function(key,val){
            $("#store").append("<option value='" + val['name'] + "'>" + val['name'] + "</option>");
        });
    });
}

// �좎쭨�щĸ蹂�寃�
function getFormattedDate(date) {
    var year = date.getFullYear();

    var month = (1 + date.getMonth()).toString();
    month = month.length > 1 ? month : '0' + month;

    var day = date.getDate().toString();
    day = day.length > 1 ? day : '0' + day;

    return year + '-' + month + '-' + day;
}

// 二쇱냼李얘린
function searchAddress(){
    new daum.Postcode({
        oncomplete: function(data) {
            // �앹뾽�먯꽌 寃��됯껐怨� ��ぉ�� �대┃�덉쓣�� �ㅽ뻾�� 肄붾뱶瑜� �묒꽦�섎뒗 遺�遺꾩엯�덈떎.
            // �덉젣瑜� 李멸퀬�섏뿬 �ㅼ뼇�� �쒖슜踰뺤쓣 �뺤씤�� 蹂댁꽭��.
            $("#zipcode").val(data.zonecode).trigger('focusin');
            $("#addr1").val(data.roadAddress).trigger('focusin');
            $("#addr2").focus();
        }
    }).open();
}

// �덉씠�댄뙘�낅쓣�곌린
var currentLayer = null;
function openLayerPopup(target){
    currentLayer = $("#"+target);
    var tx = ($(window).width()- currentLayer.width())/2;
    var ty = ($(window).height()- currentLayer.height())/2;
    var dimLayerConfig = {
        'display' : 'none',
        'position' : 'fixed',
        'left' : 0,
        'right' : 0,
        'top' : 0,
        'bottom' : 0,
        'background' : '#000',
        'z-index' : 9999,
        'opacity' : .8
    };

    currentLayer.css({left:tx + 'px', top:ty + 'px'}).show();
    $("body").append('<div class="dim-layer">').css("overflow", "hidden");
    $(".dim-layer").css(dimLayerConfig).show();
}

// �덉씠�댄뙘�� ��젣
function closeLayerPopup(){
    $(".dim-layer").remove();
    currentLayer.hide();
    $("body").css("overflow","auto");
}

// �대��꾪솕踰덊샇 '-' 異붽�
function autoHypenPhone(str){
  str = str.replace(/[^0-9]/g, '');
  var tmp = '';
  if( str.length < 4){
    return str;
  }else if(str.length < 7){
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3);
    return tmp;
  }else if(str.length < 11){
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3, 3);
    tmp += '-';
    tmp += str.substr(6);
    return tmp;
  }else{
    tmp += str.substr(0, 3);
    tmp += '-';
    tmp += str.substr(3, 4);
    tmp += '-';
    tmp += str.substr(7);
    return tmp;
  }
  return str;
};
