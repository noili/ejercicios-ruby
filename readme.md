install

git clone



Implementar las clases dentro de la carpeta models


1. Implementar una clase para Personas. La clase tiene que recibir y mostrar los attributos de una persona, como nombre y apellido. pero que solo reciba como parametro un Hash.

juan = Persona.new({nombre: 'Juan', apellido: 'Topo'})

juan.nombre       # 'Juan'
juan.apellido     # 'Topo'

test:
ruby test/test_persona.rb

2. Implementar la clase Carta que reciva un array de personas, variables a modificar y un string que va a servir de template.

por ejemplo si el template tiene esta forma "hola [nombre]", la clase tiene que tener un metodo que reemplaze "[nombre]" por el nombre de la persona.

El metodo tiene que devolver un array con tantos templates como personas halla en el array.

olvap = Persona.new({nombre: 'olvap'})
carta = Carta.new
carta.personas = [olvap]
carta.variables = [:nombre]
carta.template = "hola [nombre]"
puts carta.generate # "hola olvap"

test:
ruby test/test_carta.rb
