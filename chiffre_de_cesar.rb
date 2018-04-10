def caesar_cipher(string, shift = 1)
  string.downcase!
  alphabet   = Array('a'..'z')
  encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

puts caesar_cipher("What a string", 5)
