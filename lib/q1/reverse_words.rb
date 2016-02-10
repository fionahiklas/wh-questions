
module Q1

  class ReverseWords

    def reverse(input_line)
      # split(' ') works with spaces and tabs, using regular expressions to
      # be more definitive about *exactly* what the line is being split on
      word_array = input_line.split(/[[:blank:]]+/)
      reversed_array = word_array.reverse
      reversed_array.join(' ')
    end
  end

end # Q1
