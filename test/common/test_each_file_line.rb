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

  def test_each_file_count
    counter = 0
    eachFile = Common::EachFileLine.new(TEST_REAL_FILENAME)
    eachFile.each do |line|
      counter+=1
    end
    assert(counter==4, "Counter is '#{counter}'")
  end

  def test_each_file_lines
    counter = 0
    lines = []
    eachFile = Common::EachFileLine.new(TEST_REAL_FILENAME)
    eachFile.each do |line|
      lines[counter] = line
      counter+=1
    end
    assert(lines.size == 4, "Number of lines is '#{lines.size}'")

    # We expect lines to have CR/LF characters removed as that is just
    # confusing for any code that is going to parse the line
    assert(lines[0] == "Line 1", "Line 0 is '#{lines[0]}'")
    assert(lines[3] == "Line 4", "Line 3 is '#{lines[3]}'")
  end

end


