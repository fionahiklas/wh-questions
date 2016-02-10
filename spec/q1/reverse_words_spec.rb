require 'rubygems'
require 'q1/reverse_words'

RSpec.describe Q1::ReverseWords, '#reverse' do
  context 'with a single word' do
    it 'returns that word' do
      reverser = Q1::ReverseWords.new
      result = reverser.reverse('One')
      expect(result).to eq 'One'
    end
  end

end