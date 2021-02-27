<h1>Programa en kotlin </h1>

 <h2>Para realizar este programa realizamos  una búsqueda del lenguaje Kotlin sobre los string y como funcionaban en conjunto con sus métodos existentes algunos métodos no existían en Kotlin como en el lenguaje base, pero existían métodos que funcionaban igual, pero con diferente nombre en otros casos sé tubo que programar una función para realizar dicha acción</h2>
	<br>
<p>Correr el codigo en kotlin </p>

<p> Source Code</>

```kotlin



# -180584-kotlin.kt-*-
# -Josue ALberto lopez Flores-*-

fun main(args: Array<String>) {

    val msg1: String = "Kotlin comillas simples"
    println(msg1) //imprime el mensage en comillas simples almacenado en el arreglo de caracteres
    val msg2: Char = 'K'
    println(msg2)//imprime el caracter almacenado en las comillas simples
    val msg3: String = "hola kotlin"
    val msg0: String = "kotlin uno dos tres"
    var x=0
    //Text            =   K O T L I N

    // Positive Index =   0 1 2 3 4 5
    //Negative Index = -(6 5 4 3 2 1) NO EXISTE EL INDEX NEGATIVO PERO EN ESTE CASO VENDRIA SIENDO
    // 5 4 3 2 1 0
    val msg4: String = "KOTLIN"
    println(msg4[3])//imprime la pocicion 3 de el arreglo empesando desde 0 como el primer numero
    val msg5: String = "KOTLIN"
    println(msg4[2])//imprime la pocicion 2 de el arreglo empesando desde 0 como el primer numero
    val msg6: String = "Hello, Kotlin"
    println(msg6.substring(7,10))//imprime un rango de la cadena de caracteres en este caso es de el 7 al numero 10
    val msg7: String = " Vienvenido, Kotlin "
    println(msg7.strip())
    val msg8: String = "Vienvenido, Kotlin"
    println(msg8.toLowerCase())//imprime en minuclas el mensage
    println(msg8.toUpperCase())//imprime en mayusculas el mensage
    println(msg8.length)

    val msgVisitor9: String = "Vienvenido, Kotlin"
    println(msgVisitor9.replace("Vienvenido","learn"))//remplassa la palabra vienvenido por learn
    val msg10: String ="Kotlin, uno, dos, mensage"
    println(msg10.split(","))//separa los espacios en blanco por comas
    val msg11: String ="kotlin uno dos tres"
    println(msg11.capitalize())//pone como mayuscula la primera letra de la oracion

    for(num in 0..msg11.length-1) {//imprime el inicio de cada palabra con un espacio en blanco anterior en mayucula la primera letra

        if(msg11[num]==' '){
            print(" ")
            print(msg11[num+1].toUpperCase())


        }else if(num==0){

            print(msg11[num].toUpperCase())
            print(msg11[num+1])
        }

        else if(num<msg11.length-1){
            print(msg11[num+1])
        }


    }
println()


    val msg12: String ="Kotlin uno dos tres"



    for(num in 0..msg12.length-1) {//cuenta el numero de letras t que existan en la cadena
        if(msg12[num]=='t'){
            x=x+1
        }

    }
    print("valor de las t ")
    println(x)//imprime las t contadas en el siclo anterior
    println(msg12.indexOf("dos"))//nos dice en que lugar de la cadena se encuentra ubicada la palabra dos
    val msg13: String ="Kotlin uno dos tres"
    println(msg13.split(" "))//donde alla espacios en blanco coloca una coma
    val uno: String ="Kotlin"
    val dos: String ="dos"
    println (uno +" " +dos)//concatena uno y dos con espacio en blanco

    val uno1: String ="Kotlin"
    val dmedio: String ="hola"
    val dos1: String ="dos"

    println (uno1 +" " +dmedio+" "+dos1)//concatena tres strings
    val uno2: String ="Kotlin"
    var numero  =2
    val dos2: String ="dos"
    println (uno1 +" " +numero.toString()+" "+dos1)//concatena tres string y convierte un int en un string



}