require 'test/unit'
require './models/persona'

class TestPersona < Test::Unit::TestCase
  def test_persona
  	pablo = Persona.new({nombre: 'Pablo', apellido: 'Oldani'})
  	assert_equal pablo.nombre, 'Pablo'
    assert_equal pablo.apellido, 'Oldani'
  end
end
