#Message
puts "Message"
#Sum
puts 2 + 5
#float
puts 9.0 / 3.0
#Operations
puts 98 + (59872 / (13 * 8)) * -52
#Union de cadenas de caracteres
puts "mensajeUno" + "MensajeDos"
#Repeticion de caracteres
puts "palabra, " * 13

#varibles
numero = 12
palabras = "Muchas palabras"

puts numero 
puts palabras



# Conversiones Char to Int

numeroUno = 1
numeroDos = "2"

#convertido a Str
puts numeroUno.to_s + numeroDos
#convertido a Int
puts numeroUno+ numeroDos.to_i
#convertido a Float
puts '15'.to_f

#get solo recibe informacion despues de presionar enter
puts gets

#Ejemplo
#solicitar el nombre
puts "Nombre ?"
name = gets
puts "Su nombre es: " + name + "listo!!!"

# revertir una cadena de caracteres
palabraLarga = "PalabraLarga"
puts palabraLarga.reverse

#CHOMP
puts '¿Cuál es tu nombre completo?'
name = gets.chomp
puts '¿Sabías que hay ' + name.length.to_s + ' caracteres en tu nombre, ' + name + '?'

#Modificacion de caracteres

letters = 'aAbBcCdDeE'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

#Anadir espacio entre los caracteres
lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

