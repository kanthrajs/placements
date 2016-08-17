



function validate(){
var username = document.getElementById("uname").value;
var password = document.getElementById("password").value;
if ( username == "admin" && password == "123"){
alert ("Login successfully");
window.location.href="add-company.html";
return true;
}
else{

alert("incorrect login");
// Disabling fields after 3 attempts.
return false;
}
}

     function password() {
    var pass1 = document.getElementById("pwd").value;
    var pass2 = document.getElementById("pwd1").value;
    var ok = true;
    if (pass1 != pass2) {
        alert("Passwords Do not match");
        document.getElementById("pass1").style.borderColor = "#E34234";
        document.getElementById("pass2").style.borderColor = "#E34234";
        ok = false;
    }
    else {
        alert("Passwords Match!!!");
    }
    return ok;


    

