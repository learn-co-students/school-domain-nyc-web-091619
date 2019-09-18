#require 'pry'

class School

    attr_reader :name, :grade, :school, :roster
    
    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        @roster[grade] = [] unless @roster[grade]
        @roster[grade] << name
    end

    def grade(grade)
       @roster[grade]
    end

    def sort
        @roster.each_value { |v| v.sort! }
    end

end



