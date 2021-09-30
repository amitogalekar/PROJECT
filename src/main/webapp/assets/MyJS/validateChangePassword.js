function validateChangePwdForm() {
        
        let oldPassword = document.getElementById("old_password").value;
		let newPassword = document.getElementById("new_password").value;
		let confirmPassword = document.getElementById("cnfrm_password").value;
        let passwordCheck = /^(?=.*[0-9])[A-Za-z0-9]{6,10}$/;

        
    if(passwordCheck.test(oldPassword)){
        document.getElementById("old_passwordError").innerHTML = "";
    }else{
        document.getElementById("old_passwordError").innerHTML = "**Please enter  password ";
        return false;
    }

	if(passwordCheck.test(newPassword)){
        document.getElementById("new_passwordError").innerHTML = "";
    }else{
        document.getElementById("new_passwordError").innerHTML = "**Please enter  password ";
        return false;
    }

	if(confirmPassword.match(newPassword)){
        document.getElementById("cnfrm_passwordError").innerHTML = "";
    }else{
        document.getElementById("cnfrm_passwordError").innerHTML = "**Confirm password not matched ";
        return false;
    }
        
       
        
    }