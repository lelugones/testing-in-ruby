class BankAccount
	attr_accessor :amount, :name
	
	def initialize (amount)
		@amount = amount
	end

	def withdraw (amount)
		# Recibe monto a retirar
		raise ArgumentError.new("Insufficient funds") if @amount < amount
		@amount -= amount
	end

	def deposit (amount)
		# Recibe monto a depositar
		@amount += amount
	end

	def name=(name)
		raise ArgumentError.new("Name should contain at least two words") unless name =~ /^\w+\s+\w+.*$/
		@name = name
	end

	def name
		@name
	end
end