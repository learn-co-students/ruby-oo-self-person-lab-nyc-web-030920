# your code goes here
# require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    @@all = []

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        Person.all << self

    end

    def self.all
        @@all
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end
    
    #why doesn't this work?
    # def hygiene=(hygiene)
    #     if (hygiene <= 10 || hygiene >= 0)
    #         @hygiene = hygiene
    #     elsif hygiene < 0
    #         @hygiene = 0
    #     elsif hygiene > 10
    #         @hygiene = 10
    #     end
    # end

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
        self.hygiene = @hygiene + 4
        
        self.hygiene

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3

        "♪ another one bites the dust ♫"
    end

    # def make_friend(friend_name, name)
    #     friend_name = Person.new(name)
    # end

    def call_friend(friend)
        
        self.happiness = self.happiness + 3

        friend.happiness = friend.happiness + 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)

        if topic == 'politics'
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

end


josh = Person.new("Josh")
felix = Person.new("Felix")
sarah = Person.new("Sarah")

# me.hygiene = 11

# binding.pry