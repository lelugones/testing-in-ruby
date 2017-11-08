given /^he introducido los numeros (\d+)$/ do |arg1|
  @suma = arg1.to_i                                
end
when /^y (\d+)$/ do |arg2|
  @suma = @suma + arg2.to_i	
end
then /^sumo$/ do |arg3|    
  assert_equal(arg3.to_i,@suma.to_i,"Se esperaba otro resultado")                                 
end            