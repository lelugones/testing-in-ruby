class BankAccount
	attr_accessor :amount , :name
	
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

	#def name=(name)
	#	@name = name
	#end

	#def name
	#	@name
	#end
end