def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #p "cipher equals #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  #p "ciphertext_chars equals #{ciphertext_chars}"
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #p "cipher equals #{cipher}"
  plaintext_chars = ciphertext.chars.map do |char|
    #p 65 - char.ord
    cipher[char.ord - 65]
  end
  p "plaintext equals #{plaintext_chars.join}"
  return plaintext_chars.join
end

=begin
p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"
=end
