# Ruby program to implement XOR - Encryption

# The same function is used to encrypt and 
# decrypt 
def encrypt_decrypt(input_string)
	# Define XOR key 
	# Any character value will work 
	xor_key = "P"

	# calculate length of input string 
	l = input_string.length

	# perform XOR operation of key 
	# with every caracter in string
  0.upto(l - 1) do |i|
    if i == 0
      input_string = ("" + ((input_string[i]).ord ^ (xor_key).ord).chr + input_string[i+1..-1])
    else
      input_string = (input_string[0..i-1] + ((input_string[i]).ord ^ (xor_key).ord).chr + input_string[i+1..-1])
    end
  end
  input_string
end

# Driver Code 
sample_string = "TheCryptography"

# Encrypt the string 
puts("Encrypted String: " + encrypt_decrypt(sample_string))

# # Decrypt the string 
puts("Decrypted String: " + encrypt_decrypt(encrypt_decrypt(sample_string)))
