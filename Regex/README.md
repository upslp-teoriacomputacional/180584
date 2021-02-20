<h1>Programa en kotlin </h1>

 <h2>Para realizar este programa realizamos  una busqueda de el lenguaje kotlin  sobre una libreria llamada regular expresión una vez se encontró la librería se investigó sobre las funciones que tenía las librerías al localizar la función que necesitábamos en este casi siendo la de .matches se procedió a hacer una búsqueda de como realizar el patrón de reconocimiento para poder hacer la expresión para que solo se reconocieran letras de la A a la Z en mayúsculas y minúsculas y en números del 0 al 9</h2>
	<br>
<p>Correr el codigo en kotlin </p>

<p> Source Code</>

```kotlin



# -180584-kotlin.kt-*-
# -Josue ALberto lopez Flores-*-


fun main(args: Array<String>){

    val regex = "\\w*.".toRegex() // se indica que se validara en ese caso la linea \\w indica o seria equivalnte a [a-zA-Z0-9_] numeros y letras mayusculas y minusculas
    val matched1 = regex.matches(input = "Josue134") //salida igual a true ya que josue solo contiene numeros y letras mayusculas y minusuclas
    val matched2 = regex.matches(input = "xabc9dyabcd.")// salida igual a true aunque no es ningun nombre ni significado saldra true ya que son solo numeros y letras
    val matched3 = regex.matches( input = "k9i.\n");//salida igual a false, ya que aunque contiene numeros y letras hay un espacio en blanco el cual nos de falso como resultado ya que el programa no lo reconoce como el patron establecido en la funcion toRegex
    val matched4 = regex.matches(input = "xabc9dyabcd.#")// salida igual a false
    val matched5 = regex.matches( input = "k9i.X");//salida igual a false
    println(matched1)
    println(matched2)
    println(matched3)
    println(matched4)
    println(matched5)

}  