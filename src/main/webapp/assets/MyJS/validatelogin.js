function validateLoginForm() {
        let emailId = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let emailIdCheck = /^[A-Za-z0-9_.]{3,}@[A-Za-z]{3,}[.]{1}[.com]{3}$/;
        let passwordCheck = /^(?=.*[0-9])[A-Za-z0-9]{6,10}$/;

        if(emailIdCheck.test(emailId)){
        document.getElementById("emailError").innerHTML = "";
    }else{
        document.getElementById("emailError").innerHTML = "**Please enter valid emailid";
        return false;
    }

    if(passwordCheck.test(password)){
        document.getElementById("passwordError").innerHTML = "";
    }else{
        document.getElementById("passwordError").innerHTML = "**Please enter  password ";
        return false;
    }
        
       
        
    }