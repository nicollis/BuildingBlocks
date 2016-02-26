def stock_picker(price_array)
    low = 0
    high = 0
    split = 0
    #Loop though the array twice to test all numbers against each other
    price_array.each_with_index do |low_price, low_index|
        price_array.each_with_index do |high_price, high_index|
            # if the split from the current high and low price is better than last found split
            # and the low day(index) is before high day(index) 
            # set them to the record low, high, and split
            if high_price - low_price > split && low_index < high_index
                low = low_index
                high = high_index
                split = high_price - low_price
            end
        
        end # end high price loop
    end # end low price loop
    [low, high]
end