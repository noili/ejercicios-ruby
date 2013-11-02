require 'test/unit'
require './models/carta'
require './models/persona'

class TestCarta < Test::Unit::TestCase
  # dada una persona se debe generar una carta donde se reemplaze el nombre de la persona en cada ocurrencia del string [nombre]
  def test_carta
    olvap = Persona.new({nombre: 'olvap'})
    carta = Carta.new
    carta.personas = [olvap]
    carta.variables = [:nombre]
    carta.template = "hola [nombre]"
    assert_equal carta.generate, ["hola olvap"]
  end

  def test_carta_with_personas
    olvap = Persona.new({nombre: 'olvap'})
    fede  = Persona.new({nombre: 'fede'})
    carta = Carta.new
    carta.personas = [olvap, fede]
    carta.variables = [:nombre]
    carta.template = "hola [nombre]"
    assert_equal carta.generate, ["hola olvap", "hola fede"]
  end

  def test_carta_with_personas_and_varialbes
    olvap = Persona.new({nombre: 'olvap', apellido: 'oldani'})
    fede  = Persona.new({nombre: 'fede', apellido: 'neuman'})
    carta = Carta.new
    carta.personas = [olvap, fede]
    carta.variables = [:nombre, :apellido]
    carta.template = "hola [nombre] [apellido]"
    assert_equal carta.generate, ["hola olvap oldani", "hola fede neuman"]
  end
end
