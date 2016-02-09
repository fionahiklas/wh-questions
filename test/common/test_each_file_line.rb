require 'test/unit'
require 'common/each_file_line'

class TestEachFileLine < Test::Unit::TestCase

  TEST_DUMMY_FILENAME = 'TerryPratchett.txt'
  TEST_REAL_FILENAME = 'test/common/simple_file.txt'

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


  def test_each_file_not_found
    begin
      eachFile = Common::EachFileLine.new(TEST_DUMMY_FILENAME)
      eachFile.each do |line|
        assert(false, 'This should fail as the file should not exist')
      end

      assert(false, 'We should not reach this code')
    rescue Exception => exception
      assert(exception.class == Errno::ENOENT, "Got exception of type '#{exception.class}'")
    end
  end

  def test_each_file
    counter = 0
    eachFile = Common::EachFileLine.new(TEST_REAL_FILENAME)
    eachFile.each do |line|
      counter+=1
    end
    assert(counter==4, "Counter is '#{counter}'")
  end

end


