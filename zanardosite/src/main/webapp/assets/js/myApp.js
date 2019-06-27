$(function() {

	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');

	if(token.length > 0 && header.length > 0){
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(header, token);
			
		});
	}
	
	switch (menu) {

		case '- Orçamentos':
			$('#orcamento').addClass('active');
			break;
		default:
			$('#home').addClass('active');
			break;
	}

	// Validation Login
	var $loginForm = $('#loginForm');
	if($loginForm.length){
		
		$loginForm.validate({
			rules : {
				username : {
					required: true
				},
				password: {
					required: true
				}
			},
			messages : {
				username : {
					required: 'Login é obrigatório'
				},
				password : {
					required: 'A senha é obrigatória'
				}
			},
			errorElement: 'em',
			errorPlacement: function(error, element){
				error.addClass('help-block');
				error.insertAfter(element);
			}
		});
		
	}
	
    $.fn.onlyNumber = function () {
        return this.each(function () {
            $(this).keypress(function (e) {
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 32) {
                    return false;
                }
            });
        });
    };

    $('.onlyNumber').onlyNumber();
	
});


