require 'pry'

class BloodOath

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        BloodOath.all << self

    end

    def self.all

        @@all

    end

end