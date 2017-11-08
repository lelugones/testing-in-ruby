require 'minitest/autorun'

require './calculator'

class TestCalculator < Minitest::Test
	
	# assert_equal

	def test_sumar_retorna_suma_entre_ambos_numeros
		calculator = Calculator.new(10,10)

		assert_equal 20, calculator.sumar(),"La suma no dio el resultado esperado"
	end

	def test_dividir_retorna_division_entre_ambos_numeros
		calculator = Calculator.new(5,2)
	
		assert_equal 2.5, calculator.dividir(),"La division no dio el resultado esperado"
	end

	# end assert_equal

	# assert_instance_of

	def test_dividir_retorna_flotante
		calculator = Calculator.new(5,2)

		assert_instance_of Float, calculator.dividir()
	end

	# end assert_instance_of

	# assert_raises

	def test_dividir_devuelve_error_si_cero
		assert_raises ZeroDivisionError do
			calculator = Calculator.new(10,0)
			calculator.dividir()
		end		
	end

	# end assert_raises

	# assert_repond_to

	def test_calculator_deberia_responder_a_multiplicar
		calculator = Calculator.new(5,2)

		assert_respond_to calculator, "multiplicar"
	end

	# end assert_respond_to

	# skip

	def test_multiplicar_deberia_funcionar
		skip "No se ha implementado"
	end

	# end skip
end
