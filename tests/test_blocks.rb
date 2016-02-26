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

    def test_bubble_sort
        assert_equal([0,2,2,3,4,78], bubble_sort([4,3,78,2,0,2]))

        assert_equal(
            ["hi", "hey", "hello"],
            bubble_sort_by(["hi","hello","hey"]) do |left,right|
               left.length - right.length
            end
        )
    end

    def test_my_enumerable

      [1, 2, 3, 4, 5].my_each {|y| puts y}

      [1, 2, 3, 4, 5].my_each_with_index {|y, i| puts y, i}

      assert_equal([2, 4], [1,2,3,4,5].my_select{ |num| num.even? })

      assert_equal(true, %w[ant bear cat].my_all? { |word| word.length >= 3 })
      assert_equal(false, %w[ant bear cat].my_all? { |word| word.length >= 4 })

      assert_equal(true, %w[ant bear cat].my_any? { |word| word.length >= 3 })
      assert_equal(true, %w[ant bear cat].my_any? { |word| word.length >= 4 })

      assert_equal(true, %w{ant bear cat}.my_none? { |word| word.length == 5 })
      assert_equal(false, %w{ant bear cat}.my_none? { |word| word.length >= 4 })

      assert_equal(4, [1,2,3,4].my_count)

      assert_equal([1, 4, 9, 16], (1..4).my_map { |i| i*i })

    end

end
