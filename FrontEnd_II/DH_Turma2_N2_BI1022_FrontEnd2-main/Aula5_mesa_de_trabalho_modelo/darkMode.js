let darkMode = document.querySelector('darkMode')
console.log(darkMode)

confirm('Voc quer aplicar o modo escuro?')
if(confirm == true){
    darkMode.style.backgroundColor =  'rgb(39, 39, 39)'
};

onkeyup = function (item) {
    console.log(item);
   // console.log("Uma tecla foi pressionada");
