# Mini Guía Ruby
### Datos a Considerar: ###
Las condicionantes se pueden separar por ‘&&’ o ‘||’, cuando se utilice ‘&&’ significa que deben cumplirse ambas condiciones para que se devuelva un true, en cambio si se usa ‘||’ se deberá cumplir solo una de las condiciones para que se devuelva un true.

Para poder retornar mas de un valor desde un metodo se debe utilizar array devuelta:

ejemplo
```ruby
def doc_line index
  [1,2,3]
end

Definicion de Metodo:

def sumatoria(num1,num2)
  total = num1 + num2
  puts total
end

def: seria para inicializar metodo
sumatoria: Este seria el nombre del metodo creado
(num1,num2): Parametros aceptados por metodo
Entre def y end esta el cuerpo del metodo, osea que se realizada el metodo en si
end: se finaliza el metodo
```

### Metodos Para String: ####
    • sub(‘.’,’’): solo cambia la primera coincidencia
    • tr(‘.’,’ ‘): esta funcion sirve para sustituir un carácter por otro los cambia todos los caracter que gsub
    • reverse: invierte los caracteres
    • length: nos dice el largo del texto
    • upcase: escribe todo en mayuscula
    • downcase: escribe todo en minuscula
    • swapcase: deja las minusculas como mayusculas y las mayusculas como minusculas
    • capitalize: coloca la primera letra en mayuscula y el resto en minuscula
    • slice: da una parte de un string
    • String.methods: nos da una lista de los metodos de la clase String
    • String.methods.sort: nos da una lista de metodos ordenadas alfabeticamente.
    • String.instancia_methods.sort: da una lista de los metodos de instancia de la clase String ordenada alfabeticamente
    • palabras.split(“ “) vuelve un texto en array  separados por algun carácter que se puede especificar
    • Include?(): devuelve true o false dependiendo si coincide un fragmento del texto.
    • rjust: me rellena hacia la izquierda con algun carácter que queramos
    • ljust: me rellena a la derecha con algun carácter que queramos
      ejemplo
      ‘1’.rjust(5,’0’) #=> ‘00001’
    • upcase: convierte los caracteres del texto en mayusculas
    • I18n.transliterate(d.glosa || "")
    • I18n: gema la cual sirve para encoding ISO-8859-1.
    • transliterate: metodo para  caida por carácter especial

### Metodos Para Integer: ###
    • Divmod(num1): Este metodo realiza una division retornandonos una lista (cociente,resto) ingresando anteriormente al método el numero del dividendo y pasandole al metodo el divisor
      ejemplo: 999.divmod(900) #[1,99]
    • x+=1 : cada vez que se recorra esta linea a x se le sumara 1

### Metodos Para DateTime: ###
    •I18n.l(‘01/10/2019’, format: '%B %Y')// se consigue el nombre del mes y año en español
    •I18n: gema la cual sirve para traducir.
    •L: metodo para realizar el translate(traduccion)
    •‘01/10/2019’:Fecha la cual se entrega
    •I18n.l(Date.today, format: '%A, %d de %B de %Y')  # martes, 14 de agosto de 2018
    •Time.zone.now.strftime("%H:%M")  #12:35

### Metodo Para Array: ###
    • total_haberes = obj_contabilidad.select(&:deber?).sum(&:monto)
      total_haberes: Nombre de variable, en este caso se utilizaria para poder guardar la sumatoria de montos del arreglo previamente filtrado
      obj_contabilidad: Este seria un arreglo el cual contiene distintos objetos en este caso los objetos de contabilidad
      select(): Este seria un metodo de ruby el cual se utiliza para poder hacer un filtro dentro de un arreglo, tiene distintos formas de implementacion
      (&:deber?) : el simbolo ‘&’ seria entregandonos un bloque como parametro dentro del metodo, la palabra ‘deber?’ seria la condicionante que se tendria que cumplir para poder seleccionar los objetos (solo se puede utilizar de esta forma si se utiliza un metodo que devuelva true o false)
      sum(): Metodo de agrupaciòn en este caso seria una sumatoria
      (&:monto): & significa bloque, y al lado se coloca el campo y/o atributo el cual se sumara dentro del arreglo
    • obj_contabilidad.group_by(&:cuenta_contable)
      group_by: este metodo sirve para agrupar un arreglo por algun campo en especifico el simbolo ‘&’ es referente al bloque, y cuenta_contable seria el campo por el cual se estaria agrupando
      aquí se puede ver un group by con mas de una agrupacion
      group_by{|l| {deber_o_haber: l.deber_o_haber, cuenta_contable: l.cuenta_contable}}
    • obj_contabilidad.each do |lc|: de esta forma se recorre la lista entera pasando por cada objeto.
    • obj_contabilidad.each_index do |lc, index|: de esta forma se recorre la lista entera pasando por cada objeto con un indice el cual parte desde 0.
    • al realizar un arreglo de texto se puede escribir %w{} y dentro se pueden ingresar los objetos que contendra la lista separados por espacio
    • size: nos retorna la cantidad de registros de un arreglo
      ejemplo: obj_contabilidad.size. #26
    • reverse: revierte el orden de la lista actual
    • join(“ “): une los textos de un array con un carácter intermediadio
    • include?(): Busca un objeto o texto dentro de la lista, en caso de encontrarlo devolvera un true en caso contrario devuelve un false
    • reject(): selecciona todo lo que no cumpla las condiciones que se le entregan

