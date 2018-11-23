<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html><html>
<head>
<meta charset="utf-8">
<title>order_draft</title>
</head>
<body>


<form id="form1" name="form1" method="post" action="order2.or" onsubmit="submit1(this);">
<!-- row 1 -->
<input type="checkbox" name="check" value="치킨마요 도시락" />치킨마요 도시락 : 4000원
<input type="hidden" name="field" value="4000" />
<input type="text" name = "num" style="visibility:hidden;" /><br>

<!-- row 2 -->
<input type="checkbox" name="check" value="김치찌개 도시락" />김치찌개 도시락 : 4700원
<input type="hidden" name="field" value="4700" />
<input type="text" name = "num" style="visibility:hidden;" /><br>
<!-- row 3 -->
<input type="checkbox" name="check" value="돈가스 덮밥 도시락" />돈가스 덮밥 도시락 : 4800원
<input type="hidden" name="field" value="4800" />
<input type="text" name = "num" style="visibility:hidden;" /><br>
<!-- row 4 -->
<input type="checkbox" name="check" value="동백 도시락" />동백 도시락 : 6800원
<input type="hidden" name="field" value="6800" />
<input type="submit" name="Submit" id="button" value="Submit" />
<input type="text" name = "num" style="visibility:hidden;" /><br>
</form>





<!-- ... -->
<script language='JavaScript'>
function submit1(f)
{
    //같이 보낼 값 정리
    if (typeof(f.elements['check'].length) == 'undefined') // 체크박스의 갯수가 1개 있을경우(=배열이 아닐 경우)
    {	
        if (f.elements['check'].checked==false)
        {
            f.elements['field'].disabled=true;
        }
    } else { 												// 체크박스의 개수가 2개 이상일 경우(=배열일 경우)
        for (i=0; i<f.elements['check'].length; i++)
        {
            if (f.elements['check'][i].checked==false)
            {
                f.elements['field'][i].disabled=true;
            }
        }
    }
    
    //-----------------
   submit2(f);
    
    return true;
}

function submit2(f){
	  for (i=0; i<f.elements['check'].length; i++)
      {
          if (f.elements['check'][i].checked)
          {
              f.elements['num'][i].style.visibility = "visible";
          }
      }
} 




</script>



</body>
</html>