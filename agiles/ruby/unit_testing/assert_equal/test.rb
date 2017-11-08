require 'minitest/autorun'

require './calculator'

class TestCalculator < Minitest::Test
	
	# assert_equal

	def test_sumar_retorna_suma_entre_ambos_numeros
		calculator = Calculator.new(10,10)

		assert_equal 21, calculator.sumar(),"La suma no dio el resultado esperado"
	end

	# end assert_equal	
end