#Numeros aleatorios
#toma un numero aletario de 0 - 100
puts rand(100)
#otro ejemplo con rand
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('El pronosticador del tiempo dijo que hay '+rand(101).to_s+'% chances de que llueva,')
puts('pero nunca debes
 confiar en él.')

 #condicional IF
puts 'Soy un adivino. Dime tu nombre:'
name = gets.chomp
if name == 'Chris'
  puts 'Veo grandes cosas en tu futuro.'
else
  puts 'Tu futuro es... ¡Oh! ¡Mira la hora!'
  puts 'Realmente debo irme, ¡lo siento!'
end


#while
comando = ''

# while comando != 'adios'
#  puts comando
#  comando = gets.chomp
# end

puts '¡Vuelve pronto!'

#Arrays

names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  #  Éste está fuera del rango.


#recorrer array con EAch

lenguajes = ['Inglés', 'Alemán', 'Ruby']

lenguajes.each do |leng|
  puts '¡Me gusta ' + leng + '!'
  puts '¿A ti?'
end

puts '¡Y vamos a escuchar esto para C++!'
puts '...'

#iterador Times

3.times do
  puts 'Hip-Hip-Hooray!'
end

#Metodos para matrices 

alimentos = ['artichoke', 'brioche', 'caramel']

puts alimentos
puts
puts alimentos.to_s
puts
#añade estos caracteres ,
puts alimentos.join(', ')
puts
#añade estos caracteres :) 8 
puts alimentos.join('  :)  ') + '  8)'

200.times do
  puts []
end

#añadir elementos a un Array

favoritos = []
favoritos.push 'lluvia de rosas'
favoritos.push 'whisky en gatitos'

puts favoritos[0]
puts favoritos.last
puts favoritos.length

puts favoritos.pop
puts favoritos
puts favoritos.length


#metodos
def decirMu
  puts 'muuuuuu...'
end

puts decirMu

#con parametros

def duplicaEsto num
  numeroVeces2 = num*2
  puts num.to_s+' el doble es '+numeroVeces2.to_s
end

duplicaEsto 44

#Ejemplo
def numeroEnEspanol numero
  #  Solo estamos considerando los números de 0-100.
  if numero < 0
    return 'Por favor ingrese un número mayor o igual a cero.'
  end
  if numero > 100
    return 'Por favor ingrese un número menor o igual a 100'
  end

  numeroDeTexto  = ''  #  Este es el texto que retorna.

  #  "izquierda" es cuando del número aún falta escribir.
  #  "escrito" es la parte que estamos escribiendo en estos momentos.
  #  escrito y izquierda... lo captas?  :)
  izquierda  = numero
  escrito = izquierda/100          #  Cuántos cientos faltan escribir?
  izquierda  = izquierda - escrito*100  #  Restar estos cientos.

  if escrito > 0
    return 'cien'
  end

  escrito = izquierda/10          #  Cuántas decenas faltan escribir?
  izquierda  = izquierda - escrito*10  #  Restar las decenas.

  if escrito > 0
    if escrito == 1  #  Ah-ah...
      #  No podemos escribir "diezidos" en lugar de "doce",
      #  hemos realizado una excepción especial.
      if    izquierda == 0
        numeroDeTexto = numeroDeTexto + 'diez'
      elsif izquierda == 1
        numeroDeTexto = numeroDeTexto + 'once'
      elsif izquierda == 2
        numeroDeTexto = numeroDeTexto + 'doce'
      elsif izquierda == 3
        numeroDeTexto = numeroDeTexto + 'trece'
      elsif izquierda == 4
        numeroDeTexto = numeroDeTexto + 'catorce'
      elsif izquierda == 5
        numeroDeTexto = numeroDeTexto + 'quince'
      elsif izquierda == 6
        numeroDeTexto = numeroDeTexto + 'dieciseis'
      elsif izquierda == 7
        numeroDeTexto = numeroDeTexto + 'diecisiete'
      elsif izquierda == 8
        numeroDeTexto = numeroDeTexto + 'dieciocho'
      elsif izquierda == 9
        numeroDeTexto = numeroDeTexto + 'diecinueve'
      end
      #  Desde que ya tomamos el dígito faltante,
      #  ya no tenemos nada que escribir.
      izquierda = 0
    elsif escrito == 2
      #  Como no podemos decir "veinteiuno",
      #  tenemos que eliminar la "e" final.
      if izquierda == 0
        numeroDeTexto = numeroDeTexto + 'veinte'
      else
        numeroDeTexto = numeroDeTexto + 'veint'
      end
    elsif escrito == 3
      numeroDeTexto = numeroDeTexto + 'treinta'
    elsif escrito == 4
      numeroDeTexto = numeroDeTexto + 'cuarenta'
    elsif escrito == 5
      numeroDeTexto = numeroDeTexto + 'cincuenta'
    elsif escrito == 6
      numeroDeTexto = numeroDeTexto + 'sesenta'
    elsif escrito == 7
      numeroDeTexto = numeroDeTexto + 'setenta'
    elsif escrito == 8
      numeroDeTexto = numeroDeTexto + 'ochenta'
    elsif escrito == 9
      numeroDeTexto = numeroDeTexto + 'noventa'
    end

    if izquierda > 0
      numeroDeTexto = numeroDeTexto + 'i'
    end
  end

  escrito = izquierda  #  Cuánto falta para el número?
  izquierda  = 0     #  Restar lo que falta.

  if escrito > 0
    if    escrito == 1
      numeroDeTexto = numeroDeTexto + 'uno'
    elsif escrito == 2
      numeroDeTexto = numeroDeTexto + 'dos'
    elsif escrito == 3
      numeroDeTexto = numeroDeTexto + 'tres'
    elsif escrito == 4
      numeroDeTexto = numeroDeTexto + 'cuatro'
    elsif escrito == 5
      numeroDeTexto = numeroDeTexto + 'cinco'
    elsif escrito == 6
      numeroDeTexto = numeroDeTexto + 'seis'
    elsif escrito == 7
      numeroDeTexto = numeroDeTexto + 'siete'
    elsif escrito == 8
      numeroDeTexto = numeroDeTexto + 'ocho'
    elsif escrito == 9
      numeroDeTexto = numeroDeTexto + 'nueve'
    end
  end

  if numeroDeTexto == ''
    #  La única forma que "numeroDeTexto" esté vacío es que
    #  "numero" sea 0.
    return 'cero'
  end

  #  Si numeroDeTexto os hasta aqui es que tenemos un número
  #  entre 0 y 100, por lo que debemos retornar "numeroDeTexto".
  numeroDeTexto
end

puts numeroEnEspanol(  0)
puts numeroEnEspanol(  9)
puts numeroEnEspanol( 10)
puts numeroEnEspanol( 21)
puts numeroEnEspanol( 17)
puts numeroEnEspanol( 32)
puts numeroEnEspanol( 88)
puts numeroEnEspanol( 99)
puts numeroEnEspanol(100)

#Ejemplo con Arrays
def numeroEnEspanol numero
  if numero < 0  #  No numeros negativos
    return 'Por favor ingresar un numero que no sea negativo.'
  end
  if numero == 0
    return 'cero'
  end

  #  No más casos especiales!  No más returns!

  numeroDeTexto = ''  #  Este es el texto que se devolverá.

  primeraPosicion = ['uno',     'dos',       'tres',    'cuatro',     'cinco',
               'seis',     'siete',     'ocho',    'nueve']
  segundaPosicion = ['diez',     'veinte',    'treinta',   'cuarenta',    'cincuenta',
               'sesenta',   'setenta',   'ochenta',   'noventa']
  entre11Y19 = ['once',  'doce',    'trece', 'catorce', 'quince',
               'dieciseis', 'diecisiete', 'dieciocho', 'diecinueve']
  entre21Y29 = ['veintiuno',  'veintidos',    'veintitres', 'veinticuatro', 'veinticinco',
               'veintiseis', 'veintisiete', 'veintiiocho', 'veintinueve']

  #  "izquierda" es cuanto del numero aun falta escribir
  #  "escrito" es la parte que estamos escribiendo en este momento.
  #  escrito y izquierda... lo captas?  :)
  izquierda  = numero
  escrito = izquierda/100          #  Cuantos cientos faltan escribir?
  izquierda  = izquierda - escrito*100  #  La esta de estos cientos

  if escrito > 0
    #  Ahora hacemos un pequeño truco:
    cientos  = numeroEnEspanol escrito
    numeroDeTexto = numeroDeTexto + cientos + ' ciento'

    # Eso se llama "recursividad". Entonces, ¿Qué acabo de hacer?
    # Le dije a este método para llamarse a sí mismo, pero con "escrito" en vez de
    # "numero". Recuerde que "escrito" es (por el momento) el número de
    # cientos que tenemos que escribir. Después añadimos "hundred" de "numeroDeTexto",
    # añadimos la cadena 'cien' después de él. Así, por ejemplo, si
    # se llamó originalmente numeroEnEspanol con el 1999 (por lo que "numero" = 1999),
    # y luego en este momento "escrito" sería 19, y la "izquierda" sería 99.
    # La más perezoso que se puede hacer en ese momento es que numeroEnEspanol
    # escriba 'diecinueve' para nosotros, entonces escribimos 'cien',
    # y luego el resto de numeroEnEspanol escribe "noventa y nueve".

    if izquierda > 0
      #  So escribir  'dos ciencincuentaiuno'...
      numeroDeTexto = numeroDeTexto + ' '
    end
  end

  escrito = izquierda/10          #  Cuántas decenas faltan escribir?
  izquierda  = izquierda - escrito*10  #  Resta de estas decenas.

  if escrito > 0
    if ((escrito == 1) and (izquierda > 0))
      #  No podemos escribir "diez-dos" en vez de "doce",
      #  hacemos una excepción especial.
      numeroDeTexto = numeroDeTexto + entre11Y19[izquierda-1]
      #  Es "-1" porque entre11Y19[3] es 'catorce', no 'trece'.

      #  Ya que tomamos el dígito que nos faltaba,
      #  no tenemos nada más que escribir.
      izquierda = 0
    elsif ((escrito ==2 and (izquierda>0)))
      #  Similar para los veintipico
      numeroDeTexto = numeroDeTexto + entre21Y29[izquierda-1]
      izquierda = 0
    else
      numeroDeTexto = numeroDeTexto + segundaPosicion[escrito-1]
      #  Es "-1" porque segundaPosicion[3] es 'cuarenta', no 'treinta'.
    end

    if izquierda > 0
      #  No escribiremos 'sesentacuatro'...
      numeroDeTexto = numeroDeTexto + 'i'
    end
  end

  escrito = izquierda  #  Cuántos faltan?
  izquierda  = 0     #  Restar lo que falta.

  if escrito > 0
    numeroDeTexto = numeroDeTexto + primeraPosicion[escrito-1]
    #  Es "-1" porque primeraPosicion[3] es 'cuatro', no 'tres'.
  end

  #  Ahora solo retornamos "numeroDeTexto"...
  numeroDeTexto
end

puts numeroEnEspanol(  0)
puts numeroEnEspanol(  9)
puts numeroEnEspanol( 10)
puts numeroEnEspanol( 11)
puts numeroEnEspanol( 17)
puts numeroEnEspanol( 32)
puts numeroEnEspanol( 88)
puts numeroEnEspanol( 99)
puts numeroEnEspanol(100)
puts numeroEnEspanol(101)
puts numeroEnEspanol(234)
puts numeroEnEspanol(3211)
puts numeroEnEspanol(999999)
puts numeroEnEspanol(1000000000000)


#Clases

a = Array.new  + [12345]  #  Array  agregado.
b = String.new + 'hello'  #  String agregado.
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s

#clase con time

a = Array.new  + [12345]  #  Array  agregado.
b = String.new + 'hello'  #  String agregado.
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s


#HASH

#En un hash, las ranuras no están en una fila (que es sólo un tipo de mezcla), y se puede utilizar cualquier objeto para hacer referencia a un espacio no sólo un número. Es bueno utilizar hashes cuando se tiene un montón de cosas que no se desea perder de vista, pero que en realidad no encajan en una lista ordenada. 


colorArray = []  #  igual a Array.new
colorHash  = {}  #  igual a Hash.new

colorArray[0]         = '#FF0000'
colorArray[1]         = '#008000'
colorArray[2]         = '#0000FF'
colorHash['textos ']  = '#FF0000'   # rojo
colorHash['numeros']  = '#008000'   # verde
colorHash['claves ']  = '#0000FF'   # azul

colorArray.each do |color|
  puts color
end
colorHash.each do |tipoCodigo, color|
  puts tipoCodigo + ' :  ' + color
end

#ejemplo de clase

class Integer
  def to_esp
    if self == 5
      espanol = 'cinco'
    else
      espanol = 'cincuenta y ocho'
    end

    espanol
  end
end

#  Mejor probarlo en un par de números...
puts 5.to_esp
puts 58.to_esp

#Creando una clase
class Dado

  def roll
    1 + rand(6)
  end

end

#  Vamos a crear un par de dados...
dados = [Dado.new, Dado.new]

#  ...y hacerlos rodar.
dados.each do |dado|
  puts dado.roll
end

#Instanciado una clase

class Dado

  def rodar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

end

dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
dado.rodar
puts dado.mostrar
puts dado.mostrar

#otro ejemplo de instancia

class Dado

  def rodar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

end

dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
dado.rodar
puts dado.mostrar
puts dado.mostrar

#inicizaliar una clase

class Dado

  def rodar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

end

dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
dado.rodar
puts dado.mostrar
puts dado.mostrar

#ejemplo de clase con instancia completo


class Dragon

  def initialize nombre
    @nombre = nombre
    @dormido = false
    @panzaLlena     = 10  #  Esta lleno.
    @intestinoLleno  =  0  #  No necesita ir.

    puts @nombre + ' nace.'
  end

  def alimentar
    puts 'Alimentas a ' + @nombre + '.'
    @panzaLlena = 10
    pasoDelTiempo
  end

  def caminar
    puts 'Haces caminar a ' + @nombre + '.'
    @intestinoLleno  = 0
    pasoDelTiempo
  end

  def dormir
    puts 'Colocas a ' + @nombre + ' en la cama.'
    @dormido = true
    3.times do
      if @dormido
        pasoDelTiempo
      end
      if @dormido
        puts @nombre + ' ronca, llenando el cuarto con humo.'
      end
    end
    if @dormido
      @dormido = false
      puts @nombre + ' despierta lentamente.'
    end
  end

  def lanzar
    puts 'Lanzas a ' + @nombre + ' en el aire.'
    puts 'Sonrie, sus cejas se mueven.'
    pasoDelTiempo
  end

  def acunar
    puts 'Acunas a ' + @nombre + ' suavemente.'
    @dormido = true
    puts 'Rapidamente se queda dormido...'
    pasoDelTiempo
    if @dormido
      @dormido = false
      puts '...pero despierta cuando te detienes.'
    end
  end

  private

  #  "private" significa que los metodos definidos aqui son
  #  metodos internos al objeto.  (Puedes alimentar a
  #  tu dragon, pero no puedes preguntar si esta hambriento.)

  def hambriento?
    #  Los nombres de los metodos pueden terminar en "?".
    #  Generalmente, hacemos esto si el método debe
    #  devolver verdadero o falso, como esto:
    @panzaLlena <= 2
  end

  def ganas?
    @intestinoLleno >= 8
  end

  def pasoDelTiempo
    if @panzaLlena > 0
      #  Mueve el alimento del vientre al intestino.
      @panzaLlena      = @panzaLlena      - 1
      @intestinoLleno  = @intestinoLleno  + 1
    else  #  Nuestro dragon esta hambriento!
      if @dormido
        @dormido = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @nombre + ' esta hambriento!  En su desesperacion, ¡te COMIO!'
      exit  #  Sale del programa.
    end

    if @intestinoLleno  >= 10
      @intestinoLleno  = 0
      puts '¡Uy!  ' + @nombre + ' tuvo un accidente...'
    end

    if hambriento?
      if @dormido
        @dormido = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @nombre + 'retumba...'
    end

    if ganas?
      if @dormido
        @dormido = false
        puts 'Se despierta de repente!'
      end
      puts @nombre + ' hace la danza del baño...'
    end
  end

end

mascota = Dragon.new 'Norbert'
mascota.alimentar
mascota.lanzar
mascota.caminar
mascota.dormir
mascota.acunar
mascota.dormir
mascota.dormir
mascota.dormir
mascota.dormir

#bloques y procedimientos

#Esto tiene la habilidad de tomar un bloque de código (código entre do y end) y encapsularlo dentro de un objeto (llamado proc) y guardarlo en una variable o pasarlo a un método, y ejecutar el código del bloque donde te guste (más de una vez, si quieres) Entonces esto es como un tipo método excepto que no está dentro de un objeto (este bloque es un objeto), y puedes almacenarlo o pasarlo como cualquier otro objeto. Es hora de un ejemplo:


toast = Proc.new do
  puts '¡Aplausos!'
end

toast.call
toast.call
toast.call

#Entonces creé un proc (el cual pienso debería ser pronunciado como "procedimiento") que contiene un bloque de código, y llamé (called) el proc tres veces. Como puedes ver, esto es como un método.

#En realidad, son más parecidos a los métodos que te he mostrado, porque los bloques pueden tomar parámetros:

teGusta = Proc.new do |algoRico|
  puts '¡Me gusta *realmente* el '+algoRico+'!'
end

teGusta.call 'chocolate'
teGusta.call 'ruby'


#tomado de  http://rubysur.org/aprende.a.programar/index.html


































