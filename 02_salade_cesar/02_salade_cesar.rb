Alphabet = 26
def chiffre_de_cesar(string, shift = 1)
    alphabet   = Array('a'..'z')
    encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |c| encrypter.fetch(c, " ") }
  end

puts chiffre_de_cesar("salade").join
print chiffre_de_cesar("What a string!", 5).join
