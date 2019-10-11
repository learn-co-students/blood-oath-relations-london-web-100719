require 'pry'

class Cult

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        Cult.all << self

    end

    def self.all

        @@all

    end

end