require 'pry'

class BloodOath

    attr_reader :cult, :person, :date
    attr_accessor

    @@all = []

    def initialize(cult, person)

        # raise "FATAL FREAKING ERROR, MY DUDE!!! #{person.name} is too young to join cult #{cult.name}!" if person.age < cult.minimum_age

        @cult = cult
        @person = person
        @date = Time.now.strftime("%Y-%m-%d")

        BloodOath.all << self

    end

    def self.all

        @@all

    end

    def self.find_by_cult_and_follower(cult, follower)

        self.all.select {|oath| oath.cult == cult}.select {|oath| oath.person == follower}[0]
        
    end

    def initiation_date

        @date
        
    end

    def self.first_oath

        BloodOath.all[0].person
        
    end

end