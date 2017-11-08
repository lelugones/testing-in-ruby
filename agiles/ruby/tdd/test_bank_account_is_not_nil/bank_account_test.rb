require "minitest/autorun";
require "./bank_account";

class TestBankAccount < Minitest::Test

	def setup
		@account = BankAccount.new
	end

	def test_bank_account_is_not_nil
	#   Test que podemos crear cuentas de banco no nulas
		refute_nil @account
	end
end