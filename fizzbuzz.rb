module FizzBuzz
  class Fizz
    def self.value
      "Fizz"
    end
  end

  class Buzz
    def self.value
      "Buzz"
    end
  end

  class FizzBuzz
    def self.value
      "FizzBuzz"
    end
  end

  DIVISIBLES = { 15 => FizzBuzz, 3 => Fizz, 5 => Buzz }
end
