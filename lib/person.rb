require "pry"

class Person
  attr_reader :name, :hygiene
  attr_accessor :bank_account, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(bank_account)
    @bank_account = bank_account
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  # instance.happiness = 11
  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7 && @happiness <= 10
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4 #self in an instance refers to that instance and not the class. so this self would refer to Tim since we created him as an instance.
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person_instance)
    self.happiness = @happiness + 3
    person_instance.happiness += 3
    #binding.pry

    return "Hi #{person_instance.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(convo_person, topic)
    if topic == "politics"
      self.happiness -= 2
      convo_person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      convo_person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end

Tim = Person.new("Tim")
