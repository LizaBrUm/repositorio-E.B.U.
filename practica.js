//Mi primera practica en Java Script 
// -Comentario
/* Comentario Multilìnea*/
// Autor: Elizabeth Bravo 
const nombre = 'Elizabeth Bravo';
var tipo_doc = '11 05 2005';

let edad= 16;
console.log ('Helllo '+nombre+'. Your document is: '+tipo_doc+' Yoo are '+edad);
document.write  // para escribir en el documento
let anyos = "16";
let years = parseInt(anyos);
let comparacion = edad===anyos;
console.log (comparacion);
console.log (edad+anyos);
console.log (edad+years);
console.log (years>=edad);

/* 10/11/2005 */
let suma = 0;
suma = suma + 1;
console.log (suma);
suma = suma + 0;
console.log (suma);
suma = suma + 1;
console.log (suma);
suma = suma + 1;
console.log (suma);
suma = suma + 2;
console.log (suma);
suma = suma + 0;
console.log (suma);
suma = suma + 0;
console.log (suma);
suma = suma + 5;

/*Operaciones con Java Script */
//Adicion 
let adicion = 2 + 4;
//Sustraccion 
let sustraccion = 5 - 2;
//Multiplicacion 
let producto = 3 * 5;
//Division 
let division = 8 / 4; 
console.log (adicion, sustraccion, producto, division);

/*Modulo*/
let modulo = 9 % 4;
let modulo1 = 9 % 3;
console.log (modulo, modulo1);

 //Operadores logicos JavaScript 
/*Y = && Conjuncion
O = || Desjuncion*/

/*&&
true && true = true;
true && false = false;
false && true = false;
false && false = false;
|| 
true || true = true ;
true || false = true;
false || true = true;
false || true = false;*/

let condicion = 5;
let condicion1 = 4;
 if (condicion>condicion1) {
     console.log ("Hola Mundo");
 }
//Crear un pograma que diga que operacion hacer entre 2 numeros
alert ("Hola World");
let nume = prompt(parseInt("Escribe un nemero"));
let dat = (nume/2);
console.log (dat);

alert ("Hello World ")
let numb = prompt(parseInt("Escribe un digito"));
let dato = prompt(parseInt("Escribe un segundo digito"));
if (numb<dato) {
    console.log (numb * dato);
}
else {
    console.log (numb - dato);
}
Array //coleccion de datos 

//Actividad
 
let condicion = 5;
let condicion1 = 3;
let ary = new Array (3);
let fix = ["Liza", 15, condicion, condicion1]

for (let index = 0; index < fix.length; index++) {
    const element = fix[index];
    console.log(element);
    ary.push(element);
    console.log ("Se añadio un elemento a la variable ary");
    console.log(ary);
    
}
