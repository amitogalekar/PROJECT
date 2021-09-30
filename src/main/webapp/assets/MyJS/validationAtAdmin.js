function validateAddCategoryForm() {
        let category = document.getElementById("category").value;
        

        if(category==""){
		document.getElementById("categoryError").innerHTML = "**Please enter valid Category name";
        return false;
    }else{
        document.getElementById("categoryError").innerHTML = "";
       
    }  
    }

function validateAddProductForm() 
{
    let pname = document.getElementById("pname").value;
    let cataId = document.getElementById("cataId").value;
    let price = document.getElementById("pprice").value;
    let image = document.getElementById("pimage").value;
    

    let productNameCheck = /^[A-Za-z.0-9 ]{4,30}$/;
    let priceCheck = /^[1-9]{1,20}$/;

    if(productNameCheck.test(pname)){
        document.getElementById("pnameError").innerHTML = "";
    }else{
        document.getElementById("pnameError").innerHTML = "**Please enter valid product name";
        return false;
    }
    if(cataId==""){
		document.getElementById("cataidError").innerHTML = "**Please select valid category";
        return false;
        
    }else{
		document.getElementById("cataidError").innerHTML = "";
        
    }


    if(priceCheck.test(price)){
        document.getElementById("priceError").innerHTML = "";
    }else{
        document.getElementById("priceError").innerHTML = "**Please enter valid price ";
        return false;
    }

	
    if(image==""){
		document.getElementById("imageError").innerHTML = "**Please select image ";
        return false;
        
    }else{
		document.getElementById("imageError").innerHTML = "";
        
    }
	
	

	
	
	
    
   
    
}