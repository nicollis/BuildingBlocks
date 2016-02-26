def substrings(test_string, dictionary)
    results = {}
    words = test_string.split(' ')
    #test each word in test_string against each word in dictionary
    words.each do |test_word|
        dictionary.each do |dictionary_word|
            #downcase as test is not case sensitive
            test_word = test_word.downcase
            # If the dictionary word is found in a scan of the test word
            # Add the word to the hash and set its value to 1
            # If the word is already in the hash incrament its value by 1
            if test_word.scan(dictionary_word).length != 0
                results[dictionary_word] = (results.has_key? dictionary_word) ? results[dictionary_word] + 1 : 1
            end
        end #end dictionary loop
    end #end words loop
    results
end