### Metodo Para Hash: ###
    • hash_new[:persona].sum{|k| k[:edad]}: De esta forma se puede realizar la sumatoria de un atributo dentro de un objeto del hash. Utilizando la funcion sum con algunos cambios respecto a como se usa en array
    • hash_new.map do |k,v|: de esta forma se puede recorrer el mapeo, pasando por cada uno de los distintos grupos.
    • hash_new[:persona].reduce(0) {|sum, persona| sum +=persona[:edad]}: De esta forma se puede realizar la sumatoria de un atributo dentro de un objeto del hash. Utilizando la funcion sum con algunos cambios respecto a como se usa en array
    • include?(): Busca un objeto o texto dentro del mapeo, en caso de encontrarlo devolvera un true en caso contrario devuelve un false
    • Para poder buscar un atributo especifico dentro de un hash se pueden utilizar los siguientes metodos: reemplazando “a” por la llave
      hash.map{|key,value| key == “a”}
      hash[“a”]
      hash&.dig(“a”)
    • reject(): selecciona todo lo que no cumpla las condiciones que se le entregan

### Safe Protector: ###
    • Un carácter que funciona como safe protector seria ‘&’ antes de llamar al método, esto hará que si el objeto o variable esta nulo no se provoque un error cayéndose el método y nos devuelva un nil.

### Metodos Inusuales: ###
    • send/public_send: este metodo sirve para utilizar un metodo de una clase escribiendo el nombre de este como si fuera un texto
    • Ejemplo:
    • array.send(‘size’) / array,public_send(:size)
    • Hay metodos similares
    • Call
    • method_a = array.method(:size)
    • method_a.call
    • Eval
    • eval ‘array.size’

### Bloques: ###
```ruby
def metod1 proc1
   puts 'Prinpio del metodo'
  proc1.call
  putss 'Final del metodo'
end

hola = lambda do
  puts 'Hola'
end

La clase proc puede volver un bloque en un objeto por lo cual se puede escribir  un codigo para que se ejecute:
hola: seria el nombre del proc se tiene que definir como lambda para poder escribir un codigo de metodo dentro
do: inicia metodo
end: termina el metodo
con  el comando .call se puede llamar al bloque ejemplo hola.call o proc1.call
el comando yield nos permita utilizar el bloque actual
```
### Excepciones: ###
```ruby
    • Hay distintintas formas de manejar excepciones una se puede utilizar raise lo cual se podria implementar de las siguientes dos formas
      def excepcion
        raise ‘Se ha producido un error’
        puts ‘Se pudo seguir con el proceso’
        raise ArgumentError, ‘El argumento no es valido’
      end
    • Luego del raise se puede escribir el mensaje de error, con el comando argument error se rescata el mensaje del error para poder imprimirlo
    • def excepcion
        begin
          puts ‘aun no ha saltado el error’
          raise ‘Un error ha ocurrido’
        rescue
          puts ‘Yo he rescatado el error’
        end
      end
    • La excepcion en este caso funcionaria de la siguiente forma
    • Begin: inicia el bloque de la excepcion
    • rescue: el mensaje o la accion que se realizara cuando haya algun problema
    • end se termina el bloque de la excepcion
    • Para poder saber cual es el mensaje y donde ocurre el error en especifico se puede mapear la excepcion de la siguiente forma
      begin
        raise 'Test de excepcion'
      rescue Exception => e
        puts e.message            # Test de excepción
        puts e.backtrace.inspect   # ["nombre de fichero:linea de la excepción"]
      end
```
### Git: ###
    • git clone “url” – me trae carpeta master desde repositorio git
    • git remote update –actualizara rama en la cual se esta trabajando para poder tener informacion al dia
    • git merge origin/master –me hace merge a la rama maestra
    • git mergetool -abre kdiff3 para solucionar conflictos
    • git status  – sirve para validar estado de branch y ver en que archivos se han realizado cambios
    • rm ……………… …..rb.orig se elimina archivo temporal
### Rails: ###
    • rails db:drop:all : elimina todas las base de datos relacionadas.
    • rails db:create : genera las base de datos que se utilizaran
    • rails db:migrate : realiza los cambios faltantes dentro de la BD
    • rails t ‘ruta’: corre un test del archivo
    • rails c: crea una instancia de consola para poder realizar pruebas
      “nombre”.parameterize(separator: “_”).classify //conseguir nombre de clase para empresa
      “nombre”.parameterize(separator: “_”) //consigue nombre de archivo .rb
    • rails s: levanta el servidor local
 