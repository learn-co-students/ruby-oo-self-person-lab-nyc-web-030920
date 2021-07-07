# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene  

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def get_paid(salary_amount)
        @bank_account = @bank_account += salary_amount
        "all about the benjamins"
    end
    def happiness 
        @happiness.clamp(0, 10)
    end
    def hygiene
        @hygiene.clamp(0, 10)
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        [friend, self].each {|p| p.happiness +=3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        case topic
        when "politics"
            [self, person].each {|p| p.happiness -=2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, person].each {|p| p.happiness +=1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

