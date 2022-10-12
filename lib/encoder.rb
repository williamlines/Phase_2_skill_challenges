def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
 # p "cipher equals #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  #p "ciphertext_chars equals #{ciphertext_chars}"
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #  p "cipher equals #{cipher}"
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  p "plaintext equals #{plaintext_chars.join}"
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
#encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")