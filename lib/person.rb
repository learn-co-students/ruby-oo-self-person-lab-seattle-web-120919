require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness.clamp(0, 10)
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0, 10)
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    if @hygiene > 6
      @hygiene = 10
      #   binding.pry
    else
      #   @hygiene + 4
      hygiene = (@hygiene) + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  end
end
