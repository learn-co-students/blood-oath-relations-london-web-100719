require 'pry'

class BloodOath

    attr_reader :cult, :person
    attr_accessor

    @@all = []

    def initialize(cult, person)

        @cult = cult
        @person = person

        BloodOath.all << self

    end

    def self.all

        @@all

    end

end