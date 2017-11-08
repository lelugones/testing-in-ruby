require "minitest/autorun";
require "./bank_account";

class TestBankAccount < Minitest::Test

	def setup
		@account = BankAccount.new(200)
	end

	def test_bank_account_is_not_nil
		# Test que podemos crear cuentas de banco no nulas
		refute_nil @account
	end

	def test_initial_value_for_bank_account
		# Test que podemos asignar un valor inicial al crear una cuenta de banco
		assert_equal @account.amount, 200
	end

	def test_account_has_a_withdraw_method
		# Test debemos poder retirar de una cuenta de banco
		assert @account.respond_to?(:withdraw)
	end

	def test_withdraw_removes_money_from_account
		# Test al retirar el monto indicado debe restarse del monto de la cuenta
		@account.withdraw(100)
		assert_equal 100, @account.amount 
	end

	def test_cant_withdraw_more_money_that_it_has
		# Test retirar mas dinero del que tenemos en nuestra cuenta
		assert_raises ArgumentError do 
			@account.withdraw(300)
		end
	end

	def test_account_has_a_deposit_method
		# Test debemos poder depositar de una cuenta de banco
		assert @account.respond_to?(:deposit)
	end

	def test_deposit_adds_money_into_account
		# Test al depositar el monto indicado debe sumarse del monto de la cuenta
		@account.deposit(200)
		assert_equal 400, @account.amount 
	end

	def test_can_assign_a_name_to_bank_account
		# Test debemos poder asignar un nombre para una cuenta
		@account.name = "Mi cuenta de banco"
		assert @account.name, "Mi cuenta de banco"
	end

	def test_name_should_contain_at_least_two_words
		# Test nombre debe tener al menos dos palabras, si no debe mandar error
		assert_raises ArgumentError do 
			@account.name("asdf www")
		end
	end
end