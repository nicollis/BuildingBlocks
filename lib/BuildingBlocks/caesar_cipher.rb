def caesar_cipher(encrypt, mod)
    #Split string into char array
    encrypt_array = encrypt.split('')
    #Loop though array with index to modify current itteration
    encrypt_array.each_with_index do |v, i|
        #Convert letter into numerical value
        numerical_letter = encrypt_array[i].ord
        #If char was upper case and will pass Z with modifier loop to A and continue
        if numerical_letter + mod > 90 && numerical_letter <= 90
            numerical_letter = ( numerical_letter - 90 ) + ( 65 + mod - 1 )
        #If char was lower case and will pass Z with modifier loop to A and continue
        elsif numerical_letter + mod > 122 && numerical_letter >= 97
            numerical_letter = ( numerical_letter - 122 ) + ( 97 + mod - 1 )
        #If char wont pass Z but is not a punctuation mark
        elsif numerical_letter > 65
            numerical_letter += mod
        end
        #put numeric value into char array replacing old char value
        encrypt_array[i] = numerical_letter
    end
    #convert int array into string by using Array#pack
    encrypt_array.pack("c*")
end