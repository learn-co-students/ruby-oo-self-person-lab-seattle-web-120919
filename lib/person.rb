require "pry"

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

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
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  #interpolat the convorsation possibly by using self in ordert o disply both sides of the conversation
  def call_friend(callee)
    callee.happiness += 3
    self.happiness += 3
    "Hi #{callee.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(name, topic)
    if topic == "politics"
      name.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      name.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
