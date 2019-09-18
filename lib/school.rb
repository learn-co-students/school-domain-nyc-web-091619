class School
    attr_accessor :roster
    attr_reader :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade] 
            roster[grade] = []
        end
        roster[grade] << name
    end

    def grade(number)
        roster[number]
    end

    def sort
        @roster.each do | grade, student |
            student.sort!
        end
    end
    
end

school = School.new("Bayside High School")