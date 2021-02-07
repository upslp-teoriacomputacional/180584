<h1>Programa en lua ilustrando diferentes operaciones con conjuntos</h1>

 <h2>Para realizar este programa rializamos  una busqueda de lua para poder obtener informacion sobre si existian algunos metodos para poder generar 	<br>conjuntos y realizqar sus operaciones con algunas funcionas existentes como se ve en el ejemplo de python al buscar por un cuanto tiempo y no 	<br>encontrar nada se procedio a investigar sobre los arreglos y que funciones se existen para ellos despues de eso se establecio como funcionan las 	<br>operaciones de los conjuntos y se procedio a hacerlas en lua con ayuda de los siclos y los condicionales.</h2>
	<br>
<p>este codigo se descomenta en cada funcion que se quiera probar ya que todas bienen comentadas exepto la imprecion de los conjuntos principales</p>

<p> Source Code</>

```lua



# -180584-conjuntos.lua-*-
# -Josue ALberto lopez Flores-*-


--imprime los conjuntos en su totalidas colocando el conjunto en el espacio de la primera variable 
  function imprimir(A) 
    for i = 1,#A do
      print(A[i])
    end
end
--elimina un dato de el conjunto, se coloca el conjunto y en el siguiente espacio el numero que se quiere eliminar
function quitar(A,numero) 

    for i=1,#A do

         if A[i]==numero then A[i]=nil;
        end
    end
end
--agrega un dato al conjunto se coloca en el primer lugar el conjunto y en el siguiente el numero a agregar
function agregar(A,insertado) 
    
    for i=1,#A do

        if A[i]==#A then A[i+1]=insertado;
       end
   end
end
--elimina todo el conjunto , se coloca el conjunto a eliminar en el espacio de la variable
function eliminar(A) 
    
    for i=1,#A do

         A[i]=nil
       
   end
end
-- copea un conjunto a otro basio o con datos en el se coloca en el primer espacio el conjunto que se desa copear y en el seguiente espacio el conjunto donde se almacenara
function copear(A,C) 
    
    for i=1,#A do

         C[i]=A[i]
       
   end
end
-- TE muestra la union de los conjuntos en un conjunto externo se coloca el primer conjunto y el segundo conjunto a unir
function union(A,B) 
    
  for i=1,(#A+#B) do
    if i<=#A then  Unions[i]=A[i]
    else  Unions[i]=B[i-#A]
    end
    
     
 end
end
--Interseccion de los dos conjuntos mostrado  en un conjunto nuevo se coloca el primer conjunto y  en el siguiente espacio el siguiente conjunto para mostrar la interseccion en un conjunto nuevo
function interseccion(A,B)
  local eje =#A
  local cont=0
 

  for i=1,(eje) do
    for u=1,(eje) do
    if A[i]==B[u] then cont=cont+1  Interseccions[cont]=B[u]   --print("se metio en ",cont,"los numeros " ,B[u])
    end 


    end
  end
     
 end

 -- muestra la diiferencia de los conjuntos en un conjunto nuevo colocando el primer y el segundo conjunto en loes espacios requeridos
function diferencia(A,B) 
  local vandera = false
  local cont=0

  for u=1, #A do
    cont=cont+1
   for i=1, #B do
      if A[u]==B[i] then vandera=true 
      end
   end
     if vandera==true then Dif[cont]=nil vandera=false cont=cont-1
     else if vandera==false then Dif[cont]=A[u]
     end
    end

  end
end 
--muestra la diferencia simetrica de los conjuntos en un conjunto nuevo se colocoa el primer conjunto enseguida el segundo conjunto , seguido de la diferencia  y al final el conjunto donde se almacenar ala diferencia simetrica 
function diferencias(A,B,Difs,C)
  local vandera = false
  local cont=0

  for u=1, #A do
    cont=cont+1
   for i=1, #B do
      if A[u]==B[i] then vandera=true 
      end
   end
     if vandera==true then Difs[cont]=nil vandera=false cont=cont-1
     else if vandera==false then Difs[cont]=A[u]
     end
    end

  end

  for u=1, #C do
    cont=cont+1
   for i=1, #B do
      if C[u]==B[i] then vandera=true 
      end
   end
     if vandera==true then Difs[cont]=nil vandera=false cont=cont-1
     else if vandera==false then Difs[cont]=C[u]
     end
    end

  end 

end 
 --Genera un subconjunto de el conjunto en un conjunto nuevo colocando el cinjunto de el que se sacara el subconjunto y enseguida donde se almacenara el subconjunto
function Subconjuntog(A,sub)
  local vandera = false
  local cont=0   
  local r = math.random( 1,#A-1)
  for u=1, r do
    sub[u]=A[u]
   

  end

end 


--Entrega un valor true o false dependiendo si es un supér conjunto se coloca el superconjunto en la primera parte y en la segunda el conjunto que se desea evaluar
function Superconjunto(A,sub) 
  local vandera = false
  
for i=1, #sub do
  for u=1, #A do
    if sub[i]==A[u] then vandera =true  break
    else vandera=false
    end
  end
end
 
  return vandera;
end 

--Genera un valor true o false si el numero pertenece al conjunto se coloca el conjunto a evaluar en la primera parte y enseguida el numer que se desea evaluar
function Pertenece(A,valor) 
  local vandera = false
  for h=1, #A do   
  if A[h]==valor then vandera=true   break
   else vandera  = false  end  
   
  end 
  return vandera;
end

--entrega un valor tue o false si el conjunto es un subcojunto  se coloca el superconjunto en la pimera parte y enseguida el subconjunto que se desa evaluar
function Subconjuntoc(A,sub) 
  local vandera = false
  
for i=1, #sub do
  for u=1, #A do
    if sub[i]==A[u] then vandera =true  break
    else vandera=false
    end
  end
end
 
  return vandera;
end 
  
 
  
--definicion de los sets y variables
local A={1,2,3,4,5,10}
local B={3,4,10,6,7}
local C={}

Unions={}
j=0
 Interseccions={}
Dif={}
Difs={}
sub={}
math.randomseed(os.time())


print("The set is:")
print(imprimir(A))
print("\n")
print("The set 1 is:")
print(imprimir(B))
print("\n")
print("The set 2 is:")
print(imprimir(C))

--DESCOMENTAR LO QUE SE QUIERA PROBAR

--print("Pertenece")
--print(2,"Pertenece a el conjunto  A:",Pertenece(A,2))


--quitar(B,10)
--print("Imprecion de el conjunto B despues de  Eliminar el numeor 10:")
--print(imprimir(B))


--agregar(A,20)
--print("Imprecion de el conjunto B despues  insertar el numeor 20:")
--print(imprimir(A))

--eliminar(A)
--print("Imprecion de el conjunto A despues de eliminar todo el conjunto:")
--print(imprimir(A))

--copear(B,C)
--print("Imprecion de el conjunto C despues de copear todo lo de el conjunto b en el:")
--print(imprimir(C))

--union(A,B)
--print("Imprecion de  la union de a y b en un conjunto nuevo: ")
--print(imprimir(Unions))


--interseccion(A,B)
--print("interseccion de a y b  ")
--print(imprimir(Interseccions))
--print("Aqui deveria estar el escribir :")


--print("diferencia de A y B")
--diferencia(A,B)
--print(imprimir(Dif))

--print("diferencia simetrica de A y B")
--diferencias(A,Interseccions,Difs,B)
--print(imprimir(Difs))

--print("Generacion de un Subconjunto apartir de A ")
--Subconjuntog(A,sub)
--print(imprimir(sub))


--print("Subconjunto")
--print("Subconjunto generado es subconjunto de conjunto de A :",Subconjuntoc(A,sub))


--print("Superconjunto")
--print("ES A super conjunto de el subconjunto generado :",Superconjunto(A,sub))



do return end