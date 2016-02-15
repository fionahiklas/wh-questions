require 'rubygems'
require 'q3/month_of_sundays'

RSpec.describe Q3::MonthOfSundays, '#number_of_months_with_five_sundays' do
  before(:example) do
    @monthOfSundays = Q3::MonthOfSundays.new
  end

  context 'with just one month with 5 sundays' do
    it 'returns 1', :wip => true do
      result = @monthOfSundays.number_of_months_with_five_sundays()
      expect(result).to eq 1
    end
  end

  context 'with just one month with 4 sundays' do
    it 'returns 1', :wip => true do
      result = @monthOfSundays.number_of_months_with_five_sundays()
      expect(result).to eq 0
    end
  end

end