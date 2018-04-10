def multiples()
  i = 0
  sum=0
  while i < 1000 do
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
    i += 1
  end
  sum
end

puts "Somme des multiples de 3 et 5 inferieurs a 1000 : " +  multiples().to_s
