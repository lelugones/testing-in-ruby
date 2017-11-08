class BankAccount
	attr_accessor :amount
	
	def initialize (amount)
		@amount = amount
	end

	def withdraw (amount)
		# Recibe monto a retirar
		raise ArgumentError.new("Insufficient funds") if @amount < amount
		@amount -= amount
	end

end