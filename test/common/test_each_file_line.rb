require 'test/unit'
require 'common/each_file_line'

class TestEachFileLine < Test::Unit::TestCase

  TEST_DUMMY_FILENAME = 'TerryPratchett.txt'

  def test_missing_filename
    begin
      Common::EachFileLine.new()
      assert(false, 'Exception should be raised here')
    rescue Exception => exception
      assert(exception.class==ArgumentError, "The exception class was #{exception.class}")
    end
  end


  def test_provided_filename
    result = Common::EachFileLine.new(TEST_DUMMY_FILENAME)
    assert(result!=nil, 'The result was nil')
    assert(result.class == Common::EachFileLine, 'Correct class')
  end

end


