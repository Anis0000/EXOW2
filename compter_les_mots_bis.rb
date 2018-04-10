def jean_michel_data(string, dictionary)
	frequencies = Hash.new
	dictionary.each do |substring| 
		frequencies[substring] = string.scan(/(?=#{substring})/).count
		frequencies.delete(substring) if frequencies[substring] == 0
	end
	frequencies
end

def shakespeare(dictionary)
	file = File.open("shakespeare.txt", "r")
	jean_michel_data(file.read, dictionary)
end

dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
puts shakespeare(dictionary)
