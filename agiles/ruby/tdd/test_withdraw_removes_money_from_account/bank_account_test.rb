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
		# Test al retirar el monto indicado debe restase del monto de la cuenta
		@account.withdraw(100)
		assert_equal 100, @account.amount 
	end
end