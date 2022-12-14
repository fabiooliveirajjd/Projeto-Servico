
function maskMoney(componente){
jQuery(function($) {
$(componente).unmaskMoney();
$(componente).maskMoney({
symbol : "",
showSymbol : true,
thousands : ".",
decimal : ",",
symbolStay : true
});
});
}
(function($) {
$.fn.maskMoney = function(settings) {
settings = $.extend({
symbol: "US$",
decimal: ".",
thousands: ",",
showSymbol:true
}, settings);

settings.symbol=settings.symbol+" ";

return this.each(function(){
var input=$(this);
function money(e){
e=e||window.event;
var k=e.charCode||e.keyCode||e.which;
if (k == 9){
return true;
}
if (k == 8) {
preventDefault(e);
var x = input.val().substring(0,input.val().length-1);
input.val(maskValue(x));
return false;
}
if((k < 48 || k > 57)){
preventDefault(e);
return true;
}
var key = String.fromCharCode(k); // Valor para o c�digo da Chave
preventDefault(e);
input.val(maskValue(input.val()+key));
}

function preventDefault(e){
if (e.preventDefault){ //standart browsers
e.preventDefault()
}else{ // internet explorer
e.returnValue = false
}
}

function maskValue(v){
v = v.replace(settings.symbol,"");
var a = "";
var strCheck = "0123456789";
var len = v.length;
var t = "";
if (len== 0){
t = "0.00";
}
for(var i = 0; i < len; i++)
if ((v.charAt(i) != "0") && (v.charAt(i) != settings.decimal)) break;

for(; i < len; i++){
if (strCheck.indexOf(v.charAt(i))!=-1) a+= v.charAt(i);
}
if(a.length==0){t = "0.00";}
else if (a.length==1){t = "0.0" + a;}
else if (a.length==2){t = "0." +a;}
else{
var part1 = a.substring(0,a.length-2);
var part2 = a.substring(a.length-2);
t = part1 + "." + part2;
}
var p, d = (t=t.split("."))[1].substr(0, 2);
for(p = (t=t[0]).length; (p-=3) >= 1;) {
t = t.substr(0,p) + settings.thousands + t.substr(p);
}
return setSymbol(t+settings.decimal+d+Array(3-d.length).join(0));
}

function focusEvent(){
if(input.val()==""){
input.val(setSymbol("0"+settings.decimal+"00"));
}
else{
input.val(setSymbol(input.val()));
}
}

function blurEvent(){
input.val(input.val().replace(settings.symbol,""))
}

function setSymbol(v){
if(settings.showSymbol){
return settings.symbol+v;
}
return v;
}

input.bind("keypress",money);
input.bind("blur",blurEvent);
input.bind("focus",focusEvent);

input.one("unmaskMoney",function(){
input.unbind("focus",focusEvent);
input.unbind("blur",blurEvent);
input.unbind("keypress",money);
if ($.browser.msie)
this.onpaste= null;
else if ($.browser.mozilla)
this.removeEventListener("input",blurEvent,false);
});
});
}

$.fn.unmaskMoney=function(){
return this.trigger("unmaskMoney");
};
})(jQuery);