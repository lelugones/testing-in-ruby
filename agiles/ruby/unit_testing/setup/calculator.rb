class Calculator
	
	attr_accessor :y

	def initialize(x,y)
		@x = x.to_f
		@y = y.to_f
	end

	def sumar
		@x + @y
	end

	def dividir
		raise ZeroDivisionError if @y == 0
		@x / @y
	end

	def multiplicar
		@x * @y
	end
end