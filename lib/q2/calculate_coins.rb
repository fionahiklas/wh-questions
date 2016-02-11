module Q2

  ##
  #
  # A result can be made up of several coins of the same type, for example
  # 40p would, with minimal items be composed of 2 x 20.  This class holds the
  # index for the coin denomination and the number of these.
  #
  class CoinAndMultiplier
    attr_reader :coin_index, :multiplier

    def initialize(coin_index=0, multiplier=0)
      @coin_index = coin_index
      @multiplier = multiplier
    end
  end

  # A given coin can be composed of a combination, for example, the 20p
  # pieces above could be replaced with 2 x 10p and each of those could be
  # converted to 2 x 5p, and each of those by 2 x 2p + 1p, and 2p = 1p + 1p.
  #
  # These combinations are lists of CoinAndMultiplier, e.g
  #   2p x 2
  #   1p x 1
  #
  class Combination
    def initialize
      @combinations = []
    end

    def combinations
      @combinations.size
    end

    def add(coin_and_multiplier)
      @combinations.push(coin_and_multiplier)
    end
  end


  ##
  #
  # Calculate the combinations and permutations of coins
  # for a given monetary value.
  #
  # Combinations are the actual arrangements of coins that will
  # match the monetary value.
  #
  # Permutations are the number of these combinations that are
  # possible with the available coins.
  #
  class CalculateCoins

    # Coin denominations that we can use
    COINS = [ 1, 2, 5, 10, 20, 50, 100, 200 ]


    protected

    ##
    #
    # Find the index for the biggest coin in the list of denominations
    #
    # This is useful as it sets the maximum coin value that we can use.
    # It also means that we know where to start splitting down any remainder
    # and also where we should be searching for subsequent combinations of
    # coins.
    #
    # For example, if we have a value of 89p the biggest coin is going to be a
    # 50p and the remainder is 39p.  That remainder will be broken down from
    # 20p onwards.  Equally when we come to start splitting 50p up to get more
    # combinations we're going to start from 20p
    #
    def biggest_index(money_value)
      result_index = COINS.size
      COINS.reverse_each do |coin_value|
        result_index-=1
        break if (money_value/coin_value > 0)
      end

      result_index
    end

  end # CalculateCoins

end # Q2