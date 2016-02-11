require 'rubygems'
require 'q2/calculate_coins'

RSpec.describe Q2::CalculateCoins, '#combinations' do
  before(:example) do
    @calculate = Q2::CalculateCoins.new
  end

  context 'with a value of 1p' do
    it 'returns one combination of "1"', :wip => true do
      result = @calculate.combinations(1)
      expect(result.class).to eq Array
      expect(result[0]).to eq '1'
    end
  end

  context 'with a value of 3p' do
    it 'returns two combinations', :wip => true do
      result = @calculate.combinations(1)
      expect(result.class).to eq Array
      expect(result[0]).to eq '1'
    end
  end

end