require 'rubygems'
require 'q2/calculate_coins'

RSpec.describe Q2::CalculateCoins, '#permutations' do
  before(:example) do
    @calculate = Q2::CalculateCoins.new
  end

  context 'with a value of 1p' do
    it 'returns 1', :wip => true do
      result = @calculate.permutations(1)
      expect(result).to eq 1
    end
  end

  context 'with a value of 3p' do
    it 'returns 1', :wip => true do
      result = @calculate.permutations(3)
      expect(result).to eq 2
    end
  end

end