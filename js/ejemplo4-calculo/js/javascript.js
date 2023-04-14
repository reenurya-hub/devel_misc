function calcular(){
    var num1 = document.getElementById("num1").value
    var num2 = document.getElementById("num2").value
    var oper = document.getElementById("oper").value
    var result = 0
    //console.log('Aca imprime nombre', nombre)
    
    if(isNaN(parseFloat(num1)) || isNaN(parseFloat(num2))){
        alert("Tiene numeros nulos o vacíos!");
    }

    switch (oper) {
        case 'suma':
          result = parseFloat(num1) + parseFloat(num2)
          break;
        case 'resta':
            result = parseFloat(num1) - parseFloat(num2)
            break;
        case 'multi':
            result = parseFloat(num1) * parseFloat(num2)
            break;
        case 'divid':
            if(parseFloat(num2)==0){
                alert('error de división por cero!')      
            }else{
            result = num1 / num2
            }
            break;
        default:
          alert('error!')
          break;
      }
      alert(result)
}