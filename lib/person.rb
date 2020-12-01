require 'pry'

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
        #puts "Happy!"
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0

    end


    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        
        "all about the benjamins"


    end

    def take_bath
        #binding.pry
        self.hygiene += 4
        
        

        
        "♪ Rub-a-dub just relaxing in the tub ♫"
        

    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        @happiness = 10 if happiness > 10

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    
        
    end
        
    def work_out
        self.hygiene -= 3
        self.happiness += 2

        "♪ another one bites the dust ♫"

    end

    def start_conversation(partner, topic)
        if topic == "politics"
            self.happiness -= 2
            partner.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            partner.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end


    end


end