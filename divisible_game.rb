class DivisibleGame
  attr_accessor :divisibles

  def initialize(divisibles)
    @divisibles = divisibles
  end

  def say(number)
    divisible_for(number)
  end

  private

  def divisible_for(number)
    array = []

    divisibles.each do |key, data|
      divisible(number, key) ? array << divisibles[key].value : nil
    end

    array.first || number
  end

  def divisible(number, divisible)
    number % divisible == 0
  end
end
