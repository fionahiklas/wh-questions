
module Q1

  class ReverseWords

    def reverse(input_line)
      word_array = input_line.split(' ')
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
