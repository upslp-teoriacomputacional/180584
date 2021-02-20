//180584-Comprobando cadenas de cracteres
//Josue ALberto lopez Flores
fun main(args: Array<String>){

    val regex = "\\w*.".toRegex() // se indica que se validara
    val matched1 = regex.matches(input = "Josue134") //salida igual a true
    val matched2 = regex.matches(input = "xabc9dyabcd.")// salida igual a true
    val matched3 = regex.matches( input = "k9i.\n");//salida igual a false
    val matched4 = regex.matches(input = "xabc9dyabcd.#")// salida igual a false
    val matched5 = regex.matches( input = "k9i.X");//salida igual a false
    println(matched1)
    println(matched2)
    println(matched3)
    println(matched4)
    println(matched5)


}  