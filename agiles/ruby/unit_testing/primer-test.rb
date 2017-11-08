require 'minitest/autorun'

def nombre
	"Leopoldo"
end

class TestNombre < MiniTest::Test
	def test_nombre_returns_uriel
		# Nombre retorne 'Uriel' 
		assert_equal "Leopoldo", nombre
	end		
end