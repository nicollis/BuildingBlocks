require "./lib/BuildingBlocks.rb"
require "test/unit"

class TestCaesarCipher < Test::Unit::TestCase

    def test_cipher
        assert_equal("Bmfy f xywnsl!", caesar_cipher("What a string!", 5))
    end

end