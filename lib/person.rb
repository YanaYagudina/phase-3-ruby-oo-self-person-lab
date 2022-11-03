class Person
   attr_reader :name, :hygiene, :happiness
   attr_accessor :bank_account
    
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num > 10
                         10
                    elsif num < 0
                         0
                    else 
                        num
                    end
    end
    def hygiene=(num)
   # with clamp
         @hygiene = num.clamp(0, 10)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid (amount)
        self.bank_account +=amount
        "all about the benjamins"
    end
end
