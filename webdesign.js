/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function checkPassword(){
    var password1 =document.getElementById("password1").innerHTML;
    var password2 = document.getElementById("password2").innerHTML;
    var confirmation = document.getElementById("confirmation").innerHTML;
    if (document.getElementById("password1") === document.getElementById("password2"))
        confirmation.innerHTML = "password match";
    else
        confirmation.innerHTML = "password not match";
    
}


