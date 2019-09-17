# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end
    
    def grade(int)
        if @roster[int]
            return @roster[int]
        end
    end

    def sort
        @roster.each do |grade, names|
            names.sort!
            # binding.pry
        end
    end
end