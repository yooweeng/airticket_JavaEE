
function validate() {
    let name = document.getElementById("name").value;
    let phone = document.getElementById("phone").value;
    let email = document.getElementById("email").value;
    let message = document.getElementById("message").value;
    let error_message = document.getElementById("error_message");
    error_message.style.padding = "10px";
    let text;
    if(name.length < 5){
        text = "Please enter your correct VALID Name (5 characters)";
        error_message.innerHTML = text;
        return false;
    }
    if(isNaN(phone) || phone.length != 11){
        text = "Please enter your correct VALID Phone Number";
        error_message.innerHTML = text;
        return false;
    }
    if(email.indexOf("@") == -1 || email.indexOf(".") == -1 || email.length < 6){
        text = "Please enter your correct VALID Email";
        error_message.innerHTML = text;
        return false;
    }
    if(message.length <= 10){
        text = "Please Enter Message More Than 10 Characters";
        error_message.innerHTML = text;
        return false;
    }
    alert("Your Message is Submitted Successfully!");
        return true;
}