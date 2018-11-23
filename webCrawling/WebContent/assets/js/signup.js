
function validate(){

	var check=/^[a-zA-Z0-9]{4,12}$/; // 아이디, 비밀번호, 비밀번호 확인 유효성검사
	var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //메일주소 유효성검사

	var id=document.getElementById("memId");
	var pass=document.getElementById("newPassword");
	var passcheck=document.getElementById("newPasswordRe");
	var email = document.getElementById("email");
	var name=document.getElementById("phone");

//	아이디 입력 안 했을때
	if(id.value==""){
		alert("아이디를 입력해주세요.");
		id.focus();
		return false;

	}
//	아이디 정규식 체크
	if(check.test(id.value)){

		//return true;
	}else {
		alert("아이디가 잘못된 형식입니다. 다시 입력해주세요.");
		id.value="";
		id.focus();
		return false;
	}

	// 비밀번호 입력 안했을때
	if(pass.value==""){
		alert("비밀번호를 입력해주세요.");
		pass.focus();
		return false;
	}

	//비밀번호 정규식 체크
	if(check.test(pass.value)&&id.value!=pass.value){
		//정규식 체크를 통과하고 아이디와같지 않을때 통과
		//return true;
	}else{

		if(id.value==pass.value)
		{
			alert("아이디와 비밀번호가 일치합니다. 다시 입력해주세요.");
			pass.value="";
			pass.focus();
			return false;
		}else{

			alert("비밀번호가 잘못된 형식입니다. 다시 입력해주세요.");
			pass.value="";
			pass.focus();
			return false;
		}

	}
	// 비밀번호 확인란 입력 안했을 때
	if(passcheck.value==""){
		alert("비밀번호 확인란에 입력해주세요.");
		passcheck.focus();
		return false;
	}

	//비밀번호 확인 정규식 체크
	if(check.test(passcheck.value)&&pass.value==passcheck.value){
		//return true;
	}else {

		alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
		passcheck.value="";
		passcheck.focus();
		return false;
	}

	// 이메일 입력 안했을 때
	if(email.value=="")
	{
		alert("이메일을 입력해 주세요");
		email.focus();
		return false;
	}
	// 이메일 정규식 체크
	if(!check2(emailCheck, email, "적합하지 않은 이메일 형식입니다."))
	{
		return false;
	}
	
	//핸드폰 번호 입력 안했을 때
	if(phone.value=="")
	{
		alert("이메일을 입력해 주세요");
		phone.focus();
		return false;
	}

}

function checkingId(){
	alert("헤헤");
	return true;
}
