class BankAccount
	attr_accessor :amount
	
	def initialize (amount)
		@amount = amount
	end

	def withdraw (amount)
		# Recibe monto a retirar
		@amount -= amount
	end
end