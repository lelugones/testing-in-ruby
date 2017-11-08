Dado(/^que he introducido "(.*?)" en la calculadora$/) do |entrada|
  @entrada = entrada
end

Cuando(/^la calculadora esta ejecutando$/) do
  @salida = eval(@entrada).to_s
end

Entonces(/^la salida deberia ser "(.*?)"$/) do |salida_esperada|
	@salida == salida_esperada
end
