# déso pour le code dégueu
def trader_du_dimanche(array)
  max_diff = array[1] - array[0]
  best_buy = 0
  best_sell = 1
  minimum = array[0]
  i = 1
  while i < array.length do
	  if array[i] - minimum > max_diff
		max_diff = array[i] - minimum 
		best_sell = i
	  end
	  if array[i] < minimum
		minimum = array[i]
		best_buy = i
	  end
	  i += 1
  end
  [best_buy, best_sell]
end

def generate_hash_of_prices(array_of_hashes)
  hash_to_return = Hash.new
  array_of_hashes.each do |hash|
	hash.each do |key, value|
		hash_to_return[key] = Array.new
	end
  end

  array_of_hashes.each do |hash|
	hash.each do |key, value|
		hash_to_return[key].push(value)
	end
  end
  hash_to_return
end

def trader_du_lundi(array_of_hashes)
	best_prices = Hash.new
	generate_hash_of_prices(array_of_hashes).each do |key, array|
		best_prices[key] = trader_du_dimanche(array)
	end
	best_prices
end

puts trader_du_dimanche([8,17, 9, 1])

puts trader_du_lundi([
	{ :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :CRM => 6, :JNJ => 10 },
	{ :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :CRM => 10, :JNJ => 17 },
        { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :CRM => 5, :JNJ => 14 },
	{ :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :CRM => 18, :JNJ => 3 },
	{ :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :CRM => 7, :JNJ => 9 },
	{ :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :CRM => 8, :JNJ => 15 },
	{ :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :CRM => 9, :JNJ => 17 }
		     ])

