function validationRegForm() 
{
    let firstName = document.getElementById("firstName").value;
    let lastName = document.getElementById("lastName").value;
    let email = document.getElementById("email").value;
    let address = document.getElementById("address").value;
    let pincode = document.getElementById("pincode").value;
    let city = document.getElementById("city").value;
    let mobNo = document.getElementById("mobNo").value;
    let password = document.getElementById("password").value;
    let confirmPassword = document.getElementById("confirmPassword").value;

    let userNameCheck = /^[A-Za-z. ]{3,30}$/;
    let passwordCheck = /^(?=.*[0-9])[A-Za-z0-9]{6,10}$/;
    let emailCheck = /^[A-Za-z0-9_.]{3,}@[A-Za-z]{3,}[.]{1}[.com]{3}$/;
    let mobnoCheck = /^[789]{1}[0-9]{9}$/;
    let addressCheck = /^[A-Za-z0-9 ,.]{6,50}$/;
    let pincodeCheck =/^[4]{3}[6]{1}[0]{1}[1-9]{1}$/;
    let cityCheck = /^[A-Za-z.]{3,50}$/;

    if(userNameCheck.test(firstName)){
        document.getElementById("firstNameError").innerHTML = "";
    }else{
        document.getElementById("firstNameError").innerHTML = "**Please enter valid first name";
        return false;
    }
    if(userNameCheck.test(lastName)){
        document.getElementById("lastNameError").innerHTML = "";
    }else{
        document.getElementById("lastNameError").innerHTML = "**Please enter valid last name";
        return false;
    }


    if(addressCheck.test(address)){
        document.getElementById("addressError").innerHTML = "";
    }else{
        document.getElementById("addressError").innerHTML = "**Please enter valid address ";
        return false;
    }
	
	if(mobnoCheck.test(mobNo)){
        document.getElementById("mobNoError").innerHTML = "";
    }else{
        document.getElementById("mobNoError").innerHTML = "**Please enter valid mobile number";
        return false;
    }

	if(emailCheck.test(email)){
        document.getElementById("emailError").innerHTML = "";
    }else{
        document.getElementById("emailError").innerHTML = "**Please enter valid emailid";
        return false;
    }

	if(passwordCheck.test(password)){
        document.getElementById("passwordError").innerHTML = "";
    }else{
        document.getElementById("passwordError").innerHTML = "**Please enter valid password must contain at least one digit";
        return false;
    }

    if(confirmPassword.match(password)){
        document.getElementById("confirmPasswordError").innerHTML = "";
    }else{
        document.getElementById("confirmPasswordError").innerHTML = "**Password not mached";
        return false;
    }
	
	if(cityCheck.test(city)){
        document.getElementById("cityError").innerHTML = "";
    }else{
        document.getElementById("cityError").innerHTML = "**Please enter valid city";
        return false;
    }
	
    
    if(pincodeCheck.test(pincode)){
        document.getElementById("pincodeError").innerHTML = "";
    }else{
        document.getElementById("pincodeError").innerHTML = "**Please enter valid pincode";
        return false;
    }
    
    

    

    



    
    
}