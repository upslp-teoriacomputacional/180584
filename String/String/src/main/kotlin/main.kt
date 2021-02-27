fun main(args: Array<String>) {

    val msg1: String = "Kotlin comillas simples"
    println(msg1)
    val msg2: Char = 'K'
    println(msg2)
    val msg3: String = "hola kotlin"
    val msg0: String = "kotlin uno dos tres"
    var x=0
    //Text            =   K O T L I N

    // Positive Index =   0 1 2 3 4 5
    //Negative Index = -(6 5 4 3 2 1) NO EXISTE EL INDEX NEGATIVO PERO EN ESTE CASO VENDRIA SIENDO
    // 5 4 3 2 1 0
    val msg4: String = "KOTLIN"
    println(msg4[3])
    val msg5: String = "KOTLIN"
    println(msg4[2])
    val msg6: String = "Hello, Kotlin"
    println(msg6.substring(7,10))
    val msg7: String = " Vienvenido, Kotlin "
    println(msg7.strip())
    val msg8: String = "Vienvenido, Kotlin"
    println(msg8.toLowerCase())
    println(msg8.toUpperCase())
    println(msg8.length)

    val msgVisitor9: String = "Vienvenido, Kotlin"
    println(msgVisitor9.replace("Vienvenido","learn"))
    val msg10: String ="Kotlin, uno, dos, mensage"
    println(msg10.split(","))
    val msg11: String ="kotlin uno dos tres"
    println(msg11.capitalize())

    for(num in 0..msg11.length-1) {

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



    for(num in 0..msg12.length-1) {
        if(msg12[num]=='t'){
            x=x+1
        }

    }
    print("valor de las t ")
    println(x)
    println(msg12.indexOf("dos"))
    val msg13: String ="Kotlin uno dos tres"
    println(msg13.split(" "))
    val uno: String ="Kotlin"
    val dos: String ="dos"
    println (uno +" " +dos)

    val uno1: String ="Kotlin"
    val dmedio: String ="hola"
    val dos1: String ="dos"

    println (uno1 +" " +dmedio+" "+dos1)
    val uno2: String ="Kotlin"
    var numero  =2
    val dos2: String ="dos"
    println (uno1 +" " +numero.toString()+" "+dos1)



}