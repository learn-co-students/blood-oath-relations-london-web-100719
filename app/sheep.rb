require 'pry'

class Follower

    attr_reader :name
    attr_accessor

    @@all = []

    def initialize(name)

        @name = name

        Follower.all << self

    end

    def self.all

        @@all

    end

end