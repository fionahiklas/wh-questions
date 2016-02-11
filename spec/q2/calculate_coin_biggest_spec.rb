require 'rubygems'
require 'q2/calculate_coins'

RSpec.describe Q2::CalculateCoins, '#biggest' do
  before(:example) do
    @calculate = Q2::CalculateCoins.new
  end

  context 'with a value of 49p' do
    it 'returns 20p and quotient of 2 and remainder of 9', :wip => true do
      (coin, quotient, remainder) = @calculate.biggest(49)
      expect(coin).to eq 20
      expect(quotient).to eq 2
      expect(remainder).to eq 9
    end
  end

  context 'with a value of 20p' do
    it 'returns 20p and quotient of 1 and remainder of 0', :wip => true do
      result = @calculate.combinations(1)
      expect(result.class).to eq Array
      expect(result[0]).to eq '1'
    end
  end

end