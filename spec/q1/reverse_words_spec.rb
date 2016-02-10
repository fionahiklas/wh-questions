require 'rubygems'
require 'q1/reverse_words'

RSpec.describe Q1::ReverseWords, '#reverse' do
  before(:example) do
    @reverser = Q1::ReverseWords.new
  end

  context 'with a single word' do
    it 'returns that word' do
      result = @reverser.reverse('One')
      expect(result).to eq 'One'
    end
  end

end