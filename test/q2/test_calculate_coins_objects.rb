require 'test/unit'
require 'q2/calculate_coins'


class TestCalculateCoinsObjects < Test::Unit::TestCase

  def test_coin_and_multiplier_new
    result = Q2::CoinAndMultiplier.new
    assert(result!=nil, "Result was nil")
    assert(result.coin_index == 0, "Coin index was #{result.coin_index}")
    assert(result.multiplier == 0, "Multipler was #{result.multiplier}")
  end

  def test_coin_and_multiplier_new_with_values
    result = Q2::CoinAndMultiplier.new(1,2)
    assert(result!=nil, "Result was nil")
    assert(result.coin_index == 1, "Coin index was #{result.coin_index}")
    assert(result.multiplier == 2, "Multipler was #{result.multiplier}")
  end

  def test_combination_new
    result = Q2::Combination.new
    assert(result!=nil, "Result was nil")
    assert(result.combinations == 0, "Combinations #{result.combinations}")
  end

  def test_combination_add
    coin_and_multiplier = Q2::CoinAndMultiplier.new(3,5)
    result = Q2::Combination.new
    result.add(coin_and_multiplier)
    assert(result.combinations == 1, "Combinations #{result.combinations}")
  end

end


