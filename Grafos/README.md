<h1>Programa en kotlin </h1>

 <h2>Para realizar este programa realizamos  una busqueda de el lenguaje kotlin  para poder obtener informacion sobre si existian algunos metodos para poder generar 	<br>grafos y realizar una lista con las letras como se ve en el ejemplo  <br>al encontrar dicha informacion mostrada con un ejemplo de numero lo se procedio a analizar el codigo para poder utilisar ese codigo con datos tipo string 	</h2>
	<br>
<p>Correr el codigo en kotlin </p>

<p> Source Code</>

```kotlin



# -180584-kotlin.kt-*-
# -Josue ALberto lopez Flores-*-




//import utils.heading
import java.util.*
import kotlin.collections.HashMap
fun main(args: Array<String>) {
//println("graphs".heading())

    val graph = Graph<String>()
    graph.apply {
        // Node / vertex "0"
        addEdge("a", "c")// se agrega un dato co su vertice con un lugar donde inicia o pertenece y el dato que va en el en este caso es la a y el dato sera la c
        addEdge("b", "c")
        addEdge("b", "e")
        // Node / vertex "1"
        addEdge("c", "d")
        //    addEdge("b", "f")
        addEdge("c", "e")
        // Node / vertex "2"
        addEdge("c", "a")
        // Node / vertex "3"
        addEdge("c", "b")
        addEdge("e", "b")
        addEdge("d", "c")
        addEdge("e", "c")
    }
    print(graph.toString())// funcion la cual nos imprime los graficos por sus vertices en donde pertenecen y los ordena en este caso de la  a a la z



}


class Graph<T> { //clase grafos utilisada para meter y sacar datos
    val map: HashMap<T, HashSet<T>> = HashMap() // se crea al avariable de tipo hasMap para almacenar los grafos

    fun addEdge(Inicio: T, destino: T) {//el metodo que nos ayudara a meter los datos

        map
            .computeIfAbsent(Inicio) { HashSet() }
            .add(destino)

        map
            .computeIfAbsent(destino) { HashSet() }
            .add(Inicio)
    }
//metodo de imprecion de datos
    override fun toString(): String = StringBuffer().apply {
        for (key in map.keys) {
            append("$key -> ")
            append(map[key]?.joinToString(", ", "[", "]\n"))
        }
    }.toString()
}

