--180584-conjuntos
--Josue ALberto lopez Flores

function contains(t, e) 
    for i = 1,#t do
      if t[i] == e then return true end
    end
    return false
end

  function imprimir(A) --imprime los conjuntos en su totalidas
    for i = 1,#A do
      print(A[i])
    end
end

function quitar(A,numero) --elimina un dato de el conjunto

    for i=1,#A do

         if A[i]==numero then A[i]=nil;
        end
    end
end

function agregar(A,insertado) --agrega un dato al conjunto
    
    for i=1,#A do

        if A[i]==#A then A[i+1]=insertado;
       end
   end
end

function eliminar(A) --elimina todo el conjunto
    
    for i=1,#A do

         A[i]=nil
       
   end
end

function copear(A,C) -- copea un conjunto a otro basio o con datos en el 
    
    for i=1,#A do

         C[i]=A[i]
       
   end
end

function union(A,B) -- TE muestra la union de los conjuntos en un conjunto externo
    
  for i=1,(#A+#B) do
    if i<=#A then  Unions[i]=A[i]
    else  Unions[i]=B[i-#A]
    end
    
     
 end
end

function interseccion(A,B) --Interseccion de los dos conjuntos mostrado en un conjunto nuevo
  local eje =#A
  local cont=0
 

  for i=1,(eje) do
    for u=1,(eje) do
    if A[i]==B[u] then cont=cont+1  Interseccions[cont]=B[u]   --print("se metio en ",cont,"los numeros " ,B[u])
    end 


    end
  end
     
 end

function diferencia(A,B) -- muestra la diiferencia de los conjuntos en un conjunto nuevo
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

function diferencias(A,B,Difs,C)--muestra la diferencia simetrica de los conjuntos en un conjunto nuevo 
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

function Subconjuntog(A,sub) --Genera un subconjunto de el conjunto en un conjunto nuevo
  local vandera = false
  local cont=0   
  local r = math.random( 1,#A-1)
  for u=1, r do
    sub[u]=A[u]
   

  end

end 



function Superconjunto(A,sub) --Entrega un valor true o false dependiendo si es un supér conjunto
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

function Pertenece(A,valor) --Genera un valor true o false si el numero pertenece al conjunto
  local vandera = false
  for h=1, #A do   
  if A[h]==valor then vandera=true   break
   else vandera  = false  end  
   
  end 
  return vandera;
end


function Subconjuntoc(A,sub) --entrega un valor tue o false si el conjunto es un subcojunto 
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