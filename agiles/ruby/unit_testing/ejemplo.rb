def add_name_to_file
	name_to_add = 'Leopoldo'
	bandera = false
	File.open('nombres.rb', 'r') do |f|
		while line = f.gets
			if line.include? name_to_add
				bandera = true
			end			
		end
	end
	if !bandera
		File.open('nombres.rb', 'r') do |f|
			f.write(name_to_add)
		end
	end
end