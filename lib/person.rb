#your code goes here

class Person

    attr_reader :name, :happiness, :hygiene
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
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

      def start_conversation(friend, topic)
        case topic
        when "politics"
          self.happiness -= 2
          friend.happiness -= 2
          "blah blah partisan blah lobbyist"
        when "weather"
          self.happiness += 1
          friend.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
end





# class Person
# attr_writer :name
# attr_accessor :bank_account


#         def initialize(name,happiness,hygiene,bank_account,)
#             @name = name
#             @bank_account = $25
#          end

#         def name
#             puts @name
#         end

#         def bank_account
#             @bank_account
#         end



# end
# person_one = Person.new('govi')
# person_two = Person.new('Stella')
# person_two.bank_account







