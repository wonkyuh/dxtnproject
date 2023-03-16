$(document).ready(function() {

	$('#submit1').on("click", function() {
		var regForm = $("form[name='regForm'] .chk").length;

		for (var i = 0; i < regForm; i++) {

			if ($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null) {

				alert($(".chk").eq(i).attr("title") + "은 필수로 입력하세요.");

				$(".chk").eq(i).focus();

				return true;
			}

		}

		$("form[name='regForm']").submit();
	});



	$(".pwdComp").on("click", function(e) {
		var pwd = 'admin';
		var inpwd = prompt("비밀번호를 입력하세요 ?");
		if (pwd == inpwd) {
			if (e.target.id == 'up') {
				$("form[name='contentForm']").attr("action", "employUpdatePage");
				$("form").submit();
			} else if (e.target.id == 'del') {
				var curentPg = $('input[name=curentPg]').val();
				var yn = confirm("정말 삭제할 건가요?");
				if (yn == true) {
					$("form[name='contentForm']").attr("action", "employDel");
					$("form").submit();
				}
				else {
					return false;
				}
			} else if(e.target.id == 'write'){
				location.href="employWritePage";
			}
		}
	});

	$('#reply').click(function() {
		$("form[name='contentForm']").attr("action", "employWrite");
		$("form[name='contentForm']").submit();
	});


});
function getContent(no) {
	var tForm = $("form[name='tForm']")
	$("#eno").attr('value', no);
	tForm.attr("action", "employCont");
	tForm.submit();
}
