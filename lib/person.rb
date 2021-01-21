# your code goes here
require 'pry'
class Person 
  
  attr_reader :name
  attr_accessor :bank_account, :happiness ,:hygiene

  
  def initialize (name, balance=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = balance
    @happiness = happiness
    @hygiene = hygiene
  end 
  
  # What is the different between this method :
  # def happines=(levels)
  #   if @happiness > 10 
  #     @happiness = 10 
  #     elsif @happines < 0 
  #     @happiness = 0 
  #   else @happiness = levels
  #   end
  # end
  # and this solution method? :
  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end 
  
  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end 
 
 def happy?
   happiness>7
  end 
 def clean? 
   hygiene>7 
  end
   def get_paid(salary)
    self.bank_account += salary
    self.happiness += 1
    "all about the benjamins"
  end
  def take_bath 
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out 
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    [friend, self].each do |person|
      person.happiness+= 3
    end
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  # def start_conversation(friend, topic)
  #   if topic == "politics"
  #     [friend, self].each do |person| 
  #       person.happiness -= 2
  #     end
  #     return "blah blah partisan blah lobbyist"
  #       elsif topic == weather
  #       [friend, self].each do |person|
  #         person.happiness=happiness
  #     end
  #     return "blah blah sun blah rain"
  #   end
  # end
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