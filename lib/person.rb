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
    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 
    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene> 10
        @hygiene = 0 if @hygiene < 0
    end 

    def happy?
        unless happiness >7
            false
        else 
            true 
        end        
    end 


    def clean?
        hygiene >7          
    end 

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        self.hygiene = 10 if self.hygiene > 10
    end 

    def work_out
        self.hygiene -= 3 
        self.hygiene = 0 if self.hygiene < 0
        self.happiness += 2 
        self.happiness = 10 if self.happiness >10
        "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        self.happiness = 10 if self.happiness >10
        person.happiness = 10 if self.happiness >10
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end 

        if topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        end 

        if topic != ("wether"&&"politics")
            return "blah blah blah blah blah"
        end 
    
    end 

end 