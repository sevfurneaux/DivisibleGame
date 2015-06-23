require 'minitest/autorun'
require_relative 'divisible_game'
require_relative 'fizzbuzz'

describe DivisibleGame do
  before do
    @divisible_game = DivisibleGame
  end

  describe FizzBuzz do
    before do
      divisibles = FizzBuzz::DIVISIBLES
      @fizzbuzz = @divisible_game.new(divisibles)
    end

    it "returns Fizz when divisible by 3" do
      @fizzbuzz.say(3).must_equal "Fizz"
    end

    it "returns Buzz when divisible by 5" do
      @fizzbuzz.say(5).must_equal "Buzz"
    end

    it "returns Fizz when divisible by 3 and 5" do
      @fizzbuzz.say(15).must_equal "FizzBuzz"
    end
  end
end
