# code here!

require "pry"
class School 

    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student(name, grade)

        if roster[grade]
            roster[grade] << name
        else
            roster[grade]=[]
            roster[grade] << name
        end

    end

    def grade (ask_grade)
        roster[ask_grade]
    end

    def sort
        roster.each do |grade, name|
            roster[grade].sort!
        end

# binding.pry
        # puts "DF"
        
    end

end #end School class

# school = School.new("Bayside High School")
# puts "DFJ"