	function validate(){
	       let emailId = document.getElementById("email").value;
	        let emailIdCheck = /^[A-Za-z0-9_.]{3,}@[A-Za-z]{3,}[.]{1}[.com]{3}$/;
	       

	        if(emailIdCheck.test(emailId)){
	        document.getElementById("emailError").innerHTML = "";
	    }else{
	        document.getElementById("emailError").innerHTML = "**Please enter valid emailid";
	        return false;
	    }

	  
	}
	
	
	$("#frm").on("submit",function (event) {

    event.preventDefault();
    let f = $(this).serialize();
	console.log(f)
    $.ajax({
        url:"SendOTP",
        data:f,
        type:'POST',
		 dataType: 'json',
        success:function (data,textStatus,jqXHR) {
			let obj = data;
			console.log(obj);
            if(obj.Status==="Success"){
				window.location.href = "getOTP.jsp";
				console.log("I am in xxxxxxxx");
	
			}else{
				Swal.fire({
  				icon: 'error',
  				title: 'Oops...',
  				text: 'Something went wrong!',
				})
}
			
            
        },
        error:function name(params) {
            console.log("Fail");
            
        }
    })
    
})

