# your code goes here
class Person

    #properties of a person:
    #name, bank_account, happiness, hygiene
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account
    
    def initialize(new_name)
        @name = new_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happy?
        return @happiness > 7
    end

    def clean?
        return @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def happiness=(index) 
        @happiness = index
        @happiness = 10 if @happiness > 10 
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(index)
        @hygiene = index
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0 
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

    #accepts 1 argument, both happeness + 3, return a message
    def call_friend(other_person)
        self.happiness += 3 
        other_person.happiness += 3 
        return "Hi #{other_person.name}! It's #{@name}. How are you?"
    end

     #start_conversation 
     #2 arguments: person, topic
     #different topics trigger different massages
     def start_conversation(other_person, topic)
        if topic == "politics"
            other_person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            other_person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end
