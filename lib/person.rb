require 'pry'

class Person

  attr_reader :name
  attr_accessor :hygiene, :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @bank_account
  end

  def happiness=(happiness)

    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end

  end

  def happiness
    @happiness
  end

  def happy?
    @happiness > 7 ? true : false 
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

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    # @hygiene += 4

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
     
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2

    if @hygiene < 0
      @hygiene = 0
    end
    '♪ another one bites the dust ♫'

  end

  def call_friend(friend)

    #for each instance of the friend and self object, increase happiness by 3
    [friend, self].each do |object|
      object.happiness += 3
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    
  end

  def start_conversation(person, topic)
   
    objects = [self, person]
    if topic == "politics"
      objects.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
      objects.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"

  end



end

# binding.pry 
0