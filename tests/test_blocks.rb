require "./lib/BuildingBlocks.rb"
require "test/unit"

class TestBuildingBlocks < Test::Unit::TestCase

    def test_cipher
        assert_equal("Bmfy f xywnsl!", caesar_cipher("What a string!", 5))
    end
    
    def test_stock_picker
        assert_equal([1, 4], stock_picker([17,3,6,9,15,8,6,1,10]))
    end
    
    def test_substrings
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        
        assert_equal({"below"=>1, "low"=>1}, substrings("below", dictionary))
        assert_equal({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1},
            substrings("Howdy partner, sit down! How's it going?", dictionary))
    end

end