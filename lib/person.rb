# your code goes here
class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num 
        @happiness = 10 if happiness > 10
        @happiness = 0 if happiness < 0
    end

    def hygiene=(num)
        @hygiene = num 
        @hygiene = 10 if hygiene > 10
        @hygiene = 0 if hygiene < 0
    end

    def happy?
        if @happiness > 7
            true
        else
            false
       end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # def start_conversation(person, topic)
    #     if topic == "politics" 
    #         self.happiness -= 2
    #         "blah blah partisan blah lobbyist"
    #     end
    # end

    def start_conversation(person, topic)
        people = [self, person]
        if topic == "politics"
          people.each do |sad| 
            sad.happiness -= 2
          end
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          people.each do |better|
            better.happiness += 1
        end
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        final = "blah blah #{first} blah #{second}"
      end
end