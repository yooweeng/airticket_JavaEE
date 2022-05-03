       var x=document.getElementById('login');
        var y=document.getElementById('register');
        var z=document.getElementById('btn');
        function register()
        {
            x.style.left="-660px";
            y.style.left='210px';
            z.style.left='110px';
        }
        function login()
        {
            x.style.left="210px";
            y.style.left='710px';
            z.style.left='0px';
        }
                
        function validate() {
            let first_name = document.getElementById("first_name").value;
            let last_name = document.getElementById("last_name").value;      
            let email = document.getElementById("email").value;
            let password1 = document.getElementById("password1").value;
            let password2 = document.getElementById("password2").value;
            let error_message = document.getElementById("error_message");
            let text;
            
            if(first_name.length < 3){
                text = "Please enter your correct VALID First Name (3 characters)";
                error_message.style.padding = "10px";
                error_message.innerHTML = text;
                return false;
            }
            if(last_name.length < 3){
                text = "Please enter your correct VALID Last Name (3 characters)";
                error_message.style.padding = "10px";
                error_message.innerHTML = text;
                return false;
            }
            if(email.indexOf("@") == -1 || email.indexOf(".") == -1 || email.length < 6){
            error_message.style.padding = "10px";
                text = "Please enter a VALID Email";
                error_message.innerHTML = text;
                return false;
            }
            if(password1 != password2){
            error_message.style.padding = "10px";
                text = "Password is different. Please check your password";
                error_message.innerHTML = text;
                return false;
            }
                return true;
        }