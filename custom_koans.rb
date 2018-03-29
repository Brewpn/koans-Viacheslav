require File.expand_path(File.dirname(__FILE__) + '/edgecase')

class CustomKoans < EdgeCase::Koan


  def test_true_false
    
    assert_equal true, true
  end
  
  def test_sounds_like_a_hash
    grades = { "first_value" => 10, 2 => 6 }
    assert_equal true, grades.key(10).is_a?(String) 
  end

  def test_sounds_like_a_hash_number_two
    grades = { "first_value" => 10, 2 => 6 }
    assert_equal Integer, grades.key(6).class
  end

  def test_sounds_like_a_hash_number_two
    grades = { "first_value" => 10, 2 => 6 }
    assert_equal 10, grades["first_value"]
  end

  def test_sounds_like_a_hash_number_two
    some_string = "1,2,3"
    assert_equal [1, 2, 3], some_string.split(",").map(&:to_i)
  end

    class OwnClass 
      def initialize(titles, number)
        @titles = titles.split(", ")
        @number = number
      end

      attr_reader :titles
      attr_reader :number

      def take_some_titles
        return @titles
      end

      def update_titles(new_titles)
        @titles = new_titles.split(", ")
      end

      def check_for_equals
        if @titles.length = @number
          return true
        else 
          return false
      end

    end

    def test_sounds_like_a_hash_number_two
      own_class = OwnClass.new("some, title, can, be, simple", 5)
      assert_equal "can", own_class.titles[2]
    end

    def test_another_one_koan
      one = OwnClass.new("Op, Op, Op, op", 4)
      two = OwnClass.new("so, so", 1)

      assert_equal true, one.check_for_equals 
      assert_equal false, two.check_for_equals
    end
  
end