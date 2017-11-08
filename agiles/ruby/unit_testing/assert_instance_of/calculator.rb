class Calculator
	
	def initialize(x,y)
		@x = x.to_f
		@y = y.to_f
	end

	def sumar
		@x + @y
	end

	def dividir
		@x / @y
	end
end
