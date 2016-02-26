require "./lib/BuildingBlocks.rb"
require "test/unit"

class TestBuildingBlocks < Test::Unit::TestCase

    def test_cipher
        assert_equal("Bmfy f xywnsl!", caesar_cipher("What a string!", 5))
    end
    
    def test_stock_picker
        assert_equal([1, 4], stock_picker([17,3,6,9,15,8,6,1,10]))
    end

end