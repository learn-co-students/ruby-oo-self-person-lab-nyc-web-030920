# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(i)
        @happiness = [i, 10].min
        @happiness = [@happiness, 0].max
    end
    def hygiene=(i)
        @hygiene = [i, 10].min
        @hygiene = [@hygiene, 0].max
    end

    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end
    def call_friend friend
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person,topic)
        modifier = 0
        str = ""
        if topic == "politics"
            modifier = -2
            str = "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            modifier = 1
            str =  "blah blah sun blah rain"
        else
            modifier = 0
            str = "blah blah blah blah blah"
        end
        self.happiness += modifier
        person.happiness += modifier
        return str
    end
end