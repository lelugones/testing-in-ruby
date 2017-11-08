given /^que mandado a mi hijo a que compre (\d+) pepinos$/ do |com|
    @comida=com
end
but /^el se ha comido (\d+) pepinos de camino a casa$/ do |cantidad|
    @comida = @comida.to_i - cantidad.to_i
end

when /^llega a casa solo le quedan (\d+) pepinos$/ do |esperados|
    assert_equal(esperados.to_i,@comida.to_i,"This was expected to be true")
end	
