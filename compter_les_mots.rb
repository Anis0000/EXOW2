def jean_michel_data(string, dictionary)
	frequencies = Hash.new
	dictionary.each do |substring| 
		frequencies[substring] = string.scan(/(?=#{substring})/).count
		frequencies.delete(substring) if frequencies[substring] == 0
	end
	frequencies
end

puts jean_michel_data("below", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
