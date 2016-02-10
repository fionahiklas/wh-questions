
module Q1

  class ReverseWords

    def reverse(input_line)
      # split(' ') works with spaces and tabs, using regular expressions to
      # be more definitive about *exactly* what the line is being split on
      word_array = input_line.split(/[[:blank:]]+/)
      reversed_string = '';

      word_array.reverse_each do |word|
        if(reversed_string!='')
        then
          reversed_string += ' '
        end
        reversed_string += word
      end

      reversed_string
    end
  end

end # Q1
